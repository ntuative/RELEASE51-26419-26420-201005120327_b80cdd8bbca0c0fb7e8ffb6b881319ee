package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_733:String;
      
      private var var_2020:int;
      
      private var var_1616:Boolean;
      
      private var _roomId:int;
      
      private var var_2019:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1616 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_733 = param1.readString();
         var_2019 = param1.readInteger();
         var_2020 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1616;
      }
      
      public function get roomName() : String
      {
         return var_733;
      }
      
      public function get enterMinute() : int
      {
         return var_2020;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_2019;
      }
   }
}
