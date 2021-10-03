package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_749:String = "RWUAM_WHISPER_USER";
      
      public static const const_670:String = "RWUAM_IGNORE_USER";
      
      public static const const_743:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_505:String = "RWUAM_KICK_USER";
      
      public static const const_617:String = "RWUAM_BAN_USER";
      
      public static const const_698:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_620:String = "RWUAM_RESPECT_USER";
      
      public static const const_673:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_671:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_734:String = "RWUAM_START_TRADING";
      
      public static const const_590:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_524:String = "RWUAM_KICK_BOT";
      
      public static const const_568:String = "RWUAM_REPORT";
      
      public static const const_486:String = "RWUAM_PICKUP_PET";
      
      public static const const_1432:String = "RWUAM_TRAIN_PET";
      
      public static const const_443:String = " RWUAM_RESPECT_PET";
      
      public static const const_376:String = "RWUAM_REQUEST_PET_UPDATE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
