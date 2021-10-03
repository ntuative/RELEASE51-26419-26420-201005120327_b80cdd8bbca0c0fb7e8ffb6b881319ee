package com.sulake.habbo.avatar.pets
{
   public class PetData implements IPetData
   {
       
      
      private var var_1869:Boolean = false;
      
      private var _colors:Array;
      
      private var var_186:String;
      
      private var var_1236:Array;
      
      private var _name:String;
      
      private var var_547:int;
      
      public function PetData(param1:XML)
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         super();
         _name = param1.@name;
         var_547 = parseInt(param1.@species);
         var_1869 = Boolean(parseInt(param1.@disableheadturn));
         var_186 = param1.@scale;
         _colors = new Array();
         var_1236 = new Array();
         Logger.log("Found Pet Pack: " + _name);
         for each(_loc2_ in param1.breeds.breed)
         {
            var_1236.push(new Breed(_loc2_));
         }
         for each(_loc3_ in param1.colors.color)
         {
            _colors.push(new PetColor(_loc3_));
         }
         for each(_loc4_ in param1.joints.joint)
         {
         }
      }
      
      public function get disableHeadTurn() : Boolean
      {
         return var_1869;
      }
      
      public function get breeds() : Array
      {
         return var_1236;
      }
      
      public function get scale() : String
      {
         return var_186;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get colors() : Array
      {
         return _colors;
      }
      
      public function findColor(param1:uint) : PetColor
      {
         var _loc2_:* = null;
         for each(var _loc5_ in _colors)
         {
            _loc2_ = _loc5_;
            _loc5_;
            if(_loc2_.rgb == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function findBreed(param1:int) : Breed
      {
         var _loc2_:* = null;
         for each(var _loc5_ in var_1236)
         {
            _loc2_ = _loc5_;
            _loc5_;
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get species() : int
      {
         return var_547;
      }
   }
}
