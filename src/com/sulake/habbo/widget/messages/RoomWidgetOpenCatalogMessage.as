package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_688:String = "RWGOI_MESSAGE_OPEN_CATALOG";
      
      public static const const_996:String = "RWOCM_CLUB_MAIN";
       
      
      private var var_2318:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_688);
         this.var_2318 = param1;
      }
      
      public function get pageKey() : String
      {
         return this.var_2318;
      }
   }
}
