package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_526:int = -1;
      
      public static const const_1012:int = -1;
       
      
      private var _id:int = 0;
      
      private var _x:int = 0;
      
      private var var_158:int = 0;
      
      private var var_2029:int = 1;
      
      private var var_784:int = 1;
      
      private var var_1479:int = 1;
      
      private var var_2026:int = -1;
      
      private var var_2028:int = 0;
      
      private var var_2027:Boolean = false;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:int, param6:Boolean, param7:int = -1, param8:int = 0)
      {
         super();
         this._id = param1;
         this._x = param2;
         this.var_158 = param3;
         this.var_2027 = param6;
         if(param4 < 1)
         {
            param4 = 1;
         }
         this.var_2029 = param4;
         if(param5 < 0)
         {
            param5 = const_526;
         }
         this.var_784 = param5;
         this.var_1479 = param5;
         if(param7 >= 0)
         {
            this.var_2026 = param7;
            this.var_2028 = param8;
         }
      }
      
      public function get id() : int
      {
         if(this._id >= 0)
         {
            return this._id;
         }
         return -this._id * Math.random();
      }
      
      public function get x() : int
      {
         return this._x;
      }
      
      public function get y() : int
      {
         return this.var_158;
      }
      
      public function get repeats() : int
      {
         return this.var_2029;
      }
      
      public function get frameRepeats() : int
      {
         return this.var_784;
      }
      
      public function get isLastFrame() : Boolean
      {
         return this.var_2027;
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(this.var_784 < 0)
         {
            return const_526;
         }
         return this.var_1479;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(this.var_784 > 0 && param1 > this.var_784)
         {
            param1 = this.var_784;
         }
         this.var_1479 = param1;
      }
      
      public function get activeSequence() : int
      {
         return this.var_2026;
      }
      
      public function get activeSequenceOffset() : int
      {
         return this.var_2028;
      }
   }
}
