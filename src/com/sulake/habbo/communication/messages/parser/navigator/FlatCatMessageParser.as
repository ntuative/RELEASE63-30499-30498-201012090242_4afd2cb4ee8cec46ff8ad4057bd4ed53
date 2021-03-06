package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCatMessageParser implements IMessageParser
   {
       
      
      private var var_309:int;
      
      private var var_1802:int;
      
      public function FlatCatMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_309 = param1.readInteger();
         this.var_1802 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_309 = 0;
         this.var_1802 = 0;
         return true;
      }
      
      public function get flatId() : int
      {
         return this.var_309;
      }
      
      public function get nodeId() : int
      {
         return this.var_1802;
      }
   }
}
