package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1988:Boolean;
      
      private var var_1954:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1988 = Boolean(parseInt(param1.@club));
         var_1954 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1988;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1954;
      }
   }
}
