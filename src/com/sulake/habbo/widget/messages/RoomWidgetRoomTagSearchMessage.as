package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRoomTagSearchMessage extends RoomWidgetMessage
   {
      
      public static const const_569:String = "RWRTSM_ROOM_TAG_SEARCH";
       
      
      private var var_1667:String = "";
      
      public function RoomWidgetRoomTagSearchMessage(param1:String)
      {
         super(const_569);
         var_1667 = param1;
      }
      
      public function get tag() : String
      {
         return var_1667;
      }
   }
}
