package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1439:int;
      
      private var var_1925:int;
      
      private var var_1382:int;
      
      private var var_1926:int;
      
      private var var_111:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1439 = param1.readInteger();
         this.var_1925 = param1.readInteger();
         this.var_1382 = param1.readInteger();
         this.var_1926 = param1.readInteger();
         this.var_111 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1439);
      }
      
      public function get callId() : int
      {
         return this.var_1439;
      }
      
      public function get callerUserId() : int
      {
         return this.var_1925;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1382;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_1926;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_111;
      }
   }
}
