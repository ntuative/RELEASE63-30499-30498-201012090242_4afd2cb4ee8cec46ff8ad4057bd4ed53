package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1970:int;
      
      private var var_1972:int;
      
      private var var_1969:String;
      
      private var var_1971:String;
      
      private var var_1973:int = 0;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this.var_1970 = param1;
         this.var_1972 = param2;
         this.var_1969 = param3;
         this.var_1971 = param4;
      }
      
      public function get id() : int
      {
         return this.var_1970;
      }
      
      public function get length() : int
      {
         return this.var_1972;
      }
      
      public function get name() : String
      {
         return this.var_1969;
      }
      
      public function get creator() : String
      {
         return this.var_1971;
      }
      
      public function get startPlayHeadPos() : int
      {
         return this.var_1973;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         this.var_1973 = param1;
      }
   }
}
