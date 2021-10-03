package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_1980:int;
      
      private var var_1981:int;
      
      private var var_1979:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_1980 = param1;
         this.var_1981 = param2;
         this.var_1979 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1980,this.var_1981,this.var_1979];
      }
      
      public function dispose() : void
      {
      }
   }
}
