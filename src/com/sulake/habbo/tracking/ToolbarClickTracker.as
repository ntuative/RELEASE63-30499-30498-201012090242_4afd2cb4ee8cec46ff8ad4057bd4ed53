package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1170:IHabboTracking;
      
      private var var_1528:Boolean = false;
      
      private var var_2019:int = 0;
      
      private var var_1472:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1170 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1170 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_1528 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2019 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_1528)
         {
            return;
         }
         ++this.var_1472;
         if(this.var_1472 <= this.var_2019)
         {
            this.var_1170.track("toolbar",param1);
         }
      }
   }
}
