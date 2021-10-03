package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1966:Class;
      
      private var var_1965:Class;
      
      private var var_1967:String;
      
      private var var_1273:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1967 = param1;
         var_1965 = param2;
         var_1966 = param3;
         if(rest == null)
         {
            var_1273 = new Array();
         }
         else
         {
            var_1273 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1966;
      }
      
      public function get assetClass() : Class
      {
         return var_1965;
      }
      
      public function get mimeType() : String
      {
         return var_1967;
      }
      
      public function get fileTypes() : Array
      {
         return var_1273;
      }
   }
}
