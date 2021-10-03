package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_562:String;
      
      private var var_816:String;
      
      private var var_2102:String;
      
      private var var_1610:String;
      
      private var var_2103:int;
      
      private var var_2101:String;
      
      private var var_2100:int;
      
      private var var_2104:int;
      
      private var var_2105:int;
      
      private var _respectLeft:int;
      
      private var var_675:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_562 = param1.readString();
         this.var_816 = param1.readString();
         this.var_2102 = param1.readString();
         this.var_1610 = param1.readString();
         this.var_2103 = param1.readInteger();
         this.var_2101 = param1.readString();
         this.var_2100 = param1.readInteger();
         this.var_2104 = param1.readInteger();
         this.var_2105 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_675 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_562;
      }
      
      public function get sex() : String
      {
         return this.var_816;
      }
      
      public function get customData() : String
      {
         return this.var_2102;
      }
      
      public function get realName() : String
      {
         return this.var_1610;
      }
      
      public function get tickets() : int
      {
         return this.var_2103;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2101;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2100;
      }
      
      public function get directMail() : int
      {
         return this.var_2104;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2105;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_675;
      }
   }
}
