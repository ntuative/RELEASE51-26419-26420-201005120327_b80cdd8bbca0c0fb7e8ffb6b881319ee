package com.sulake.habbo.widget.messages
{
   public class RoomWidgetEcotronBoxOpenMessage extends RoomWidgetMessage
   {
      
      public static const const_721:String = "RWEBOM_OPEN_ECOTRONBOX";
       
      
      private var var_148:int;
      
      public function RoomWidgetEcotronBoxOpenMessage(param1:String, param2:int)
      {
         super(param1);
         var_148 = param2;
      }
      
      public function get objectId() : int
      {
         return var_148;
      }
   }
}
