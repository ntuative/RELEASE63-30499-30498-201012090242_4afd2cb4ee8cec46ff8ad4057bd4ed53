package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_850:int = 3;
       
      
      private var var_2379:int = -1;
      
      private var var_2378:int = -2;
      
      private var var_325:Vector3d = null;
      
      private var var_387:Vector3d = null;
      
      private var var_2372:Boolean = false;
      
      private var var_2381:Boolean = false;
      
      private var var_2375:Boolean = false;
      
      private var var_2374:Boolean = false;
      
      private var var_2376:int = 0;
      
      private var var_2373:int = 0;
      
      private var var_2380:int = 0;
      
      private var var_2377:int = 0;
      
      private var var_1334:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_387;
      }
      
      public function get targetId() : int
      {
         return this.var_2379;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2378;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2372;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2381;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2375;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2374;
      }
      
      public function get screenWd() : int
      {
         return this.var_2376;
      }
      
      public function get screenHt() : int
      {
         return this.var_2373;
      }
      
      public function get roomWd() : int
      {
         return this.var_2380;
      }
      
      public function get roomHt() : int
      {
         return this.var_2377;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2379 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2378 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2372 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2381 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2375 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2374 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2376 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2373 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2380 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2377 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(this.var_325 == null)
         {
            this.var_325 = new Vector3d();
         }
         if(this.var_325.x != param1.x || this.var_325.y != param1.y || this.var_325.z != param1.z)
         {
            this.var_325.assign(param1);
            this.var_1334 = 0;
         }
      }
      
      public function dispose() : void
      {
         this.var_325 = null;
         this.var_387 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_387 != null)
         {
            return;
         }
         this.var_387 = new Vector3d();
         this.var_387.assign(param1);
      }
      
      public function update(param1:uint, param2:Number, param3:Number) : void
      {
         var _loc4_:* = null;
         if(this.var_325 != null && this.var_387 != null)
         {
            ++this.var_1334;
            _loc4_ = Vector3d.dif(this.var_325,this.var_387);
            if(_loc4_.length <= param2)
            {
               this.var_387 = this.var_325;
               this.var_325 = null;
            }
            else
            {
               _loc4_.div(_loc4_.length);
               if(_loc4_.length < param2 * (const_850 + 1))
               {
                  _loc4_.mul(param2);
               }
               else if(this.var_1334 <= const_850)
               {
                  _loc4_.mul(param2);
               }
               else
               {
                  _loc4_.mul(param3);
               }
               this.var_387 = Vector3d.sum(this.var_387,_loc4_);
            }
         }
      }
   }
}
