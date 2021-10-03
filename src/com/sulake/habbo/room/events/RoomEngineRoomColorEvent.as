package com.sulake.habbo.room.events
{
   public class RoomEngineRoomColorEvent extends RoomEngineEvent
   {
      
      public static const const_739:String = "REE_ROOM_COLOR";
       
      
      private var _color:uint;
      
      private var var_2290:uint;
      
      private var var_2291:Boolean;
      
      public function RoomEngineRoomColorEvent(param1:int, param2:int, param3:uint, param4:uint, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_739,param1,param2,param6,param7);
         this._color = param3;
         this.var_2290 = param4;
         this.var_2291 = param5;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : uint
      {
         return this.var_2290;
      }
      
      public function get bgOnly() : Boolean
      {
         return this.var_2291;
      }
   }
}
