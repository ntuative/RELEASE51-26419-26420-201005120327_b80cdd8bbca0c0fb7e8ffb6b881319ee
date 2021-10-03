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
         param1["null"] = const_136;
         param1["bound_to_parent_rect"] = const_90;
         param1["child_window"] = const_963;
         param1["embedded_controller"] = const_324;
         param1["resize_to_accommodate_children"] = const_65;
         param1["input_event_processor"] = const_52;
         param1["internal_event_handling"] = const_738;
         param1["mouse_dragging_target"] = const_222;
         param1["mouse_dragging_trigger"] = const_352;
         param1["mouse_scaling_target"] = const_260;
         param1["mouse_scaling_trigger"] = const_439;
         param1["horizontal_mouse_scaling_trigger"] = const_209;
         param1["vertical_mouse_scaling_trigger"] = const_225;
         param1["observe_parent_input_events"] = const_824;
         param1["optimize_region_to_layout_size"] = const_406;
         param1["parent_window"] = const_1019;
         param1["relative_horizontal_scale_center"] = const_161;
         param1["relative_horizontal_scale_fixed"] = const_121;
         param1["relative_horizontal_scale_move"] = const_297;
         param1["relative_horizontal_scale_strech"] = const_251;
         param1["relative_scale_center"] = const_944;
         param1["relative_scale_fixed"] = const_665;
         param1["relative_scale_move"] = const_921;
         param1["relative_scale_strech"] = const_965;
         param1["relative_vertical_scale_center"] = const_188;
         param1["relative_vertical_scale_fixed"] = const_118;
         param1["relative_vertical_scale_move"] = const_354;
         param1["relative_vertical_scale_strech"] = const_261;
         param1["on_resize_align_left"] = const_641;
         param1["on_resize_align_right"] = const_414;
         param1["on_resize_align_center"] = const_432;
         param1["on_resize_align_top"] = const_652;
         param1["on_resize_align_bottom"] = const_480;
         param1["on_resize_align_middle"] = const_420;
         param1["on_accommodate_align_left"] = const_889;
         param1["on_accommodate_align_right"] = const_424;
         param1["on_accommodate_align_center"] = const_651;
         param1["on_accommodate_align_top"] = const_955;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_636;
         param1["route_input_events_to_parent"] = const_495;
         param1["use_parent_graphic_context"] = const_36;
         param1["draggable_with_mouse"] = const_995;
         param1["scalable_with_mouse"] = const_849;
         param1["reflect_horizontal_resize_to_parent"] = const_487;
         param1["reflect_vertical_resize_to_parent"] = WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT;
         param1["reflect_resize_to_parent"] = const_250;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
