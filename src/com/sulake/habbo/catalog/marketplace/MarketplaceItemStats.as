package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1905:int;
      
      private var var_1904:int;
      
      private var var_1907:int;
      
      private var _dayOffsets:Array;
      
      private var var_1509:Array;
      
      private var var_1510:Array;
      
      private var var_1906:int;
      
      private var var_1908:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_1905;
      }
      
      public function get offerCount() : int
      {
         return this.var_1904;
      }
      
      public function get historyLength() : int
      {
         return this.var_1907;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1509;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1510;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_1906;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_1908;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_1905 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_1904 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_1907 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1509 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1510 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_1906 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_1908 = param1;
      }
   }
}
