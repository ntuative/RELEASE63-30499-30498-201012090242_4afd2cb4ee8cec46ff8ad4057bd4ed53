package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_736:String = "";
      
      public static const const_541:int = 0;
      
      public static const const_525:int = 255;
      
      public static const const_701:Boolean = false;
      
      public static const const_506:int = 0;
      
      public static const const_407:int = 0;
      
      public static const const_418:int = 0;
      
      public static const const_1086:int = 1;
      
      public static const const_938:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2329:String = "";
      
      private var var_1720:int = 0;
      
      private var var_1954:int = 255;
      
      private var var_2419:Boolean = false;
      
      private var var_2420:int = 0;
      
      private var var_2421:int = 0;
      
      private var var_2418:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2329 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2329;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_1720 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_1720;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_1954 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_1954;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2419 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2419;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2420 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2420;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2421 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2421;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2418 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2418;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
