package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var _connection:IConnection = null;
      
      private var var_153:IHabboConfigurationManager = null;
      
      private var var_510:int = 0;
      
      private var var_433:Number = 0;
      
      private var var_2623:Array;
      
      private var var_1225:String = "";
      
      private var var_1506:String = "";
      
      private var var_2068:String = "";
      
      private var var_2261:String = "";
      
      private var var_1612:Boolean = false;
      
      private var var_1503:GarbageMonitor = null;
      
      private var var_1224:int = 0;
      
      private var var_1501:int = 1000;
      
      private var var_1223:int = 0;
      
      private var var_1502:int = 60;
      
      private var var_1505:int = 0;
      
      private var var_1504:int = 10;
      
      private var var_1226:int = 0;
      
      private var var_2070:Number = 0.15;
      
      private var var_2067:Boolean = true;
      
      private var var_2069:Number = 0;
      
      public function PerformanceTracker()
      {
         this.var_2623 = [];
         super();
         this.var_1506 = Capabilities.version;
         this.var_2068 = Capabilities.os;
         this.var_1612 = Capabilities.isDebugger;
         this.var_1225 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         if(this.var_1225 == null)
         {
            this.var_1225 = "unknown";
         }
         this.var_1503 = new GarbageMonitor();
         this.updateGarbageMonitor();
         this.var_1505 = getTimer();
      }
      
      public function get flashVersion() : String
      {
         return this.var_1506;
      }
      
      public function get averageUpdateInterval() : int
      {
         return this.var_433;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         this.var_1501 = param1;
      }
      
      public function set reportInterval(param1:int) : void
      {
         this.var_1502 = param1;
      }
      
      public function set reportLimit(param1:int) : void
      {
         this.var_1504 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_153 = param1;
         this.var_1502 = int(this.var_153.getKey("performancetest.interval","60"));
         this.var_1501 = int(this.var_153.getKey("performancetest.slowupdatelimit","1000"));
         this.var_1504 = int(this.var_153.getKey("performancetest.reportlimit","10"));
         this.var_2070 = Number(this.var_153.getKey("performancetest.distribution.deviancelimit.percent","10"));
         this.var_2067 = Boolean(int(this.var_153.getKey("performancetest.distribution.enabled","1")));
      }
      
      public function dispose() : void
      {
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_1503.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            this.var_1503.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = this.updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++this.var_1224;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > this.var_1501)
         {
            ++this.var_1223;
            _loc3_ = true;
         }
         else
         {
            ++this.var_510;
            if(this.var_510 <= 1)
            {
               this.var_433 = param1;
            }
            else
            {
               _loc4_ = Number(this.var_510);
               this.var_433 = this.var_433 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - this.var_1505 > this.var_1502 * 1000 && this.var_1226 < this.var_1504)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / this.var_433);
            _loc5_ = true;
            if(this.var_2067 && this.var_1226 > 0)
            {
               _loc6_ = this.differenceInPercents(this.var_2069,this.var_433);
               if(_loc6_ < this.var_2070)
               {
                  _loc5_ = false;
               }
            }
            this.var_1505 = getTimer();
            if(_loc5_ || _loc3_)
            {
               this.var_2069 = this.var_433;
               if(this.sendReport())
               {
                  ++this.var_1226;
               }
            }
         }
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(this._connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,this.var_1225,this.var_1506,this.var_2068,this.var_2261,this.var_1612,_loc4_,_loc3_,this.var_1224,this.var_433,this.var_1223);
            this._connection.send(_loc1_);
            this.var_1224 = 0;
            this.var_433 = 0;
            this.var_510 = 0;
            this.var_1223 = 0;
            return true;
         }
         return false;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
   }
}
