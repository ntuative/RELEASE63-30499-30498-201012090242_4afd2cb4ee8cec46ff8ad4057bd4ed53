package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_755:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_1180:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_755);
         this.var_1180 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1180;
      }
   }
}
