package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1637:String;
      
      private var var_587:String;
      
      private var var_1467:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1467 = param1.readInteger();
         var_1637 = param1.readString();
         var_587 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_587;
      }
      
      public function get figureString() : String
      {
         return var_1637;
      }
      
      public function get slotId() : int
      {
         return var_1467;
      }
   }
}
