package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1993:String;
      
      private var var_302:String;
      
      private var var_587:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         var_302 = param1;
         var_587 = param2;
         var_1993 = param3;
      }
      
      public function get race() : String
      {
         return var_1993;
      }
      
      public function get figure() : String
      {
         return var_302;
      }
      
      public function get gender() : String
      {
         return var_587;
      }
   }
}
