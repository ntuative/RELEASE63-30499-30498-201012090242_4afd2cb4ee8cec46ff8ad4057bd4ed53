package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubOfferData
   {
       
      
      private var _offerId:int;
      
      private var var_1634:String;
      
      private var var_1652:int;
      
      private var var_2324:Boolean;
      
      private var var_2323:Boolean;
      
      private var var_2322:int;
      
      private var var_2327:int;
      
      private var var_2325:int;
      
      private var var_2321:int;
      
      private var var_2328:int;
      
      public function ClubOfferData(param1:IMessageDataWrapper)
      {
         super();
         this._offerId = param1.readInteger();
         this.var_1634 = param1.readString();
         this.var_1652 = param1.readInteger();
         this.var_2324 = param1.readBoolean();
         this.var_2323 = param1.readBoolean();
         this.var_2322 = param1.readInteger();
         this.var_2327 = param1.readInteger();
         this.var_2325 = param1.readInteger();
         this.var_2321 = param1.readInteger();
         this.var_2328 = param1.readInteger();
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1634;
      }
      
      public function get price() : int
      {
         return this.var_1652;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2324;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2323;
      }
      
      public function get periods() : int
      {
         return this.var_2322;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2327;
      }
      
      public function get year() : int
      {
         return this.var_2325;
      }
      
      public function get month() : int
      {
         return this.var_2321;
      }
      
      public function get day() : int
      {
         return this.var_2328;
      }
   }
}
