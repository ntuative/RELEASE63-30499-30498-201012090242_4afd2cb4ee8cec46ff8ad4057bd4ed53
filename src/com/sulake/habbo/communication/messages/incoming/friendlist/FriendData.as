package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_844:int;
      
      private var var_732:Boolean;
      
      private var var_1444:Boolean;
      
      private var var_562:String;
      
      private var var_1220:int;
      
      private var var_1611:String;
      
      private var var_1609:String;
      
      private var var_1610:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_844 = param1.readInteger();
         this.var_732 = param1.readBoolean();
         this.var_1444 = param1.readBoolean();
         this.var_562 = param1.readString();
         this.var_1220 = param1.readInteger();
         this.var_1611 = param1.readString();
         this.var_1609 = param1.readString();
         this.var_1610 = param1.readString();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_844;
      }
      
      public function get online() : Boolean
      {
         return this.var_732;
      }
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1444;
      }
      
      public function get figure() : String
      {
         return this.var_562;
      }
      
      public function get categoryId() : int
      {
         return this.var_1220;
      }
      
      public function get motto() : String
      {
         return this.var_1611;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1609;
      }
      
      public function get realName() : String
      {
         return this.var_1610;
      }
   }
}
