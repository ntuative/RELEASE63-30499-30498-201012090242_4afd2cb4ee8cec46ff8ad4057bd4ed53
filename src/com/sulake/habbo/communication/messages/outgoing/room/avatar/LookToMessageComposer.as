package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LookToMessageComposer implements IMessageComposer
   {
       
      
      private var var_1990:int;
      
      private var var_1989:int;
      
      public function LookToMessageComposer(param1:int, param2:int)
      {
         super();
         this.var_1990 = param1;
         this.var_1989 = param2;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1990,this.var_1989];
      }
      
      public function dispose() : void
      {
      }
   }
}
