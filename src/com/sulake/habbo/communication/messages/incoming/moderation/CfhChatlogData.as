package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_2063:int;
      
      private var var_1082:int;
      
      private var var_2247:int;
      
      private var var_1610:int;
      
      private var var_115:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1610 = param1.readInteger();
         var_2247 = param1.readInteger();
         var_1082 = param1.readInteger();
         var_2063 = param1.readInteger();
         var_115 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1610);
      }
      
      public function get chatRecordId() : int
      {
         return var_2063;
      }
      
      public function get reportedUserId() : int
      {
         return var_1082;
      }
      
      public function get callerUserId() : int
      {
         return var_2247;
      }
      
      public function get callId() : int
      {
         return var_1610;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_115;
      }
   }
}
