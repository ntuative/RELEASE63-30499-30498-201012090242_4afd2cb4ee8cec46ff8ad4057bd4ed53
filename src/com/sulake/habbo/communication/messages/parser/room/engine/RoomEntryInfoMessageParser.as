package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1803:Boolean;
      
      private var var_2540:int;
      
      private var var_377:Boolean;
      
      private var var_1123:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function get guestRoom() : Boolean
      {
         return this.var_1803;
      }
      
      public function get guestRoomId() : int
      {
         return this.var_2540;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return this.var_1123;
      }
      
      public function get owner() : Boolean
      {
         return this.var_377;
      }
      
      public function flush() : Boolean
      {
         if(this.var_1123 != null)
         {
            this.var_1123.dispose();
            this.var_1123 = null;
         }
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1803 = param1.readBoolean();
         if(this.var_1803)
         {
            this.var_2540 = param1.readInteger();
            this.var_377 = param1.readBoolean();
         }
         else
         {
            this.var_1123 = new PublicRoomShortData(param1);
         }
         return true;
      }
   }
}
