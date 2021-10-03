package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1572:String;
      
      private var var_1846:int;
      
      private var var_1845:int;
      
      private var var_1843:int;
      
      private var var_1844:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1846 = param1.readInteger();
         var_1843 = param1.readInteger();
         var_1845 = param1.readInteger();
         var_1844 = param1.readString();
         var_1572 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1572;
      }
      
      public function get hour() : int
      {
         return var_1846;
      }
      
      public function get minute() : int
      {
         return var_1843;
      }
      
      public function get chatterName() : String
      {
         return var_1844;
      }
      
      public function get chatterId() : int
      {
         return var_1845;
      }
   }
}
