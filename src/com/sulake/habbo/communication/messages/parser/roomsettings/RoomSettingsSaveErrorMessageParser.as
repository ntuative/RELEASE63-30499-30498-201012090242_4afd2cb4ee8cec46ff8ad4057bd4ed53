package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1759:int = 1;
      
      public static const const_1588:int = 2;
      
      public static const const_1776:int = 3;
      
      public static const const_1723:int = 4;
      
      public static const const_1330:int = 5;
      
      public static const const_1805:int = 6;
      
      public static const const_1283:int = 7;
      
      public static const const_1455:int = 8;
      
      public static const const_1754:int = 9;
      
      public static const const_1332:int = 10;
      
      public static const const_1462:int = 11;
      
      public static const const_1456:int = 12;
       
      
      private var _roomId:int;
      
      private var var_1470:int;
      
      private var var_2337:String;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_1470 = param1.readInteger();
         this.var_2337 = param1.readString();
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get errorCode() : int
      {
         return this.var_1470;
      }
      
      public function get info() : String
      {
         return this.var_2337;
      }
   }
}
