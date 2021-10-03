package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1484:Array;
      
      private var var_1841:int;
      
      private var var_1889:int;
      
      private var var_1887:int;
      
      private var var_1886:int;
      
      private var _dayOffsets:Array;
      
      private var var_1888:int;
      
      private var var_1483:Array;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1484;
      }
      
      public function get furniTypeId() : int
      {
         return var_1889;
      }
      
      public function get historyLength() : int
      {
         return var_1886;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1887;
      }
      
      public function get offerCount() : int
      {
         return var_1888;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1483;
      }
      
      public function get averagePrice() : int
      {
         return var_1841;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1841 = param1.readInteger();
         var_1888 = param1.readInteger();
         var_1886 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1484 = [];
         var_1483 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1484.push(param1.readInteger());
            var_1483.push(param1.readInteger());
            _loc3_++;
         }
         var_1887 = param1.readInteger();
         var_1889 = param1.readInteger();
         return true;
      }
   }
}
