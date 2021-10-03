package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1539:int;
      
      private var var_2512:String;
      
      private var var_1513:int;
      
      private var var_562:String;
      
      private var var_1398:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1539 = param1.readInteger();
         this.var_2512 = param1.readString();
         this.var_1513 = param1.readInteger();
         this.var_562 = param1.readString();
         this.var_1398 = param1.readInteger();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1539;
      }
      
      public function get petName() : String
      {
         return this.var_2512;
      }
      
      public function get level() : int
      {
         return this.var_1513;
      }
      
      public function get figure() : String
      {
         return this.var_562;
      }
      
      public function get petType() : int
      {
         return this.var_1398;
      }
   }
}
