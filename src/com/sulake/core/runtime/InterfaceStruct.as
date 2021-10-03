package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1291:IID;
      
      private var var_1604:String;
      
      private var var_113:IUnknown;
      
      private var var_672:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1291 = param1;
         this.var_1604 = getQualifiedClassName(this.var_1291);
         this.var_113 = param2;
         this.var_672 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1291;
      }
      
      public function get iis() : String
      {
         return this.var_1604;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_113;
      }
      
      public function get references() : uint
      {
         return this.var_672;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_113 == null;
      }
      
      public function dispose() : void
      {
         this.var_1291 = null;
         this.var_1604 = null;
         this.var_113 = null;
         this.var_672 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_672;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_672) : uint(0);
      }
   }
}
