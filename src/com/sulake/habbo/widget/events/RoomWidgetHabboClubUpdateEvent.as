package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_218:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1773:Boolean = false;
      
      private var var_1770:int = 0;
      
      private var var_1774:int = 0;
      
      private var var_1771:int;
      
      private var var_1772:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_218,param6,param7);
         var_1772 = param1;
         var_1774 = param2;
         var_1770 = param3;
         var_1773 = param4;
         var_1771 = param5;
      }
      
      public function get clubLevel() : int
      {
         return var_1771;
      }
      
      public function get pastPeriods() : int
      {
         return var_1770;
      }
      
      public function get periodsLeft() : int
      {
         return var_1774;
      }
      
      public function get daysLeft() : int
      {
         return var_1772;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1773;
      }
   }
}
