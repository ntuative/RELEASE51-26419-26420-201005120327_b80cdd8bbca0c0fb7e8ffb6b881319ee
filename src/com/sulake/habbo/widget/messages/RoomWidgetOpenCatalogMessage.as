package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_1045:String = "RWOCM_CLUB_MAIN";
      
      public static const const_675:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_2104:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_675);
         var_2104 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_2104;
      }
   }
}
