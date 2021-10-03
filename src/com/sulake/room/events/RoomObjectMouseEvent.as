package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_213:String = "ROE_MOUSE_CLICK";
      
      public static const const_1743:String = "ROE_MOUSE_ENTER";
      
      public static const const_400:String = "ROE_MOUSE_MOVE";
      
      public static const const_1719:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1639:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_511:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1537:String = "";
      
      private var var_2123:Boolean;
      
      private var var_2122:Boolean;
      
      private var var_2124:Boolean;
      
      private var var_2125:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1537 = param2;
         this.var_2123 = param5;
         this.var_2122 = param6;
         this.var_2124 = param7;
         this.var_2125 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1537;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2123;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2122;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2124;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2125;
      }
   }
}
