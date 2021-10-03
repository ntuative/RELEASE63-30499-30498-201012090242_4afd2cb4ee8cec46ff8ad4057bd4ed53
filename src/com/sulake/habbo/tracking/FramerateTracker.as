package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class FramerateTracker
   {
       
      
      private var var_1505:int;
      
      private var var_2295:int;
      
      private var var_1048:int;
      
      private var var_433:Number;
      
      private var var_2294:Boolean;
      
      private var var_2293:int;
      
      private var var_1631:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2295 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2293 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2294 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         ++this.var_1048;
         var _loc3_:int = getTimer();
         if(this.var_1048 == 1)
         {
            this.var_433 = param1;
            this.var_1505 = _loc3_;
         }
         else
         {
            _loc4_ = Number(this.var_1048);
            this.var_433 = this.var_433 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2294 && _loc3_ - this.var_1505 >= this.var_2295 && this.var_1631 < this.var_2293)
         {
            _loc5_ = 1000 / this.var_433;
            param2.track("performance","averageFramerate",Math.round(_loc5_));
            ++this.var_1631;
            this.var_1505 = _loc3_;
            this.var_1048 = 0;
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
