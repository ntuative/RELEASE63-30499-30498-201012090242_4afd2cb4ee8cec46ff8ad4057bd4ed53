package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_741:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_890:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_741);
         this.var_890 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_890;
      }
   }
}
