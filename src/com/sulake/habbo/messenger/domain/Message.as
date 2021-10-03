package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_755:int = 2;
      
      public static const const_914:int = 6;
      
      public static const const_704:int = 1;
      
      public static const const_654:int = 3;
      
      public static const const_903:int = 4;
      
      public static const const_547:int = 5;
       
      
      private var var_2208:String;
      
      private var var_976:int;
      
      private var var_2001:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_976 = param2;
         var_2001 = param3;
         var_2208 = param4;
      }
      
      public function get time() : String
      {
         return var_2208;
      }
      
      public function get senderId() : int
      {
         return var_976;
      }
      
      public function get messageText() : String
      {
         return var_2001;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
