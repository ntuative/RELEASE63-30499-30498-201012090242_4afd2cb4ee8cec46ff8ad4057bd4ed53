package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2258:int = 0;
      
      private var var_1225:String = "";
      
      private var var_1506:String = "";
      
      private var var_2068:String = "";
      
      private var var_2261:String = "";
      
      private var var_1612:int = 0;
      
      private var var_2257:int = 0;
      
      private var var_2259:int = 0;
      
      private var var_1224:int = 0;
      
      private var var_2260:int = 0;
      
      private var var_1223:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2258 = param1;
         this.var_1225 = param2;
         this.var_1506 = param3;
         this.var_2068 = param4;
         this.var_2261 = param5;
         if(param6)
         {
            this.var_1612 = 1;
         }
         else
         {
            this.var_1612 = 0;
         }
         this.var_2257 = param7;
         this.var_2259 = param8;
         this.var_1224 = param9;
         this.var_2260 = param10;
         this.var_1223 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2258,this.var_1225,this.var_1506,this.var_2068,this.var_2261,this.var_1612,this.var_2257,this.var_2259,this.var_1224,this.var_2260,this.var_1223];
      }
   }
}
