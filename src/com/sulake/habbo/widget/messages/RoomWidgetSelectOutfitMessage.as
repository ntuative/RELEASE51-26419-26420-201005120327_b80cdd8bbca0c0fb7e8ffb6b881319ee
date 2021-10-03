package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_1020:String = "select_outfit";
       
      
      private var var_2018:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_1020);
         var_2018 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2018;
      }
   }
}
