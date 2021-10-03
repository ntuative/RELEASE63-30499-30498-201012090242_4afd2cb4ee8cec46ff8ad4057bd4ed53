package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2643:uint;
      
      private var var_128:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_218:IWindowContext;
      
      private var var_1097:IMouseDraggingService;
      
      private var var_1099:IMouseScalingService;
      
      private var var_1100:IMouseListenerService;
      
      private var var_1098:IFocusManagerService;
      
      private var var_1101:IToolTipAgentService;
      
      private var var_1096:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2643 = 0;
         this.var_128 = param2;
         this.var_218 = param1;
         this.var_1097 = new WindowMouseDragger(param2);
         this.var_1099 = new WindowMouseScaler(param2);
         this.var_1100 = new WindowMouseListener(param2);
         this.var_1098 = new FocusManager(param2);
         this.var_1101 = new WindowToolTipAgent(param2);
         this.var_1096 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1097 != null)
         {
            this.var_1097.dispose();
            this.var_1097 = null;
         }
         if(this.var_1099 != null)
         {
            this.var_1099.dispose();
            this.var_1099 = null;
         }
         if(this.var_1100 != null)
         {
            this.var_1100.dispose();
            this.var_1100 = null;
         }
         if(this.var_1098 != null)
         {
            this.var_1098.dispose();
            this.var_1098 = null;
         }
         if(this.var_1101 != null)
         {
            this.var_1101.dispose();
            this.var_1101 = null;
         }
         if(this.var_1096 != null)
         {
            this.var_1096.dispose();
            this.var_1096 = null;
         }
         this.var_128 = null;
         this.var_218 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1097;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1099;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1100;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1098;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1101;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1096;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
