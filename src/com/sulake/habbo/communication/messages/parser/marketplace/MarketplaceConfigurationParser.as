package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1308:Boolean;
      
      private var var_2113:int;
      
      private var var_1744:int;
      
      private var var_1745:int;
      
      private var var_2115:int;
      
      private var var_2114:int;
      
      private var var_2116:int;
      
      private var var_2117:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
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
      
      public function get averagePricePeriod() : int
      {
         return this.var_2117;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1308 = param1.readBoolean();
         this.var_2113 = param1.readInteger();
         this.var_1744 = param1.readInteger();
         this.var_1745 = param1.readInteger();
         this.var_2114 = param1.readInteger();
         this.var_2115 = param1.readInteger();
         this.var_2116 = param1.readInteger();
         this.var_2117 = param1.readInteger();
         return true;
      }
   }
}
