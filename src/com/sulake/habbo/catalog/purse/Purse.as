package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_530:int = 0;
       
      
      private var var_1995:int = 0;
      
      private var var_1200:Dictionary;
      
      private var var_1455:int = 0;
      
      private var var_1456:int = 0;
      
      private var var_1996:Boolean = false;
      
      private var var_1997:int = 0;
      
      private var var_1994:int = 0;
      
      public function Purse()
      {
         this.var_1200 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1995;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1995 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_1455;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_1455 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_1456;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_1456 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_1455 > 0 || this.var_1456 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_1996;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_1996 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_1997;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_1997 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_1994;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_1994 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1200;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1200 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1200[param1];
      }
   }
}
