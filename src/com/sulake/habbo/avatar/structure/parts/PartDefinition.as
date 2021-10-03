package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1625:int = -1;
      
      private var var_1398:Boolean;
      
      private var var_1397:String;
      
      private var var_2289:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_2289 = String(param1["set-type"]);
         var_1397 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1398 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1625 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1397;
      }
      
      public function get staticId() : int
      {
         return var_1625;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1625 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1398;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1398 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1397 = param1;
      }
      
      public function get setType() : String
      {
         return var_2289;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
