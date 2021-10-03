package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_200:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_205:String = "RWUIUE_PEER";
      
      public static const const_1307:int = 0;
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const const_932:int = 2;
      
      public static const const_935:int = 3;
      
      public static const const_1426:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1611:String = "";
      
      private var var_1947:int;
      
      private var var_1936:int = 0;
      
      private var var_1939:int = 0;
      
      private var var_562:String = "";
      
      private var var_38:BitmapData = null;
      
      private var var_239:Array;
      
      private var var_1180:int = 0;
      
      private var var_1945:String = "";
      
      private var var_1944:int = 0;
      
      private var var_1937:int = 0;
      
      private var var_1492:Boolean = false;
      
      private var var_1610:String = "";
      
      private var var_1940:Boolean = false;
      
      private var var_1941:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_1950:Boolean = false;
      
      private var var_1938:Boolean = false;
      
      private var var_1949:Boolean = false;
      
      private var var_1943:Boolean = false;
      
      private var var_1948:Boolean = false;
      
      private var var_1942:Boolean = false;
      
      private var var_1946:int = 0;
      
      private var var_1491:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_239 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1611 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1611;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_1947 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_1947;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_1936 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_1936;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_1939 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_1939;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_562 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_562;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_38 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_38;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_239 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_239;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1180 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1180;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_1945 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_1945;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_1940 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_1940;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_1950 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_1950;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_1938 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_1938;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_1949 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_1949;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_1943 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_1943;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_1948 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_1948;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_1942 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_1942;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_1946 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_1946;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_1941 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_1941;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1491 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1491;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_1944 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_1944;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_1937 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_1937;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1492 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1492;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1610 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1610;
      }
   }
}
