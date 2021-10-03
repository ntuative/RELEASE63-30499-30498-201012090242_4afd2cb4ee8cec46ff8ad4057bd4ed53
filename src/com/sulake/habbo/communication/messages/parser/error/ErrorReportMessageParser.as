package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1470:int;
      
      private var var_1661:int;
      
      private var var_1660:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1661 = param1.readInteger();
         this.var_1470 = param1.readInteger();
         this.var_1660 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         this.var_1470 = 0;
         this.var_1661 = 0;
         this.var_1660 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return this.var_1470;
      }
      
      public function get messageId() : int
      {
         return this.var_1661;
      }
      
      public function get timestamp() : String
      {
         return this.var_1660;
      }
   }
}
