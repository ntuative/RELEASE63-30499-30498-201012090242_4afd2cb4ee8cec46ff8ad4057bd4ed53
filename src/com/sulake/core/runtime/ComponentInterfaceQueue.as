package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1635:IID;
      
      private var var_621:Boolean;
      
      private var var_1050:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         this.var_1635 = param1;
         this.var_1050 = new Array();
         this.var_621 = false;
      }
      
      public function get identifier() : IID
      {
         return this.var_1635;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_621;
      }
      
      public function get receivers() : Array
      {
         return this.var_1050;
      }
      
      public function dispose() : void
      {
         if(!this.var_621)
         {
            this.var_621 = true;
            this.var_1635 = null;
            while(this.var_1050.length > 0)
            {
               this.var_1050.pop();
            }
            this.var_1050 = null;
         }
      }
   }
}
