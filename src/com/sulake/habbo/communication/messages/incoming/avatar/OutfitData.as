package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1648:int;
      
      private var var_2371:String;
      
      private var var_844:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1648 = param1.readInteger();
         this.var_2371 = param1.readString();
         this.var_844 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1648;
      }
      
      public function get figureString() : String
      {
         return this.var_2371;
      }
      
      public function get gender() : String
      {
         return this.var_844;
      }
   }
}
