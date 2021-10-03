package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2192:int;
      
      private var var_1381:String;
      
      private var var_2403:int;
      
      private var var_2402:int;
      
      private var _category:int;
      
      private var var_1864:String;
      
      private var var_1712:int;
      
      private var var_2406:int;
      
      private var var_2407:int;
      
      private var var_2405:int;
      
      private var var_2408:int;
      
      private var var_2404:Boolean;
      
      private var var_2673:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2192 = param1;
         this.var_1381 = param2;
         this.var_2403 = param3;
         this.var_2402 = param4;
         this._category = param5;
         this.var_1864 = param6;
         this.var_1712 = param7;
         this.var_2406 = param8;
         this.var_2407 = param9;
         this.var_2405 = param10;
         this.var_2408 = param11;
         this.var_2404 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2192;
      }
      
      public function get itemType() : String
      {
         return this.var_1381;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2403;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2402;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_1864;
      }
      
      public function get extra() : int
      {
         return this.var_1712;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2406;
      }
      
      public function get creationDay() : int
      {
         return this.var_2407;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2405;
      }
      
      public function get creationYear() : int
      {
         return this.var_2408;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2404;
      }
      
      public function get songID() : int
      {
         return this.var_1712;
      }
   }
}
