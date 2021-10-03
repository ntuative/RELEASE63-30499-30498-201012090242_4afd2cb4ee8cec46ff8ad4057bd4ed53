package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
      
      public static const const_1583:int = 1;
      
      public static const const_1380:int = 2;
       
      
      private var var_909:String;
      
      private var var_2366:int;
      
      private var var_2362:int;
      
      private var var_2365:int;
      
      private var var_2364:int;
      
      private var var_2368:Boolean;
      
      private var var_1996:Boolean;
      
      private var var_1997:int;
      
      private var var_1994:int;
      
      private var var_2369:Boolean;
      
      private var var_2363:int;
      
      private var var_2367:int;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_909 = param1.readString();
         this.var_2366 = param1.readInteger();
         this.var_2362 = param1.readInteger();
         this.var_2365 = param1.readInteger();
         this.var_2364 = param1.readInteger();
         this.var_2368 = param1.readBoolean();
         this.var_1996 = param1.readBoolean();
         this.var_1997 = param1.readInteger();
         this.var_1994 = param1.readInteger();
         this.var_2369 = param1.readBoolean();
         this.var_2363 = param1.readInteger();
         this.var_2367 = param1.readInteger();
         return true;
      }
      
      public function get productName() : String
      {
         return this.var_909;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return this.var_2366;
      }
      
      public function get memberPeriods() : int
      {
         return this.var_2362;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return this.var_2365;
      }
      
      public function get responseType() : int
      {
         return this.var_2364;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return this.var_2368;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_1996;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_1997;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_1994;
      }
      
      public function get isShowBasicPromo() : Boolean
      {
         return this.var_2369;
      }
      
      public function get basicNormalPrice() : int
      {
         return this.var_2363;
      }
      
      public function get basicPromoPrice() : int
      {
         return this.var_2367;
      }
   }
}
