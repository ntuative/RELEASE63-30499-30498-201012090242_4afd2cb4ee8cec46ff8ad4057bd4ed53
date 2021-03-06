package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_562:String;
      
      private var var_1983:String;
      
      private var var_844:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_562 = param1;
         this.var_844 = param2;
         this.var_1983 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_562;
      }
      
      public function get race() : String
      {
         return this.var_1983;
      }
      
      public function get gender() : String
      {
         return this.var_844;
      }
   }
}
