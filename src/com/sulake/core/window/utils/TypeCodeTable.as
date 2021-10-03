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
         param1["background"] = const_759;
         param1["bitmap"] = const_611;
         param1["border"] = const_541;
         param1["border_notify"] = const_1207;
         param1["button"] = const_497;
         param1["button_thick"] = const_584;
         param1["button_icon"] = const_1351;
         param1["button_group_left"] = const_674;
         param1["button_group_center"] = const_634;
         param1["button_group_right"] = const_563;
         param1["canvas"] = const_606;
         param1["checkbox"] = const_725;
         param1["closebutton"] = const_1006;
         param1["container"] = const_303;
         param1["container_button"] = const_564;
         param1["display_object_wrapper"] = const_716;
         param1["dropmenu"] = const_367;
         param1["dropmenu_item"] = const_374;
         param1["frame"] = const_340;
         param1["frame_notify"] = const_1196;
         param1["header"] = const_672;
         param1["icon"] = const_1009;
         param1["itemgrid"] = const_885;
         param1["itemgrid_horizontal"] = const_446;
         param1["itemgrid_vertical"] = const_705;
         param1["itemlist"] = const_978;
         param1["itemlist_horizontal"] = const_343;
         param1["itemlist_vertical"] = const_301;
         param1["maximizebox"] = const_1288;
         param1["menu"] = const_1355;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_924;
         param1["minimizebox"] = const_1308;
         param1["notify"] = const_1165;
         param1["null"] = const_618;
         param1["password"] = const_589;
         param1["radiobutton"] = const_720;
         param1["region"] = const_398;
         param1["restorebox"] = const_1347;
         param1["scaler"] = const_722;
         param1["scaler_horizontal"] = const_1321;
         param1["scaler_vertical"] = const_1260;
         param1["scrollbar_horizontal"] = const_483;
         param1["scrollbar_vertical"] = const_703;
         param1["scrollbar_slider_button_up"] = const_867;
         param1["scrollbar_slider_button_down"] = const_987;
         param1["scrollbar_slider_button_left"] = const_925;
         param1["scrollbar_slider_button_right"] = const_1010;
         param1["scrollbar_slider_bar_horizontal"] = const_959;
         param1["scrollbar_slider_bar_vertical"] = const_1042;
         param1["scrollbar_slider_track_horizontal"] = const_991;
         param1["scrollbar_slider_track_vertical"] = const_946;
         param1["scrollable_itemlist"] = const_1257;
         param1["scrollable_itemlist_vertical"] = const_384;
         param1["scrollable_itemlist_horizontal"] = const_990;
         param1["selector"] = const_653;
         param1["selector_list"] = const_640;
         param1["submenu"] = const_924;
         param1["tab_button"] = const_555;
         param1["tab_container_button"] = const_1011;
         param1["tab_context"] = const_427;
         param1["tab_content"] = const_1018;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_757;
         param1["input"] = const_590;
         param1["toolbar"] = const_1339;
         param1["tooltip"] = const_312;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
