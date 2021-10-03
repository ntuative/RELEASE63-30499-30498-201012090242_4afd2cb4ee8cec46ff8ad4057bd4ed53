package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_105:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1625:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_105);
         this.var_1625 = param1;
      }
      
      public function get vote() : int
      {
         return this.var_1625;
      }
   }
}
