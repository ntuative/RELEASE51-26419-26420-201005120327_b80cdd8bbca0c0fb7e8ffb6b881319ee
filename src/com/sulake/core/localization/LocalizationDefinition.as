package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1432:String;
      
      private var var_653:String;
      
      private var var_1431:String;
      
      private var var_1433:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1433 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1432 = _loc5_[0];
         var_1431 = _loc5_[1];
         _name = param2;
         var_653 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1432;
      }
      
      public function get languageCode() : String
      {
         return var_1433;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_653;
      }
      
      public function get encoding() : String
      {
         return var_1431;
      }
      
      public function get id() : String
      {
         return var_1433 + "_" + var_1432 + "." + var_1431;
      }
   }
}
