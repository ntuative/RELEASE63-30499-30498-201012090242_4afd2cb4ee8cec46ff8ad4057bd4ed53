package com.sulake.habbo.communication.demo
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.habbo.communication.IHabboWebLogin;
   import com.sulake.habbo.communication.enum.HabboWeb;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class SSOTicket extends EventDispatcher
   {
      
      public static const const_348:String = "success";
      
      public static const const_293:String = "failure";
       
      
      private var var_39:URLLoader;
      
      private var var_1173:String;
      
      private var var_1172:IHabboWebLogin;
      
      private var var_2657:String;
      
      private var var_1418:String;
      
      private var var_1889:String;
      
      private var _assets:IAssetLibrary;
      
      public function SSOTicket(param1:IAssetLibrary, param2:IHabboWebLogin, param3:String)
      {
         super();
         this._assets = param1;
         this.var_1172 = param2;
         this.var_1173 = "http://" + param3 + "/client";
         this.var_1172.init();
         this.var_1172.addEventListener(HabboWeb.const_227,this.requestClientURL);
      }
      
      public function get ticket() : String
      {
         return this.var_1418;
      }
      
      public function get shockwaveClientUrl() : String
      {
         return this.var_1889;
      }
      
      private function requestClientURL(param1:Event = null) : void
      {
         var _loc2_:String = this.var_1173;
         if(this._assets.hasAsset(_loc2_))
         {
            Logger.log("[CoreLocalizationManager] reload localization for url: " + this.var_1173);
         }
         var _loc3_:URLRequest = new URLRequest(this.var_1173);
         if(this._assets.hasAsset(_loc2_))
         {
            this._assets.removeAsset(this._assets.getAssetByName(_loc2_));
         }
         var _loc4_:AssetLoaderStruct = this._assets.loadAssetFromFile(_loc2_,_loc3_,"text/plain");
         _loc4_.addEventListener(AssetLoaderEvent.const_30,this.clientURLComplete);
      }
      
      private function clientURLComplete(param1:Event = null) : void
      {
         var event:Event = param1;
         var loaderStruct:AssetLoaderStruct = event.target as AssetLoaderStruct;
         if(loaderStruct == null)
         {
            return;
         }
         var data:String = loaderStruct.assetLoader.content as String;
         if(data.indexOf("account/reauthenticate\"") > -1)
         {
            this.var_1172.requestReAuthenticate();
         }
         else
         {
            try
            {
               this.var_1418 = /\"sso.ticket\" : \"(.*?)\"/.exec(data)[1];
               this.var_1889 = /\"flash.client.url\" : \"(.*?)\"/.exec(data)[1];
               if(this.var_1418.length > 0)
               {
                  dispatchEvent(new Event(const_348));
               }
               else
               {
                  dispatchEvent(new Event(const_293));
               }
            }
            catch(e:Error)
            {
               dispatchEvent(new Event(const_293));
            }
         }
      }
   }
}
