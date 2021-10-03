package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_1539:int;
      
      private var var_954:Array;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1539;
      }
      
      public function get enabledCommands() : Array
      {
         return this.var_954;
      }
      
      public function flush() : Boolean
      {
         this.var_1539 = -1;
         this.var_954 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1539 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_954 = new Array();
         while(_loc2_-- > 0)
         {
            this.var_954.push(param1.readInteger());
         }
         return true;
      }
   }
}
