package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1513:int;
      
      private var var_261:String;
      
      private var var_1883:int;
      
      private var var_1882:int;
      
      private var var_1512:int;
      
      private var var_1884:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1513 = param1.readInteger();
         this.var_261 = param1.readString();
         this.var_1883 = param1.readInteger();
         this.var_1882 = param1.readInteger();
         this.var_1512 = param1.readInteger();
         this.var_1884 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_261;
      }
      
      public function get level() : int
      {
         return this.var_1513;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_1883;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_1882;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1512;
      }
      
      public function get currentPoints() : int
      {
         return this.var_1884;
      }
   }
}
