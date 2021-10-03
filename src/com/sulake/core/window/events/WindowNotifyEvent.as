package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1269:String = "WN_CRETAE";
      
      public static const const_1457:String = "WN_CREATED";
      
      public static const const_894:String = "WN_DESTROY";
      
      public static const const_939:String = "WN_DESTROYED";
      
      public static const const_900:String = "WN_OPEN";
      
      public static const const_903:String = "WN_OPENED";
      
      public static const const_1032:String = "WN_CLOSE";
      
      public static const const_1055:String = "WN_CLOSED";
      
      public static const const_1052:String = "WN_FOCUS";
      
      public static const const_974:String = "WN_FOCUSED";
      
      public static const const_975:String = "WN_UNFOCUS";
      
      public static const const_992:String = "WN_UNFOCUSED";
      
      public static const const_1007:String = "WN_ACTIVATE";
      
      public static const const_332:String = "WN_ACTVATED";
      
      public static const const_1054:String = "WN_DEACTIVATE";
      
      public static const const_1040:String = "WN_DEACTIVATED";
      
      public static const const_515:String = "WN_SELECT";
      
      public static const const_358:String = "WN_SELECTED";
      
      public static const const_764:String = "WN_UNSELECT";
      
      public static const const_644:String = "WN_UNSELECTED";
      
      public static const const_1002:String = "WN_LOCK";
      
      public static const const_1091:String = "WN_LOCKED";
      
      public static const const_983:String = "WN_UNLOCK";
      
      public static const const_1008:String = "WN_UNLOCKED";
      
      public static const const_924:String = "WN_ENABLE";
      
      public static const const_677:String = "WN_ENABLED";
      
      public static const const_1076:String = "WN_DISABLE";
      
      public static const const_589:String = "WN_DISABLED";
      
      public static const const_565:String = "WN_RESIZE";
      
      public static const const_186:String = "WN_RESIZED";
      
      public static const const_1009:String = "WN_RELOCATE";
      
      public static const const_422:String = "WN_RELOCATED";
      
      public static const const_988:String = "WN_MINIMIZE";
      
      public static const const_1066:String = "WN_MINIMIZED";
      
      public static const const_915:String = "WN_MAXIMIZE";
      
      public static const const_1045:String = "WN_MAXIMIZED";
      
      public static const const_1108:String = "WN_RESTORE";
      
      public static const const_905:String = "WN_RESTORED";
      
      public static const const_1695:String = "WN_ARRANGE";
      
      public static const const_1772:String = "WN_ARRANGED";
      
      public static const const_1702:String = "WN_UPDATE";
      
      public static const const_1751:String = "WN_UPDATED";
      
      public static const const_327:String = "WN_CHILD_ADDED";
      
      public static const const_762:String = "WN_CHILD_REMOVED";
      
      public static const WINDOW_NOTIFY_CHILD_RESIZED:String = "WN_CHILD_RESIZED";
      
      public static const const_296:String = "WN_CHILD_RELOCATED";
      
      public static const const_217:String = "WN_CHILD_ACTIVATED";
      
      public static const const_403:String = "WN_PARENT_ADDED";
      
      public static const const_1115:String = "WN_PARENT_REMOVED";
      
      public static const const_523:String = "WN_PARENT_RESIZED";
      
      public static const const_1057:String = "WN_PARENT_RELOCATED";
      
      public static const const_753:String = "WN_PARENT_ACTIVATED";
      
      public static const const_431:String = "WN_STATE_UPDATED";
      
      public static const const_468:String = "WN_STYLE_UPDATED";
      
      public static const const_477:String = "WN_PARAM_UPDATED";
      
      public static const const_1649:String = "";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1880,cancelable);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
   }
}
