package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_996:PetData;
      
      private var var_1442:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1442 = param1.readBoolean();
         var_996 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1442 + ", " + var_996.id + ", " + var_996.name + ", " + pet.figure + ", " + var_996.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1442;
      }
      
      public function get pet() : PetData
      {
         return var_996;
      }
   }
}
