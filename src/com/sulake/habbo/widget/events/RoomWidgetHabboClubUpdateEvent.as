package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_208:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1958:int = 0;
      
      private var var_1957:int = 0;
      
      private var var_1960:int = 0;
      
      private var var_1961:Boolean = false;
      
      private var var_1959:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_208,param6,param7);
         this.var_1958 = param1;
         this.var_1957 = param2;
         this.var_1960 = param3;
         this.var_1961 = param4;
         this.var_1959 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_1958;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_1957;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_1960;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_1961;
      }
      
      public function get clubLevel() : int
      {
         return this.var_1959;
      }
   }
}
