package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1003:String = "price_type_none";
      
      public static const const_455:String = "pricing_model_multi";
      
      public static const const_316:String = "price_type_credits";
      
      public static const const_454:String = "price_type_credits_and_pixels";
      
      public static const const_408:String = "pricing_model_bundle";
      
      public static const const_449:String = "pricing_model_single";
      
      public static const const_551:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1359:String = "pricing_model_unknown";
      
      public static const const_456:String = "price_type_pixels";
       
      
      private var var_1731:int;
      
      private var var_801:int;
      
      private var _offerId:int;
      
      private var var_802:int;
      
      private var var_395:String;
      
      private var var_568:String;
      
      private var var_399:ICatalogPage;
      
      private var var_396:IProductContainer;
      
      private var var_1170:String;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1170 = param1.localizationId;
         var_801 = param1.priceInCredits;
         var_802 = param1.priceInPixels;
         var_399 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_395;
      }
      
      public function get page() : ICatalogPage
      {
         return var_399;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1731 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_396;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_802;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1170 = "";
         var_801 = 0;
         var_802 = 0;
         var_399 = null;
         if(var_396 != null)
         {
            var_396.dispose();
            var_396 = null;
         }
      }
      
      public function get previewCallbackId() : int
      {
         return var_1731;
      }
      
      public function get priceInCredits() : int
      {
         return var_801;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_395 = const_449;
            }
            else
            {
               var_395 = const_455;
            }
         }
         else if(param1.length > 1)
         {
            var_395 = const_408;
         }
         else
         {
            var_395 = const_1359;
         }
      }
      
      public function get priceType() : String
      {
         return var_568;
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_395)
         {
            case const_449:
               var_396 = new SingleProductContainer(this,param1);
               break;
            case const_455:
               var_396 = new MultiProductContainer(this,param1);
               break;
            case const_408:
               var_396 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_395);
         }
      }
      
      public function get localizationId() : String
      {
         return var_1170;
      }
      
      private function analyzePriceType() : void
      {
         if(var_801 > 0 && var_802 > 0)
         {
            var_568 = const_454;
         }
         else if(var_801 > 0)
         {
            var_568 = const_316;
         }
         else if(var_802 > 0)
         {
            var_568 = const_456;
         }
         else
         {
            var_568 = const_1003;
         }
      }
   }
}
