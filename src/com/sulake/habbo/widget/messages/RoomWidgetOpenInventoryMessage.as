package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_672:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1106:String = "inventory_effects";
      
      public static const const_1019:String = "inventory_badges";
      
      public static const const_1458:String = "inventory_clothes";
      
      public static const const_1478:String = "inventory_furniture";
       
      
      private var var_2513:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_672);
         this.var_2513 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2513;
      }
   }
}
