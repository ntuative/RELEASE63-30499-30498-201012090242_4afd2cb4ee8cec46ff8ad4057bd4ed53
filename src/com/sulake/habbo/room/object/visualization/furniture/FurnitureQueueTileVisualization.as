package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const ANIMATION_ID_ROLL:int = 3;
      
      private static const const_1158:int = 2;
      
      private static const const_1157:int = 1;
      
      private static const ANIMATION_DURATION:int = 15;
       
      
      private var var_260:Array;
      
      private var var_984:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_260 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1158)
         {
            this.var_260 = new Array();
            this.var_260.push(const_1157);
            this.var_984 = ANIMATION_DURATION;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Array
      {
         if(this.var_984 > 0)
         {
            --this.var_984;
         }
         if(this.var_984 == 0)
         {
            if(this.var_260.length > 0)
            {
               super.setAnimation(this.var_260.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
