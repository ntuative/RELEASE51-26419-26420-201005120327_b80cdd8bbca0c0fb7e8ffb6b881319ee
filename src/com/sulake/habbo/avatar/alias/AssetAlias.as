package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_1052:Boolean;
      
      private var _name:String;
      
      private var var_1968:String;
      
      private var var_1053:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_1968 = String(param1.@link);
         var_1053 = Boolean(parseInt(param1.@fliph));
         var_1052 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_1053;
      }
      
      public function get flipV() : Boolean
      {
         return var_1052;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_1968;
      }
   }
}
