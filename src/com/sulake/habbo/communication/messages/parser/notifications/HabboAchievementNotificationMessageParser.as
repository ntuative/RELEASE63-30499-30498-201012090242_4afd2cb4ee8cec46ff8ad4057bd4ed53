package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1513:int;
      
      private var var_1551:int;
      
      private var var_1882:int;
      
      private var var_1512:int;
      
      private var var_1227:int;
      
      private var var_2225:String = "";
      
      private var var_2455:String = "";
      
      private var var_2454:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1513 = param1.readInteger();
         this.var_2225 = param1.readString();
         this.var_1551 = param1.readInteger();
         this.var_1882 = param1.readInteger();
         this.var_1512 = param1.readInteger();
         this.var_1227 = param1.readInteger();
         this.var_2454 = param1.readInteger();
         this.var_2455 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1513;
      }
      
      public function get points() : int
      {
         return this.var_1551;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_1882;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1512;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1227;
      }
      
      public function get badgeID() : String
      {
         return this.var_2225;
      }
      
      public function get achievementID() : int
      {
         return this.var_2454;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2455;
      }
   }
}
