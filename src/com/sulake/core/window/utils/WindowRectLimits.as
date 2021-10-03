package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_482:int = -2.147483648E9;
      
      private var var_483:int = 2.147483647E9;
      
      private var var_484:int = -2.147483648E9;
      
      private var var_485:int = 2.147483647E9;
      
      private var _target:IWindow;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         this._target = param1;
      }
      
      public function get minWidth() : int
      {
         return this.var_482;
      }
      
      public function get maxWidth() : int
      {
         return this.var_483;
      }
      
      public function get minHeight() : int
      {
         return this.var_484;
      }
      
      public function get maxHeight() : int
      {
         return this.var_485;
      }
      
      public function set minWidth(param1:int) : void
      {
         this.var_482 = param1;
         if(this.var_482 > int.MIN_VALUE && !this._target.disposed && this._target.width < this.var_482)
         {
            this._target.width = this.var_482;
         }
      }
      
      public function set maxWidth(param1:int) : void
      {
         this.var_483 = param1;
         if(this.var_483 < int.MAX_VALUE && !this._target.disposed && this._target.width > this.var_483)
         {
            this._target.width = this.var_483;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         this.var_484 = param1;
         if(this.var_484 > int.MIN_VALUE && !this._target.disposed && this._target.height < this.var_484)
         {
            this._target.height = this.var_484;
         }
      }
      
      public function set maxHeight(param1:int) : void
      {
         this.var_485 = param1;
         if(this.var_485 < int.MAX_VALUE && !this._target.disposed && this._target.height > this.var_485)
         {
            this._target.height = this.var_485;
         }
      }
      
      public function get isEmpty() : Boolean
      {
         return this.var_482 == int.MIN_VALUE && this.var_483 == int.MAX_VALUE && this.var_484 == int.MIN_VALUE && this.var_485 == int.MAX_VALUE;
      }
      
      public function setEmpty() : void
      {
         this.var_482 = int.MIN_VALUE;
         this.var_483 = int.MAX_VALUE;
         this.var_484 = int.MIN_VALUE;
         this.var_485 = int.MAX_VALUE;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_482 = this.var_482;
         _loc2_.var_483 = this.var_483;
         _loc2_.var_484 = this.var_484;
         _loc2_.var_485 = this.var_485;
         return _loc2_;
      }
   }
}
