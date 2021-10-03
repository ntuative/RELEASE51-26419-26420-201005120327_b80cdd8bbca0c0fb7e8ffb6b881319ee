package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_257:String = "RWFAM_MOVE";
      
      public static const const_573:String = "RWFUAM_ROTATE";
      
      public static const const_554:String = "RWFAM_PICKUP";
       
      
      private var var_1842:int = 0;
      
      private var var_1969:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1842 = param2;
         var_1969 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1842;
      }
      
      public function get furniCategory() : int
      {
         return var_1969;
      }
   }
}
