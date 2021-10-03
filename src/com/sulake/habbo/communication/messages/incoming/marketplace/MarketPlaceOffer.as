package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1318:int;
      
      private var var_1840:int = -1;
      
      private var var_163:int;
      
      private var var_1841:int;
      
      private var var_1839:int;
      
      private var _offerId:int;
      
      private var var_1317:int;
      
      private var var_1842:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1842 = param2;
         var_1839 = param3;
         var_1318 = param4;
         var_163 = param5;
         var_1840 = param6;
         var_1841 = param7;
         var_1317 = param8;
      }
      
      public function get status() : int
      {
         return var_163;
      }
      
      public function get price() : int
      {
         return var_1318;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1840;
      }
      
      public function get offerCount() : int
      {
         return var_1317;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1839;
      }
      
      public function get averagePrice() : int
      {
         return var_1841;
      }
      
      public function get furniId() : int
      {
         return var_1842;
      }
   }
}
