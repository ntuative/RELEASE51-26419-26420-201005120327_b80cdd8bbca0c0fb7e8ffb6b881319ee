package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_531:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_194:String;
      
      private var var_781:String;
      
      private var var_1622:String;
      
      private var var_148:int = -1;
      
      private var var_29:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_148 = param2;
         var_1622 = param3;
         var_194 = param4;
         var_781 = param5;
         var_29 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1622;
      }
      
      public function get colorHex() : String
      {
         return var_781;
      }
      
      public function get text() : String
      {
         return var_194;
      }
      
      public function get objectId() : int
      {
         return var_148;
      }
      
      public function get controller() : Boolean
      {
         return var_29;
      }
   }
}
