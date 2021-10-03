package com.sulake.habbo.widget.chatinput
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.exceptions.CrashMeError;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetChatInputContentUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetChatInputDisplayEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFloodControlEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomViewUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetChatInputWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetChatMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomChatInputWidget extends RoomWidgetBase
   {
       
      
      private var _visualization:RoomChatInputView;
      
      private var var_1453:String = "";
      
      private var var_629:int = 0;
      
      private var var_1198:Boolean = false;
      
      private var var_628:Timer = null;
      
      private var var_1992:Boolean = false;
      
      private var var_2615:Boolean = false;
      
      private var _component:Component = null;
      
      private var _disposed:Boolean = false;
      
      public function RoomChatInputWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:Component)
      {
         super(param1,param2,param3);
         this._component = param4;
      }
      
      public function get allowPaste() : Boolean
      {
         return this.var_1992;
      }
      
      public function get floodBlocked() : Boolean
      {
         return this.var_1198;
      }
      
      public function sendChat(param1:String, param2:int, param3:String = "") : void
      {
         if(this.var_1198)
         {
            return;
         }
         var _loc4_:RoomWidgetChatMessage = new RoomWidgetChatMessage(RoomWidgetChatMessage.const_674,param1,param2,param3);
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc4_);
         }
      }
      
      override public function dispose() : void
      {
         if(this._visualization != null)
         {
            this._visualization.dispose();
            this._visualization = null;
         }
         this._disposed = true;
         super.dispose();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_364,this.onRoomObjectSelected);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_216,this.onRoomObjectDeselected);
         param1.addEventListener(RoomWidgetRoomViewUpdateEvent.const_294,this.onRoomViewUpdate);
         param1.addEventListener(RoomWidgetChatInputContentUpdateEvent.const_806,this.onChatInputUpdate);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_205,this.onUserInfo);
         param1.addEventListener(RoomWidgetChatInputDisplayEvent.const_652,this.onSettings);
         param1.addEventListener(RoomWidgetFloodControlEvent.const_603,this.onFloodControl);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_364,this.onRoomObjectSelected);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_216,this.onRoomObjectDeselected);
         param1.removeEventListener(RoomWidgetRoomViewUpdateEvent.const_294,this.onRoomViewUpdate);
         param1.removeEventListener(RoomWidgetChatInputContentUpdateEvent.const_806,this.onChatInputUpdate);
         param1.removeEventListener(RoomWidgetChatInputDisplayEvent.const_652,this.onSettings);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_205,this.onUserInfo);
         param1.removeEventListener(RoomWidgetFloodControlEvent.const_603,this.onFloodControl);
      }
      
      private function onRoomViewUpdate(param1:RoomWidgetRoomViewUpdateEvent) : void
      {
         if(this._visualization == null)
         {
            this._visualization = new RoomChatInputView(this,windowManager,assets,localizations);
         }
         this.refreshWindowPosition();
      }
      
      private function onRoomObjectSelected(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:RoomWidgetRoomObjectMessage = new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_346,param1.id,param1.category);
      }
      
      private function onRoomObjectDeselected(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         this.var_1453 = "";
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         this.var_1453 = param1.name;
      }
      
      private function onChatInputUpdate(param1:RoomWidgetChatInputContentUpdateEvent) : void
      {
         var _loc2_:String = "";
         switch(param1.messageType)
         {
            case RoomWidgetChatInputContentUpdateEvent.const_1004:
               _loc2_ = localizations.getKey("widgets.chatinput.mode.whisper",":tell");
               this._visualization.displaySpecialChatMessage(_loc2_,param1.userName);
               break;
            case RoomWidgetChatInputContentUpdateEvent.const_1513:
         }
      }
      
      private function onSettings(param1:RoomWidgetChatInputDisplayEvent) : void
      {
         this.var_1992 = param1.allowPaste;
      }
      
      private function refreshWindowPosition() : void
      {
         if(this._visualization == null)
         {
            return;
         }
         var _loc1_:RoomWidgetChatInputWidgetMessage = new RoomWidgetChatInputWidgetMessage(RoomWidgetChatInputWidgetMessage.const_814,this._visualization.window);
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
      }
      
      private function onReleaseTimerComplete(param1:TimerEvent) : void
      {
         Logger.log("Releasing flood blocking");
         this.var_1198 = false;
         if(this._visualization != null)
         {
            this._visualization.hideFloodBlocking();
         }
         this.var_628 = null;
      }
      
      private function onReleaseTimerTick(param1:TimerEvent) : void
      {
         if(this._visualization != null)
         {
            this.var_629 = this.var_629 - 1;
            this._visualization.showFloodBlocking(this.var_629);
         }
      }
      
      public function get selectedUserName() : String
      {
         return this.var_1453;
      }
      
      public function triggerManualCrash() : void
      {
         this.var_2615 = true;
         throw new CrashMeError();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function onFloodControl(param1:RoomWidgetFloodControlEvent) : void
      {
         this.var_1198 = true;
         this.var_629 = param1.seconds;
         Logger.log("Enabling flood blocking for " + this.var_629 + " seconds");
         if(this.var_628)
         {
            this.var_628.reset();
         }
         else
         {
            this.var_628 = new Timer(1000,this.var_629);
            this.var_628.addEventListener(TimerEvent.TIMER,this.onReleaseTimerTick);
            this.var_628.addEventListener(TimerEvent.TIMER_COMPLETE,this.onReleaseTimerComplete);
         }
         this.var_628.start();
         if(this._visualization != null)
         {
            this._visualization.showFloodBlocking(this.var_629);
         }
      }
   }
}
