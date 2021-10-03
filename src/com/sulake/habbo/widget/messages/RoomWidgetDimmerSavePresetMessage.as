package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_758:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_1922:int;
      
      private var var_1918:int;
      
      private var _color:uint;
      
      private var var_948:int;
      
      private var var_1982:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_758);
         this.var_1922 = param1;
         this.var_1918 = param2;
         this._color = param3;
         this.var_948 = param4;
         this.var_1982 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_1922;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_1918;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_948;
      }
      
      public function get apply() : Boolean
      {
         return this.var_1982;
      }
   }
}
