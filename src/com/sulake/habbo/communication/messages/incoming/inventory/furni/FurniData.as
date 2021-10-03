package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1891:int;
      
      private var var_1381:String;
      
      private var _objId:int;
      
      private var var_1549:int;
      
      private var _category:int;
      
      private var var_1864:String;
      
      private var var_1896:Boolean;
      
      private var var_1893:Boolean;
      
      private var var_1892:Boolean;
      
      private var var_1895:Boolean;
      
      private var var_1894:int;
      
      private var var_1712:int;
      
      private var var_1648:String = "";
      
      private var var_1970:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_1891 = param1;
         this.var_1381 = param2;
         this._objId = param3;
         this.var_1549 = param4;
         this._category = param5;
         this.var_1864 = param6;
         this.var_1896 = param7;
         this.var_1893 = param8;
         this.var_1892 = param9;
         this.var_1895 = param10;
         this.var_1894 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1648 = param1;
         this.var_1712 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_1891;
      }
      
      public function get itemType() : String
      {
         return this.var_1381;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_1549;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1864;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_1896;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_1893;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_1892;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_1895;
      }
      
      public function get expiryTime() : int
      {
         return this.var_1894;
      }
      
      public function get slotId() : String
      {
         return this.var_1648;
      }
      
      public function get songId() : int
      {
         return this.var_1970;
      }
      
      public function get extra() : int
      {
         return this.var_1712;
      }
   }
}
