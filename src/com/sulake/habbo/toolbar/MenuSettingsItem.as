package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2107:Array;
      
      private var var_1779:String;
      
      private var var_2109:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1779 = param1;
         var_2107 = param2;
         var_2109 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1779;
      }
      
      public function get yieldList() : Array
      {
         return var_2107;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_2109;
      }
   }
}
