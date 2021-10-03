package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1308:Boolean = false;
      
      private var var_1652:int;
      
      private var var_1700:Array;
      
      private var var_725:Array;
      
      private var var_726:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1308 = _loc2_.isWrappingEnabled;
         this.var_1652 = _loc2_.wrappingPrice;
         this.var_1700 = _loc2_.stuffTypes;
         this.var_725 = _loc2_.boxTypes;
         this.var_726 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1308;
      }
      
      public function get price() : int
      {
         return this.var_1652;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1700;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_725;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_726;
      }
   }
}
