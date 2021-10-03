package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_177;
         param1["bound_to_parent_rect"] = const_92;
         param1["child_window"] = const_1063;
         param1["embedded_controller"] = const_925;
         param1["resize_to_accommodate_children"] = const_62;
         param1["input_event_processor"] = const_28;
         param1["internal_event_handling"] = const_662;
         param1["mouse_dragging_target"] = const_224;
         param1["mouse_dragging_trigger"] = const_321;
         param1["mouse_scaling_target"] = const_274;
         param1["mouse_scaling_trigger"] = const_501;
         param1["horizontal_mouse_scaling_trigger"] = const_237;
         param1["vertical_mouse_scaling_trigger"] = const_256;
         param1["observe_parent_input_events"] = const_991;
         param1["optimize_region_to_layout_size"] = const_413;
         param1["parent_window"] = const_1107;
         param1["relative_horizontal_scale_center"] = const_183;
         param1["relative_horizontal_scale_fixed"] = const_130;
         param1["relative_horizontal_scale_move"] = const_326;
         param1["relative_horizontal_scale_strech"] = WINDOW_PARAM_RELATIVE_HORIZONTAL_SCALE_STRECH;
         param1["relative_scale_center"] = const_912;
         param1["relative_scale_fixed"] = const_628;
         param1["relative_scale_move"] = const_1018;
         param1["relative_scale_strech"] = const_910;
         param1["relative_vertical_scale_center"] = const_173;
         param1["relative_vertical_scale_fixed"] = const_118;
         param1["relative_vertical_scale_move"] = const_344;
         param1["relative_vertical_scale_strech"] = const_379;
         param1["on_resize_align_left"] = const_634;
         param1["on_resize_align_right"] = const_535;
         param1["on_resize_align_center"] = const_445;
         param1["on_resize_align_top"] = const_578;
         param1["on_resize_align_bottom"] = const_536;
         param1["on_resize_align_middle"] = const_470;
         param1["on_accommodate_align_left"] = const_1037;
         param1["on_accommodate_align_right"] = const_537;
         param1["on_accommodate_align_center"] = const_747;
         param1["on_accommodate_align_top"] = const_1067;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_595;
         param1["route_input_events_to_parent"] = const_402;
         param1["use_parent_graphic_context"] = const_31;
         param1["draggable_with_mouse"] = const_1092;
         param1["scalable_with_mouse"] = const_1030;
         param1["reflect_horizontal_resize_to_parent"] = const_497;
         param1["reflect_vertical_resize_to_parent"] = const_394;
         param1["reflect_resize_to_parent"] = const_277;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
