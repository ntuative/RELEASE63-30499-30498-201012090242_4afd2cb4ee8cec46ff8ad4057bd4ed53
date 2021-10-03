package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2001:Number = 0.0;
      
      private var var_2002:Number = 0.0;
      
      private var var_2193:Number = 0.0;
      
      private var var_2194:Number = 0.0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         this.var_2001 = param1;
         this.var_2002 = param2;
         this.var_2193 = param3;
         this.var_2194 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return this.var_2001;
      }
      
      public function get rightSideLoc() : Number
      {
         return this.var_2002;
      }
      
      public function get leftSideLength() : Number
      {
         return this.var_2193;
      }
      
      public function get rightSideLength() : Number
      {
         return this.var_2194;
      }
   }
}
