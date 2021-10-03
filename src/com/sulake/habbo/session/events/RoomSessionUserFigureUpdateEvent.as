package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserFigureUpdateEvent extends RoomSessionEvent
   {
      
      public static const const_142:String = "RSUBE_FIGURE";
       
      
      private var _userId:int = 0;
      
      private var var_562:String = "";
      
      private var var_844:String = "";
      
      private var var_1581:String = "";
      
      private var var_1947:int;
      
      public function RoomSessionUserFigureUpdateEvent(param1:IRoomSession, param2:int, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Boolean = false)
      {
         super(const_142,param1,param7,param8);
         this._userId = param2;
         this.var_562 = param3;
         this.var_844 = param4;
         this.var_1581 = param5;
         this.var_1947 = param6;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get figure() : String
      {
         return this.var_562;
      }
      
      public function get gender() : String
      {
         return this.var_844;
      }
      
      public function get customInfo() : String
      {
         return this.var_1581;
      }
      
      public function get achievementScore() : int
      {
         return this.var_1947;
      }
   }
}
