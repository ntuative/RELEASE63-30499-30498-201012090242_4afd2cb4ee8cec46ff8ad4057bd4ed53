package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1455:int = 0;
      
      private var var_1456:int = 0;
      
      private var var_2551:int = 0;
      
      private var var_2550:Boolean = false;
      
      private var var_1996:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1455 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1456 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2551 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2550 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_1996 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1455;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1456;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2551;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2550;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_1996;
      }
   }
}
