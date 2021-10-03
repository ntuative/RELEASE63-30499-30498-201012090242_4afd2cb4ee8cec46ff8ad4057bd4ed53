package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_2616:int;
      
      private var var_295:RoomEventViewCtrl;
      
      private var var_221:Timer;
      
      private var var_152:RoomSettingsCtrl;
      
      private var var_219:RoomThumbnailCtrl;
      
      private var var_1089:TagRenderer;
      
      private var var_259:IWindowContainer;
      
      private var var_360:IWindowContainer;
      
      private var var_634:IWindowContainer;
      
      private var var_2004:IWindowContainer;
      
      private var var_2008:IWindowContainer;
      
      private var var_1210:IWindowContainer;
      
      private var var_898:ITextWindow;
      
      private var var_955:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_779:ITextWindow;
      
      private var var_1204:ITextWindow;
      
      private var var_958:ITextWindow;
      
      private var var_776:ITextWindow;
      
      private var var_1460:ITextWindow;
      
      private var var_220:IWindowContainer;
      
      private var var_778:IWindowContainer;
      
      private var var_1459:IWindowContainer;
      
      private var var_2007:ITextWindow;
      
      private var var_635:ITextWindow;
      
      private var var_2003:IWindow;
      
      private var var_1209:IContainerButtonWindow;
      
      private var var_1207:IContainerButtonWindow;
      
      private var var_1203:IContainerButtonWindow;
      
      private var var_1208:IContainerButtonWindow;
      
      private var var_1206:IContainerButtonWindow;
      
      private var var_1202:IContainerButtonWindow;
      
      private var var_1462:IButtonWindow;
      
      private var var_1461:IButtonWindow;
      
      private var var_1463:IButtonWindow;
      
      private var var_777:IWindowContainer;
      
      private var var_1205:ITextWindow;
      
      private var var_956:ITextFieldWindow;
      
      private var var_63:IWindowContainer;
      
      private var var_957:IButtonWindow;
      
      private var var_775:IButtonWindow;
      
      private var var_2005:String;
      
      private var var_2006:String;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_295 = new RoomEventViewCtrl(this._navigator);
         this.var_152 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_219 = new RoomThumbnailCtrl(this._navigator);
         this.var_1089 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_152);
         this.var_221 = new Timer(6000,1);
         this.var_221.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.removeEventListener(HabboToolbarSetIconEvent.const_100,this.onToolbarIconState);
         }
         if(this.var_221)
         {
            this.var_221.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_221.reset();
            this.var_221 = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_221.reset();
         this.var_295.active = true;
         this.var_152.active = false;
         this.var_219.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_221.reset();
         this.var_152.load(param1);
         this.var_152.active = true;
         this.var_295.active = false;
         this.var_219.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_152.active = true;
         this.var_295.active = false;
         this.var_219.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_221.reset();
         this.var_152.active = false;
         this.var_295.active = false;
         this.var_219.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_1033,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_221.reset();
         this.var_295.active = false;
         this.var_152.active = false;
         this.var_219.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(this._navigator.data.enteredGuestRoom.flatId);
         }
         this.refresh();
         this._window.visible = true;
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_49,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         this._window.parent.activate();
         this._window.activate();
         if(!param1)
         {
            this.var_221.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_221.reset();
         this.var_295.active = false;
         this.var_152.active = false;
         this.var_219.active = false;
         this.refresh();
         if(!this._window.visible)
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_49,HabboToolbarIconEnum.ROOMINFO,this._window,false));
            this._window.parent.activate();
         }
         else
         {
            this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_428,HabboToolbarIconEnum.ROOMINFO,this._window,false));
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info","buttons_container"],0,2);
         this._window.height = Util.getLowestPoint(this._window);
         this._window.y = this._window.desktop.height - this._window.height - 5;
         Logger.log("MAIN: " + this.var_259.rectangle + ", " + this.var_220.rectangle + ", " + this._window.rectangle);
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_259);
         this.var_259.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_152.refresh(this.var_259);
         this.var_219.refresh(this.var_259);
         Util.moveChildrenToColumn(this.var_259,["room_details","room_buttons"],0,2);
         this.var_259.height = Util.getLowestPoint(this.var_259);
         this.var_259.visible = true;
         Logger.log("XORP: " + this.var_360.visible + ", " + this.var_1210.visible + ", " + this.var_634.visible + ", " + this.var_634.rectangle + ", " + this.var_259.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_220);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_295.refresh(this.var_220);
         if(Util.hasVisibleChildren(this.var_220) && !(this.var_152.active || this.var_219.active))
         {
            Util.moveChildrenToColumn(this.var_220,["event_details","event_buttons"],0,2);
            this.var_220.height = Util.getLowestPoint(this.var_220);
            this.var_220.visible = true;
         }
         else
         {
            this.var_220.visible = false;
         }
         Logger.log("EVENT: " + this.var_220.visible + ", " + this.var_220.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_152.active && !this.var_219.active && !this.var_295.active)
         {
            this.var_777.visible = true;
            this.var_956.text = this.getEmbedData();
         }
         else
         {
            this.var_777.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this.var_63)
         {
            return;
         }
         if(this.var_152.active)
         {
            this.var_63.visible = false;
            return;
         }
         this.var_63.visible = true;
         if(this.var_957)
         {
            if(this.var_2005 == "exit_homeroom")
            {
               this.var_957.caption = "${navigator.homeroom}";
            }
            else
            {
               this.var_957.caption = "${navigator.hotelview}";
            }
         }
         if(this.var_775)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_775.visible = _loc1_;
            if(this.var_2006 == "0")
            {
               this.var_775.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_775.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_152.active || this.var_219.active)
         {
            return;
         }
         this.var_898.text = param1.roomName;
         this.var_898.height = this.var_898.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_779.text = param1.description;
         this.var_1089.refreshTags(this.var_360,param1.tags);
         this.var_779.visible = false;
         if(param1.description != "")
         {
            this.var_779.height = this.var_779.textHeight + 5;
            this.var_779.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1207,"facebook_logo_small",_loc3_,null,0);
         this.var_1207.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1209,"thumb_up",_loc4_,null,0);
         this.var_1209.visible = _loc4_;
         this.var_776.visible = !_loc4_;
         this.var_1460.visible = !_loc4_;
         this.var_1460.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_360,"home",param2,null,0);
         this._navigator.refreshButton(this.var_360,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_360,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_898.y,0);
         this.var_360.visible = true;
         this.var_360.height = Util.getLowestPoint(this.var_360);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_360.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_152.active || this.var_219.active)
         {
            return;
         }
         this.var_955.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_955.height = this.var_955.textHeight + 5;
         this.var_1204.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1204.height = this.var_1204.textHeight + 5;
         Util.moveChildrenToColumn(this.var_634,["public_space_name","public_space_desc"],this.var_955.y,0);
         this.var_634.visible = true;
         this.var_634.height = Math.max(86,Util.getLowestPoint(this.var_634));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_295.active)
         {
            return;
         }
         this.var_2007.text = param1.eventName;
         this.var_635.text = param1.eventDescription;
         this.var_1089.refreshTags(this.var_778,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_635.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_635.height = this.var_635.textHeight + 5;
            this.var_635.y = Util.getLowestPoint(this.var_778) + 2;
            this.var_635.visible = true;
         }
         this.var_778.visible = true;
         this.var_778.height = Util.getLowestPoint(this.var_778);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_152.active || this.var_219.active)
         {
            return;
         }
         this.var_1462.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1203.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this.var_1208.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1206.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1202.visible = this._navigator.data.canEditRoomSettings && param1;
         this.var_1210.visible = Util.hasVisibleChildren(this.var_1210);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_295.active)
         {
            return;
         }
         this.var_1461.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1463.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1459.visible = Util.hasVisibleChildren(this.var_1459);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details"));
         this._window.setParamFlag(HabboWindowParam.const_57,false);
         this._window.setParamFlag(HabboWindowParam.const_1288,true);
         this._window.visible = false;
         this.var_259 = IWindowContainer(this.find("room_info"));
         this.var_360 = IWindowContainer(this.find("room_details"));
         this.var_634 = IWindowContainer(this.find("public_space_details"));
         this.var_2004 = IWindowContainer(this.find("owner_name_cont"));
         this.var_2008 = IWindowContainer(this.find("rating_cont"));
         this.var_1210 = IWindowContainer(this.find("room_buttons"));
         this.var_898 = ITextWindow(this.find("room_name"));
         this.var_955 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_779 = ITextWindow(this.find("room_desc"));
         this.var_1204 = ITextWindow(this.find("public_space_desc"));
         this.var_958 = ITextWindow(this.find("owner_caption"));
         this.var_776 = ITextWindow(this.find("rating_caption"));
         this.var_1460 = ITextWindow(this.find("rating_txt"));
         this.var_220 = IWindowContainer(this.find("event_info"));
         this.var_778 = IWindowContainer(this.find("event_details"));
         this.var_1459 = IWindowContainer(this.find("event_buttons"));
         this.var_2007 = ITextWindow(this.find("event_name"));
         this.var_635 = ITextWindow(this.find("event_desc"));
         this.var_1207 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1209 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_2003 = this.find("staff_pick_button");
         this.var_1203 = IContainerButtonWindow(this.find("add_favourite_button"));
         this.var_1208 = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1206 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1202 = IContainerButtonWindow(this.find("unmake_home_button"));
         this.var_1462 = IButtonWindow(this.find("room_settings_button"));
         this.var_1461 = IButtonWindow(this.find("create_event_button"));
         this.var_1463 = IButtonWindow(this.find("edit_event_button"));
         this.var_777 = IWindowContainer(this.find("embed_info"));
         this.var_1205 = ITextWindow(this.find("embed_info_txt"));
         this.var_956 = ITextFieldWindow(this.find("embed_src_txt"));
         this.var_63 = IWindowContainer(this.find("buttons_container"));
         this.var_957 = IButtonWindow(this.find("exit_room_button"));
         this.var_775 = IButtonWindow(this.find("zoom_button"));
         Util.setProcDirectly(this.var_1203,this.onAddFavouriteClick);
         Util.setProcDirectly(this.var_1208,this.onRemoveFavouriteClick);
         Util.setProcDirectly(this.var_1462,this.onRoomSettingsClick);
         Util.setProcDirectly(this.var_1206,this.onMakeHomeClick);
         Util.setProcDirectly(this.var_1202,this.onUnmakeHomeClick);
         Util.setProcDirectly(this.var_1461,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_1463,this.onEventSettingsClick);
         Util.setProcDirectly(this.var_956,this.onEmbedSrcClick);
         Util.setProcDirectly(this.var_1209,this.onThumbUp);
         Util.setProcDirectly(this.var_2003,this.onStaffPick);
         Util.setProcDirectly(this.var_1207,this.onFacebookLike);
         Util.setProcDirectly(this.var_775,this.onZoomClick);
         Util.setProcDirectly(this.var_957,this.onExitRoomClick);
         this._navigator.refreshButton(this.var_1203,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1208,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1206,"home",true,null,0);
         this._navigator.refreshButton(this.var_1202,"home",true,null,0);
         this._window.findChildByName("close").procedure = this.onCloseButtonClick;
         Util.setProcDirectly(this.var_259,this.onHover);
         Util.setProcDirectly(this.var_220,this.onHover);
         this.var_958.width = this.var_958.textWidth;
         Util.moveChildrenToRow(this.var_2004,["owner_caption","owner_name"],this.var_958.x,this.var_958.y,3);
         this.var_776.width = this.var_776.textWidth;
         Util.moveChildrenToRow(this.var_2008,["rating_caption","rating_txt"],this.var_776.x,this.var_776.y,3);
         this.var_1205.height = this.var_1205.textHeight + 5;
         Util.moveChildrenToColumn(this.var_777,["embed_info_txt","embed_src_txt"],this.var_1205.y,2);
         this.var_777.height = Util.getLowestPoint(this.var_777) + 5;
         this.var_2616 = this._window.y + this._window.height;
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!this._navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this._navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function onFacebookLike(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         this.var_956.setSelection(0,this.var_956.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_39);
         _loc3_.iconId = HabboToolbarIconEnum.ZOOM;
         _loc3_.iconName = "ZOOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onExitRoomClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:HabboToolbarEvent = new HabboToolbarEvent(HabboToolbarEvent.const_39);
         _loc3_.iconId = HabboToolbarIconEnum.EXITROOM;
         _loc3_.iconName = "EXITROOM";
         this._navigator.toolbar.events.dispatchEvent(_loc3_);
      }
      
      private function onToolbarIconState(param1:HabboToolbarSetIconEvent) : void
      {
         if(param1.type != HabboToolbarSetIconEvent.const_100)
         {
            return;
         }
         switch(param1.iconId)
         {
            case HabboToolbarIconEnum.ZOOM:
               this.var_2006 = param1.iconState;
               this.refreshButtons();
               break;
            case HabboToolbarIconEnum.EXITROOM:
               this.var_2005 = param1.iconState;
               this.refreshButtons();
         }
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         this.var_221.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_428,HabboToolbarIconEnum.ROOMINFO,this._window,false));
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
      
      public function registerToolbarEvents() : void
      {
         if(this._navigator.toolbar)
         {
            this._navigator.toolbar.events.addEventListener(HabboToolbarSetIconEvent.const_100,this.onToolbarIconState);
         }
      }
   }
}
