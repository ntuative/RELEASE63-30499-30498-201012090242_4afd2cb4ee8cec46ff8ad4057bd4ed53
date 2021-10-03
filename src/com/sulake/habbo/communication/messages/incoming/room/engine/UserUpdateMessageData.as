package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_158:Number = 0;
      
      private var var_159:Number = 0;
      
      private var var_2284:Number = 0;
      
      private var var_2287:Number = 0;
      
      private var var_2288:Number = 0;
      
      private var var_2285:Number = 0;
      
      private var var_225:int = 0;
      
      private var var_2208:int = 0;
      
      private var var_287:Array;
      
      private var var_2286:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_287 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_158 = param3;
         this.var_159 = param4;
         this.var_2284 = param5;
         this.var_225 = param6;
         this.var_2208 = param7;
         this.var_2287 = param8;
         this.var_2288 = param9;
         this.var_2285 = param10;
         this.var_2286 = param11;
         this.var_287 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_158;
      }
      
      public function get z() : Number
      {
         return this.var_159;
      }
      
      public function get localZ() : Number
      {
         return this.var_2284;
      }
      
      public function get targetX() : Number
      {
         return this.var_2287;
      }
      
      public function get targetY() : Number
      {
         return this.var_2288;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2285;
      }
      
      public function get dir() : int
      {
         return this.var_225;
      }
      
      public function get dirHead() : int
      {
         return this.var_2208;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2286;
      }
      
      public function get actions() : Array
      {
         return this.var_287.slice();
      }
   }
}
