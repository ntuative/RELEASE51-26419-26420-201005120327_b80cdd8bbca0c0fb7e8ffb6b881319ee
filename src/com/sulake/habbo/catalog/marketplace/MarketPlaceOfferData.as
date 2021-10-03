package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_2106:int;
      
      private var var_1318:int;
      
      private var var_1841:int;
      
      private var var_1840:int = -1;
      
      private var var_163:int;
      
      private var var_1839:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1317:int;
      
      private var var_1842:int;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1)
      {
         super();
         _offerId = param1;
         var_1842 = param2;
         var_1839 = param3;
         var_1318 = param4;
         var_163 = param5;
         var_1841 = param6;
         var_1317 = param7;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_2106 = param1;
      }
      
      public function get imageCallback() : int
      {
         return var_2106;
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
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_1840 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1318 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1317 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get status() : int
      {
         return var_163;
      }
      
      public function get averagePrice() : int
      {
         return var_1841;
      }
      
      public function set offerId(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(_image != null)
         {
            _image.dispose();
         }
         _image = param1;
      }
      
      public function get furniId() : int
      {
         return var_1842;
      }
   }
}
