package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_1481:String = "WE_CREATE";
      
      public static const const_1274:String = "WE_CREATED";
      
      public static const const_1335:String = "WE_DESTROY";
      
      public static const const_290:String = "WE_DESTROYED";
      
      public static const const_1501:String = "WE_OPEN";
      
      public static const const_1467:String = "WE_OPENED";
      
      public static const const_1497:String = "WE_CLOSE";
      
      public static const const_1403:String = "WE_CLOSED";
      
      public static const const_1452:String = "WE_FOCUS";
      
      public static const const_165:String = "WE_FOCUSED";
      
      public static const const_1381:String = "WE_UNFOCUS";
      
      public static const const_1316:String = "WE_UNFOCUSED";
      
      public static const const_1344:String = "WE_ACTIVATE";
      
      public static const const_1437:String = "WE_ACTIVATED";
      
      public static const const_1318:String = "WE_DEACTIVATE";
      
      public static const const_1061:String = "WE_DEACTIVATED";
      
      public static const const_414:String = "WE_SELECT";
      
      public static const const_58:String = "WE_SELECTED";
      
      public static const const_593:String = "WE_UNSELECT";
      
      public static const const_640:String = "WE_UNSELECTED";
      
      public static const const_1611:String = "WE_ATTACH";
      
      public static const const_1578:String = "WE_ATTACHED";
      
      public static const const_1637:String = "WE_DETACH";
      
      public static const const_1799:String = "WE_DETACHED";
      
      public static const const_1268:String = "WE_LOCK";
      
      public static const const_1328:String = "WE_LOCKED";
      
      public static const const_1490:String = "WE_UNLOCK";
      
      public static const const_1348:String = "WE_UNLOCKED";
      
      public static const const_633:String = "WE_ENABLE";
      
      public static const const_298:String = "WE_ENABLED";
      
      public static const const_657:String = "WE_DISABLE";
      
      public static const const_228:String = "WE_DISABLED";
      
      public static const const_1474:String = "WE_RELOCATE";
      
      public static const const_371:String = "WE_RELOCATED";
      
      public static const const_1252:String = "WE_RESIZE";
      
      public static const const_44:String = "WE_RESIZED";
      
      public static const const_1438:String = "WE_MINIMIZE";
      
      public static const const_1368:String = "WE_MINIMIZED";
      
      public static const const_1276:String = "WE_MAXIMIZE";
      
      public static const const_1439:String = "WE_MAXIMIZED";
      
      public static const const_1350:String = "WE_RESTORE";
      
      public static const const_1442:String = "WE_RESTORED";
      
      public static const const_1762:String = "WE_ARRANGE";
      
      public static const const_1596:String = "WE_ARRANGED";
      
      public static const const_95:String = "WE_UPDATE";
      
      public static const const_1643:String = "WE_UPDATED";
      
      public static const const_1657:String = "WE_CHILD_RELOCATE";
      
      public static const const_436:String = "WE_CHILD_RELOCATED";
      
      public static const const_1782:String = "WE_CHILD_RESIZE";
      
      public static const const_265:String = "WE_CHILD_RESIZED";
      
      public static const const_1605:String = "WE_CHILD_REMOVE";
      
      public static const const_498:String = "WE_CHILD_REMOVED";
      
      public static const const_1779:String = "WE_PARENT_RELOCATE";
      
      public static const const_1607:String = "WE_PARENT_RELOCATED";
      
      public static const const_1746:String = "WE_PARENT_RESIZE";
      
      public static const const_1400:String = "WE_PARENT_RESIZED";
      
      public static const const_166:String = "WE_OK";
      
      public static const const_592:String = "WE_CANCEL";
      
      public static const const_109:String = "WE_CHANGE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_462:String = "WE_SCROLL";
      
      public static const const_155:String = "";
       
      
      protected var _type:String = "";
      
      protected var _window:IWindow;
      
      protected var var_1880:IWindow;
      
      protected var var_1879:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         this._type = param1;
         this._window = param2;
         this.var_1880 = param3;
         this.var_1879 = false;
         super(param1,param4,param5);
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      override public function get type() : String
      {
         return this._type;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_1880;
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(this._type,this.window,this.related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            this.var_1879 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1879;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
   }
}
