package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class QuestVendingWallItemMessageComposer implements IMessageComposer
   {
       
      
      private var var_314:int;
      
      public function QuestVendingWallItemMessageComposer(param1:int)
      {
         super();
         this.var_314 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_314];
      }
   }
}
