package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_2665:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         var_130 = param1.desktop;
         var_77 = param1.var_1147 as WindowController;
         _lastClickTarget = param1.var_1146 as WindowController;
         var_141 = param1.renderer;
         var_752 = param1.var_1145;
         param2.begin();
         param2.end();
         param1.desktop = var_130;
         param1.var_1147 = var_77;
         param1.var_1146 = _lastClickTarget;
         param1.renderer = var_141;
         param1.var_1145 = var_752;
      }
   }
}
