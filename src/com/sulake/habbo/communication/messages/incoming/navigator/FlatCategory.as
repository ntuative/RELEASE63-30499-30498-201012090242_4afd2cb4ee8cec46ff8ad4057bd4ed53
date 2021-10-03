package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_1802:int;
      
      private var var_2549:String;
      
      private var var_348:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_1802 = param1.readInteger();
         this.var_2549 = param1.readString();
         this.var_348 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_1802;
      }
      
      public function get nodeName() : String
      {
         return this.var_2549;
      }
      
      public function get visible() : Boolean
      {
         return this.var_348;
      }
   }
}
