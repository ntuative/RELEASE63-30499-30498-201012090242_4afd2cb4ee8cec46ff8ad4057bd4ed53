package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1956:String;
      
      private var var_2533:Array;
      
      private var var_2532:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_1956 = param1;
         this.var_2533 = param2;
         this.var_2532 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_1956;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2533;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2532;
      }
   }
}
