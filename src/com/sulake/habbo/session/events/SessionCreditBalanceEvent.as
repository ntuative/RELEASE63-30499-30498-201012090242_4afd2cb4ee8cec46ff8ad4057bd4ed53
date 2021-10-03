package com.sulake.habbo.session.events
{
   import flash.events.Event;
   
   public class SessionCreditBalanceEvent extends Event
   {
      
      public static const const_179:String = "session_credit_balance";
       
      
      private var var_1995:int;
      
      public function SessionCreditBalanceEvent(param1:int, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_179,param2,param3);
         this.var_1995 = param1;
      }
      
      public function get credits() : int
      {
         return this.var_1995;
      }
   }
}
