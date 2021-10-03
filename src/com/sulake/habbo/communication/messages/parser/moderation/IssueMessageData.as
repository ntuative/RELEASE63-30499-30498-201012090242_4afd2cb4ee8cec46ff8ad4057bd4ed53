package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_156:int = 1;
      
      public static const const_349:int = 2;
      
      public static const const_1370:int = 3;
       
      
      private var var_2018:int;
      
      private var _state:int;
      
      private var var_1220:int;
      
      private var var_2059:int;
      
      private var var_1498:int;
      
      private var var_2064:int;
      
      private var var_2060:int = 0;
      
      private var var_2061:int;
      
      private var var_2057:String;
      
      private var var_1382:int;
      
      private var var_1810:String;
      
      private var var_2058:int;
      
      private var var_2062:String;
      
      private var _message:String;
      
      private var var_1926:int;
      
      private var var_898:String;
      
      private var var_1774:int;
      
      private var var_2065:String;
      
      private var var_309:int;
      
      private var var_2063:String;
      
      private var var_2052:String;
      
      private var var_2043:int;
      
      private var var_2042:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function get issueId() : int
      {
         return this.var_2018;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1220;
      }
      
      public function get reportedCategoryId() : int
      {
         return this.var_2059;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1498;
      }
      
      public function get priority() : int
      {
         return this.var_2064 + this.var_2060;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_2061;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_2057;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1382;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_1810;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_2058;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_2062;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_1926;
      }
      
      public function get roomName() : String
      {
         return this.var_898;
      }
      
      public function get roomType() : int
      {
         return this.var_1774;
      }
      
      public function get flatType() : String
      {
         return this.var_2065;
      }
      
      public function get flatId() : int
      {
         return this.var_309;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_2063;
      }
      
      public function get roomResources() : String
      {
         return this.var_2052;
      }
      
      public function get unitPort() : int
      {
         return this.var_2043;
      }
      
      public function get worldId() : int
      {
         return this.var_2042;
      }
      
      public function set issueId(param1:int) : void
      {
         this.var_2018 = param1;
      }
      
      public function set state(param1:int) : void
      {
         this._state = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1220 = param1;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         this.var_2059 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         this.var_1498 = param1;
      }
      
      public function set priority(param1:int) : void
      {
         this.var_2064 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_2060 = param1;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         this.var_2061 = param1;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         this.var_2057 = param1;
      }
      
      public function set reportedUserId(param1:int) : void
      {
         this.var_1382 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         this.var_1810 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         this.var_2058 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         this.var_2062 = param1;
      }
      
      public function set message(param1:String) : void
      {
         this._message = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         this.var_1926 = param1;
      }
      
      public function set roomName(param1:String) : void
      {
         this.var_898 = param1;
      }
      
      public function set roomType(param1:int) : void
      {
         this.var_1774 = param1;
      }
      
      public function set flatType(param1:String) : void
      {
         this.var_2065 = param1;
      }
      
      public function set flatId(param1:int) : void
      {
         this.var_309 = param1;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         this.var_2063 = param1;
      }
      
      public function set roomResources(param1:String) : void
      {
         this.var_2052 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         this.var_2043 = param1;
      }
      
      public function set worldId(param1:int) : void
      {
         this.var_2042 = param1;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - this.var_1498) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
   }
}
