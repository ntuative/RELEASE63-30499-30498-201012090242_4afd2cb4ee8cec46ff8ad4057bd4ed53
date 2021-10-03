package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1905:int;
      
      private var var_1904:int;
      
      private var var_1907:int;
      
      private var _dayOffsets:Array;
      
      private var var_1509:Array;
      
      private var var_1510:Array;
      
      private var var_1906:int;
      
      private var var_1908:int;
      
      public function MarketplaceItemStatsParser()
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
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1905 = param1.readInteger();
         this.var_1904 = param1.readInteger();
         this.var_1907 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this._dayOffsets = [];
         this.var_1509 = [];
         this.var_1510 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._dayOffsets.push(param1.readInteger());
            this.var_1509.push(param1.readInteger());
            this.var_1510.push(param1.readInteger());
            _loc3_++;
         }
         this.var_1908 = param1.readInteger();
         this.var_1906 = param1.readInteger();
         return true;
      }
   }
}
