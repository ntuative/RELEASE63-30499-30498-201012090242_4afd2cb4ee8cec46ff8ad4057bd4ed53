package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1023:String = "M";
      
      public static const const_1392:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_159:Number = 0;
      
      private var var_225:int = 0;
      
      private var _name:String = "";
      
      private var var_2567:int = 0;
      
      private var var_816:String = "";
      
      private var var_562:String = "";
      
      private var var_2570:String = "";
      
      private var var_1947:int;
      
      private var var_1936:int = 0;
      
      private var var_2569:String = "";
      
      private var var_2571:int = 0;
      
      private var var_1939:int = 0;
      
      private var var_2568:String = "";
      
      private var var_171:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_171 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_171)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_158;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_171)
         {
            this.var_158 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_159;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_171)
         {
            this.var_159 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_225;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_171)
         {
            this.var_225 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_171)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_2567;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_171)
         {
            this.var_2567 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_816;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_171)
         {
            this.var_816 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_562;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_171)
         {
            this.var_562 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2570;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_171)
         {
            this.var_2570 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_1947;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_171)
         {
            this.var_1947 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_1936;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_171)
         {
            this.var_1936 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2569;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_171)
         {
            this.var_2569 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2571;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_171)
         {
            this.var_2571 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_1939;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_171)
         {
            this.var_1939 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2568;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_171)
         {
            this.var_2568 = param1;
         }
      }
   }
}
