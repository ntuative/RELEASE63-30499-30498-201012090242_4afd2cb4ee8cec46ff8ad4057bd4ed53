package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1902:int;
      
      private var var_1899:int;
      
      private var var_1900:int;
      
      private var var_1901:String;
      
      private var var_1431:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1902 = param1.readInteger();
         this.var_1899 = param1.readInteger();
         this.var_1900 = param1.readInteger();
         this.var_1901 = param1.readString();
         this.var_1431 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_1902;
      }
      
      public function get minute() : int
      {
         return this.var_1899;
      }
      
      public function get chatterId() : int
      {
         return this.var_1900;
      }
      
      public function get chatterName() : String
      {
         return this.var_1901;
      }
      
      public function get msg() : String
      {
         return this.var_1431;
      }
   }
}
