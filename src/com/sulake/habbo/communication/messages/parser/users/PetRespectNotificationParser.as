package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1739:int;
      
      private var var_1299:PetData;
      
      private var var_2185:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1739;
      }
      
      public function get petData() : PetData
      {
         return var_1299;
      }
      
      public function flush() : Boolean
      {
         var_1299 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_2185;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1739 = param1.readInteger();
         var_2185 = param1.readInteger();
         var_1299 = new PetData(param1);
         return true;
      }
   }
}
