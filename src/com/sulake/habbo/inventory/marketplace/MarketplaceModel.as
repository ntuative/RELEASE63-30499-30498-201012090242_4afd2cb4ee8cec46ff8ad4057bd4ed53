package com.sulake.habbo.inventory.marketplace
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.BuyMarketplaceTokensMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.GetMarketplaceCanMakeOfferComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.GetMarketplaceConfigurationMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.GetMarketplaceItemStatsComposer;
   import com.sulake.habbo.communication.messages.outgoing.marketplace.MakeOfferMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.inventory.HabboInventory;
   import com.sulake.habbo.inventory.IInventoryModel;
   import com.sulake.habbo.inventory.items.FloorItem;
   import com.sulake.habbo.inventory.items.IItem;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.window.IHabboWindowManager;
   
   public class MarketplaceModel implements IInventoryModel
   {
       
      
      private var _controller:HabboInventory;
      
      private var _assets:IAssetLibrary;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _roomEngine:IRoomEngine;
      
      private var _communication:IHabboCommunicationManager;
      
      private var _disposed:Boolean = false;
      
      private var var_197:IItem;
      
      private var var_1308:Boolean;
      
      private var var_2113:int;
      
      private var var_1744:int;
      
      private var var_1745:int;
      
      private var var_2114:int;
      
      private var var_2115:int;
      
      private var var_2116:int;
      
      private var var_2117:int;
      
      private var var_2165:int;
      
      private var var_2166:int;
      
      private var _view:MarketplaceView;
      
      private var var_1346:Boolean = false;
      
      public function MarketplaceModel(param1:HabboInventory, param2:IHabboWindowManager, param3:IHabboCommunicationManager, param4:IAssetLibrary, param5:IRoomEngine, param6:IHabboLocalizationManager, param7:IHabboConfigurationManager)
      {
         super();
         this._controller = param1;
         this._communication = param3;
         this._windowManager = param2;
         this._assets = param4;
         this._roomEngine = param5;
         this._view = new MarketplaceView(this,this._windowManager,this._assets,param5,param6,param7);
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         this.var_1308 = param1;
      }
      
      public function set commission(param1:int) : void
      {
         this.var_2113 = param1;
      }
      
      public function set tokenBatchPrice(param1:int) : void
      {
         this.var_1744 = param1;
      }
      
      public function set tokenBatchSize(param1:int) : void
      {
         this.var_1745 = param1;
      }
      
      public function set offerMinPrice(param1:int) : void
      {
         this.var_2114 = param1;
      }
      
      public function set offerMaxPrice(param1:int) : void
      {
         this.var_2115 = param1;
      }
      
      public function set expirationHours(param1:int) : void
      {
         this.var_2116 = param1;
      }
      
      public function set averagePricePeriod(param1:int) : void
      {
         this.var_2117 = param1;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1308;
      }
      
      public function get commission() : int
      {
         return this.var_2113;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1744;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1745;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2114;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2115;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2116;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         this._controller = null;
         this._communication = null;
         this._windowManager = null;
         this._assets = null;
         this._roomEngine = null;
      }
      
      public function releaseItem() : void
      {
         if(this._controller != null && this._controller.furniModel != null && this.var_197 != null)
         {
            this._controller.furniModel.removeLockFrom(this.var_197.id);
            this.var_197 = null;
         }
      }
      
      public function startOfferMaking(param1:IItem) : void
      {
         if(this.var_197 != null || param1 == null)
         {
            return;
         }
         if(this._controller == null)
         {
            return;
         }
         this.var_197 = param1;
         if(this._controller.furniModel != null)
         {
            this._controller.furniModel.addLockTo(param1.id);
         }
         var _loc2_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.send(new GetMarketplaceCanMakeOfferComposer());
      }
      
      public function buyMarketplaceTokens() : void
      {
         var _loc1_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.send(new BuyMarketplaceTokensMessageComposer());
         this.var_1346 = true;
      }
      
      public function makeOffer(param1:int) : void
      {
         if(this.var_197 == null)
         {
            return;
         }
         var _loc2_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:int = this.var_197 is FloorItem ? 1 : 2;
         _loc2_.send(new MakeOfferMessageComposer(param1,_loc3_,this.var_197.ref));
         this.releaseItem();
      }
      
      public function getItemStats() : void
      {
         if(this.var_197 == null)
         {
            return;
         }
         var _loc1_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc1_ == null)
         {
            return;
         }
         var _loc2_:int = this.var_197 is FloorItem ? 1 : 2;
         this.var_2165 = _loc2_;
         this.var_2166 = this.var_197.type;
         _loc1_.send(new GetMarketplaceItemStatsComposer(_loc2_,this.var_197.type));
      }
      
      public function proceedOfferMaking(param1:int, param2:int) : void
      {
         this.var_1346 = false;
         switch(param1)
         {
            case 1:
               this._view.showMakeOffer(this.var_197);
               break;
            case 2:
               this._view.showAlert("${inventory.marketplace.no_trading_privilege.title}","${inventory.marketplace.no_trading_privilege.info}");
               break;
            case 3:
               this._view.showAlert("${inventory.marketplace.no_trading_pass.title}","${inventory.marketplace.no_trading_pass.info}");
               break;
            case 4:
               this._view.showBuyTokens(this.var_1744,this.var_1745);
         }
      }
      
      public function endOfferMaking(param1:int) : void
      {
         if(!this._view)
         {
            return;
         }
         this._view.showResult(param1);
      }
      
      public function setAveragePrice(param1:int, param2:int, param3:int) : void
      {
         if(param1 != this.var_2165 || param2 != this.var_2166)
         {
            return;
         }
         if(!this._view)
         {
            return;
         }
         this._view.updateAveragePrice(param3,this.var_2117);
      }
      
      public function onNotEnoughCredits() : void
      {
         if(this.var_1346)
         {
            this.var_1346 = false;
            this.releaseItem();
         }
      }
      
      public function requestInitialization(param1:int = 0) : void
      {
         var _loc2_:IConnection = this._communication.getHabboMainConnection(null);
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.send(new GetMarketplaceConfigurationMessageComposer());
      }
      
      public function getWindowContainer() : IWindowContainer
      {
         return null;
      }
      
      public function categorySwitch(param1:String) : void
      {
      }
      
      public function subCategorySwitch(param1:String) : void
      {
      }
      
      public function closingInventoryView() : void
      {
      }
   }
}
