package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1807:int;
      
      private var var_1581:int;
      
      private var var_1808:int;
      
      private var var_1809:int;
      
      private var var_1810:int;
      
      private var var_1582:int;
      
      private var var_1801:int;
      
      private var var_1227:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1807;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1581;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1801;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1809;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1810;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1582;
      }
      
      public function get commission() : int
      {
         return var_1808;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1227 = param1.readBoolean();
         var_1808 = param1.readInteger();
         var_1581 = param1.readInteger();
         var_1582 = param1.readInteger();
         var_1809 = param1.readInteger();
         var_1807 = param1.readInteger();
         var_1810 = param1.readInteger();
         var_1801 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1227;
      }
   }
}
