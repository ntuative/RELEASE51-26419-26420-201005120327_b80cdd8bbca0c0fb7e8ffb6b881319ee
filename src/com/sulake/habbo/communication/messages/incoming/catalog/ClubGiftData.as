package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ClubGiftData
   {
       
      
      private var var_2083:int;
      
      private var var_2082:Boolean;
      
      private var _offerId:int;
      
      private var var_1954:Boolean;
      
      public function ClubGiftData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_2082 = param1.readBoolean();
         var_2083 = param1.readInteger();
         var_1954 = param1.readBoolean();
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1954;
      }
      
      public function get monthsRequired() : int
      {
         return var_2083;
      }
      
      public function get isVip() : Boolean
      {
         return var_2082;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
