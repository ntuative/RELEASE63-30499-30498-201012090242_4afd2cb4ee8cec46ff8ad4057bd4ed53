package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1537:String = "";
      
      private var var_2387:String = "";
      
      private var var_2385:String = "";
      
      private var var_2388:Number = 0;
      
      private var var_2386:Number = 0;
      
      private var var_2232:Number = 0;
      
      private var var_2233:Number = 0;
      
      private var var_2122:Boolean = false;
      
      private var var_2123:Boolean = false;
      
      private var var_2124:Boolean = false;
      
      private var var_2125:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1537 = param2;
         this.var_2387 = param3;
         this.var_2385 = param4;
         this.var_2388 = param5;
         this.var_2386 = param6;
         this.var_2232 = param7;
         this.var_2233 = param8;
         this.var_2122 = param9;
         this.var_2123 = param10;
         this.var_2124 = param11;
         this.var_2125 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1537;
      }
      
      public function get canvasId() : String
      {
         return this.var_2387;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2385;
      }
      
      public function get screenX() : Number
      {
         return this.var_2388;
      }
      
      public function get screenY() : Number
      {
         return this.var_2386;
      }
      
      public function get localX() : Number
      {
         return this.var_2232;
      }
      
      public function get localY() : Number
      {
         return this.var_2233;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2122;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2123;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2124;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2125;
      }
   }
}
