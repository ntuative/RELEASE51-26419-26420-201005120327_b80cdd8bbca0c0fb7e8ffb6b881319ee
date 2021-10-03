package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoucherRedeemOkMessageParser implements IMessageParser
   {
       
      
      private var var_1360:String = "";
      
      private var var_1361:String = "";
      
      public function VoucherRedeemOkMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         var_1361 = "";
         var_1360 = "";
         return true;
      }
      
      public function get productName() : String
      {
         return var_1360;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1361 = param1.readString();
         var_1360 = param1.readString();
         return true;
      }
      
      public function get productDescription() : String
      {
         return var_1361;
      }
   }
}
