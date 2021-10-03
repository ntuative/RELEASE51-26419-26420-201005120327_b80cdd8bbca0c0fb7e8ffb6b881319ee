package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_213:String = "e";
      
      public static const const_84:String = "i";
      
      public static const const_83:String = "s";
       
      
      private var var_985:String;
      
      private var var_1161:String;
      
      private var var_1160:int;
      
      private var var_2055:int;
      
      private var var_986:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1161 = param1.readString();
         var_2055 = param1.readInteger();
         var_985 = param1.readString();
         var_986 = param1.readInteger();
         var_1160 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_986;
      }
      
      public function get productType() : String
      {
         return var_1161;
      }
      
      public function get expiration() : int
      {
         return var_1160;
      }
      
      public function get furniClassId() : int
      {
         return var_2055;
      }
      
      public function get extraParam() : String
      {
         return var_985;
      }
   }
}
