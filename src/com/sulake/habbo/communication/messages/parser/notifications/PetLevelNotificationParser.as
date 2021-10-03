package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_302:String;
      
      private var var_1670:int;
      
      private var var_2234:String;
      
      private var var_1031:int;
      
      private var var_1183:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1183;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1183 = param1.readInteger();
         var_2234 = param1.readString();
         var_1670 = param1.readInteger();
         var_302 = param1.readString();
         var_1031 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_2234;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_302;
      }
      
      public function get petType() : int
      {
         return var_1031;
      }
      
      public function get level() : int
      {
         return var_1670;
      }
   }
}
