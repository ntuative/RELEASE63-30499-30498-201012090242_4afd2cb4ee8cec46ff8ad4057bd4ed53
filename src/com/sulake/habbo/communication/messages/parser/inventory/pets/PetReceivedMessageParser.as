package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1477:Boolean;
      
      private var var_969:PetData;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1477 = param1.readBoolean();
         this.var_969 = new PetData(param1);
         Logger.log("Got PetReceived: " + this.var_1477 + ", " + this.var_969.id + ", " + this.var_969.name + ", " + this.pet.figure + ", " + this.var_969.type);
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return this.var_1477;
      }
      
      public function get pet() : PetData
      {
         return this.var_969;
      }
   }
}
