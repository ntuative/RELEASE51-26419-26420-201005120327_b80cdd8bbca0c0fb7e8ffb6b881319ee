package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var var_1690:int;
      
      private var var_1900:Boolean = false;
      
      private var var_1692:int;
      
      private var var_1691:int;
      
      private var var_1689:int;
      
      private var var_1290:String;
      
      private var var_1318:int;
      
      private var _offerId:int;
      
      private var var_1687:int;
      
      private var var_1688:Boolean;
      
      private var var_1693:Boolean;
      
      private var var_399:ICatalogPage;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         _offerId = param1;
         var_1290 = param2;
         var_1318 = param3;
         var_1693 = param4;
         var_1688 = param5;
         var_1692 = param6;
         var_1689 = param7;
         var_1691 = param8;
         var_1690 = param9;
         var_1687 = param10;
      }
      
      public function get month() : int
      {
         return var_1690;
      }
      
      public function get page() : ICatalogPage
      {
         return var_399;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get vip() : Boolean
      {
         return var_1688;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         var_399 = param1;
      }
      
      public function dispose() : void
      {
      }
      
      public function get priceInPixels() : int
      {
         return 0;
      }
      
      public function get priceType() : String
      {
         return Offer.const_316;
      }
      
      public function get upgrade() : Boolean
      {
         return var_1693;
      }
      
      public function get localizationId() : String
      {
         return var_1290;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return var_1689;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return var_1900;
      }
      
      public function get day() : int
      {
         return var_1687;
      }
      
      public function get year() : int
      {
         return var_1691;
      }
      
      public function get price() : int
      {
         return var_1318;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         var_1900 = param1;
      }
      
      public function get periods() : int
      {
         return var_1692;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get priceInCredits() : int
      {
         return var_1318;
      }
      
      public function get productCode() : String
      {
         return var_1290;
      }
   }
}
