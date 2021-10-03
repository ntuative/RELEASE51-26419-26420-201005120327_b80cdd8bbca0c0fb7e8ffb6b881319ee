package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeMessageData
   {
       
      
      private var var_1443:int;
      
      private var var_1751:String;
      
      public function PrizeMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_1751 = param1.readString();
         var_1443 = param1.readInteger();
      }
      
      public function get productItemTypeId() : int
      {
         return var_1443;
      }
      
      public function get productItemType() : String
      {
         return var_1751;
      }
   }
}
