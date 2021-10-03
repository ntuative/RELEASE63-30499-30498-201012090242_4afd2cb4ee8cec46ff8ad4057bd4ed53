package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_76:String = "i";
      
      public static const const_83:String = "s";
      
      public static const const_242:String = "e";
       
      
      private var var_1572:String;
      
      private var var_2370:int;
      
      private var var_1260:String;
      
      private var var_1261:int;
      
      private var var_1570:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1572 = param1.readString();
         this.var_2370 = param1.readInteger();
         this.var_1260 = param1.readString();
         this.var_1261 = param1.readInteger();
         this.var_1570 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1572;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2370;
      }
      
      public function get extraParam() : String
      {
         return this.var_1260;
      }
      
      public function get productCount() : int
      {
         return this.var_1261;
      }
      
      public function get expiration() : int
      {
         return this.var_1570;
      }
   }
}
