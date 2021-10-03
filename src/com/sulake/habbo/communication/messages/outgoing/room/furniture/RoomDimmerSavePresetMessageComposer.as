package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1922:int;
      
      private var var_1918:int;
      
      private var var_1921:String;
      
      private var var_1919:int;
      
      private var var_1920:Boolean;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         this._roomId = param6;
         this._roomCategory = param7;
         this.var_1922 = param1;
         this.var_1918 = param2;
         this.var_1921 = param3;
         this.var_1919 = param4;
         this.var_1920 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_1922,this.var_1918,this.var_1921,this.var_1919,int(this.var_1920)];
      }
      
      public function dispose() : void
      {
      }
   }
}
