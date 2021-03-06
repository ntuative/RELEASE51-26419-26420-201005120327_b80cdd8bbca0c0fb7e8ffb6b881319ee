package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1620:int = 2;
      
      public static const const_1660:int = 1;
      
      public static const const_1484:int = 0;
       
      
      private var var_1318:int;
      
      private var var_163:int;
      
      private var var_2407:int;
      
      private var _offerId:int;
      
      private var var_1839:int;
      
      private var var_1842:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1842 = param2;
         var_1839 = param3;
         var_1318 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1842;
      }
      
      public function get furniType() : int
      {
         return var_1839;
      }
      
      public function get price() : int
      {
         return var_1318;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
