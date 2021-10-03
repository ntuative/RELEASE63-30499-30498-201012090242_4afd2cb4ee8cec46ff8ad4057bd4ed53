package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_635;
         param1["bitmap"] = const_580;
         param1["border"] = const_621;
         param1["border_notify"] = const_1329;
         param1["button"] = const_502;
         param1["button_thick"] = const_682;
         param1["button_icon"] = const_1421;
         param1["button_group_left"] = const_683;
         param1["button_group_center"] = const_803;
         param1["button_group_right"] = const_567;
         param1["canvas"] = const_646;
         param1["checkbox"] = const_785;
         param1["closebutton"] = const_1097;
         param1["container"] = const_324;
         param1["container_button"] = const_661;
         param1["display_object_wrapper"] = const_818;
         param1["dropmenu"] = const_513;
         param1["dropmenu_item"] = const_457;
         param1["frame"] = const_341;
         param1["frame_notify"] = const_1272;
         param1["header"] = const_678;
         param1["icon"] = const_1087;
         param1["itemgrid"] = const_998;
         param1["itemgrid_horizontal"] = const_440;
         param1["itemgrid_vertical"] = const_726;
         param1["itemlist"] = const_1017;
         param1["itemlist_horizontal"] = const_369;
         param1["itemlist_vertical"] = const_336;
         param1["maximizebox"] = WINDOW_TYPE_MAXIMIZEBOX;
         param1["menu"] = const_1398;
         param1["menu_item"] = const_1271;
         param1["submenu"] = const_1005;
         param1["minimizebox"] = const_1448;
         param1["notify"] = const_1337;
         param1["null"] = const_675;
         param1["password"] = const_615;
         param1["radiobutton"] = const_777;
         param1["region"] = const_591;
         param1["restorebox"] = const_1289;
         param1["scaler"] = const_660;
         param1["scaler_horizontal"] = const_1326;
         param1["scaler_vertical"] = const_1287;
         param1["scrollbar_horizontal"] = const_408;
         param1["scrollbar_vertical"] = const_765;
         param1["scrollbar_slider_button_up"] = const_937;
         param1["scrollbar_slider_button_down"] = const_1003;
         param1["scrollbar_slider_button_left"] = const_1069;
         param1["scrollbar_slider_button_right"] = const_1078;
         param1["scrollbar_slider_bar_horizontal"] = const_908;
         param1["scrollbar_slider_bar_vertical"] = const_923;
         param1["scrollbar_slider_track_horizontal"] = const_951;
         param1["scrollbar_slider_track_vertical"] = const_1058;
         param1["scrollable_itemlist"] = const_1486;
         param1["scrollable_itemlist_vertical"] = const_448;
         param1["scrollable_itemlist_horizontal"] = const_1053;
         param1["selector"] = const_606;
         param1["selector_list"] = const_571;
         param1["submenu"] = const_1005;
         param1["tab_button"] = const_769;
         param1["tab_container_button"] = const_994;
         param1["tab_context"] = const_375;
         param1["tab_content"] = const_922;
         param1["tab_selector"] = const_725;
         param1["text"] = const_586;
         param1["input"] = const_702;
         param1["toolbar"] = const_1431;
         param1["tooltip"] = const_350;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
