package com.sulake.habbo.communication.messages.outgoing.help
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SendRegistrationDataComposer implements IMessageComposer
   {
       
      
      private var var_771:Array;
      
      public function SendRegistrationDataComposer(param1:String, param2:String, param3:Boolean)
      {
         this.var_771 = [];
         super();
         this.var_771.push(param1);
         this.var_771.push(param2);
         this.var_771.push(param3);
      }
      
      public function getMessageArray() : Array
      {
         return this.var_771;
      }
      
      public function dispose() : void
      {
         this.var_771 = null;
      }
   }
}
