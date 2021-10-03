package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_119:int = 0;
      
      public static const const_130:int = 1;
      
      public static const const_109:int = 2;
      
      public static const const_745:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1142:int = 0;
      
      private var var_2211:String = "";
      
      private var var_194:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_194 = param2;
         var_1142 = param3;
         var_2211 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_2211;
      }
      
      public function get chatType() : int
      {
         return var_1142;
      }
      
      public function get text() : String
      {
         return var_194;
      }
   }
}
