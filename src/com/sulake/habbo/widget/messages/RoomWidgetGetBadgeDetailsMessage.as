package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_681:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_979:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_681);
         var_979 = param1;
      }
      
      public function get groupId() : int
      {
         return var_979;
      }
   }
}
