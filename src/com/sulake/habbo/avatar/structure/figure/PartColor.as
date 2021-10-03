package com.sulake.habbo.avatar.structure.figure
{
   import flash.geom.ColorTransform;
   
   public class PartColor implements IPartColor
   {
       
      
      private var var_1502:uint;
      
      private var _rgb:uint;
      
      private var _index:int;
      
      private var var_1503:Number;
      
      private var _b:uint;
      
      private var var_1499:Number;
      
      private var var_1500:uint;
      
      private var var_1771:int;
      
      private var var_1501:Number;
      
      private var _colorTransform:ColorTransform;
      
      private var _id:int;
      
      private var var_1954:Boolean = false;
      
      public function PartColor(param1:XML)
      {
         super();
         _id = parseInt(param1.@id);
         _index = parseInt(param1.@index);
         var_1771 = parseInt(param1.@club);
         var_1954 = Boolean(parseInt(param1.@selectable));
         var _loc2_:String = param1.text();
         _rgb = parseInt(_loc2_,16);
         var_1502 = _rgb >> 16 & 255;
         var_1500 = _rgb >> 8 & 255;
         _b = _rgb >> 0 & 255;
         var_1501 = var_1502 / 255 * 1;
         var_1499 = var_1500 / 255 * 1;
         var_1503 = _b / 255 * 1;
         _colorTransform = new ColorTransform(var_1501,var_1499,var_1503);
      }
      
      public function get colorTransform() : ColorTransform
      {
         return _colorTransform;
      }
      
      public function get rgb() : uint
      {
         return _rgb;
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get blueMultiplier() : Number
      {
         return var_1503;
      }
      
      public function get r() : uint
      {
         return var_1502;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1954;
      }
      
      public function get b() : uint
      {
         return _b;
      }
      
      public function get greenMultiplier() : Number
      {
         return var_1499;
      }
      
      public function get g() : uint
      {
         return var_1500;
      }
      
      public function get redMultiplier() : Number
      {
         return var_1501;
      }
      
      public function get clubLevel() : int
      {
         return var_1771;
      }
   }
}
