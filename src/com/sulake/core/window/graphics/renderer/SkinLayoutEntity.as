package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_264:uint = 1;
      
      public static const const_396:uint = 0;
      
      public static const const_1044:uint = 8;
      
      public static const const_248:uint = 4;
      
      public static const const_390:uint = 2;
       
      
      private var var_404:uint;
      
      private var var_2130:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_2131:uint;
      
      private var var_100:Rectangle;
      
      private var var_656:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_100 = param3;
         _color = param4;
         var_404 = param5;
         var_2130 = param6;
         var_2131 = param7;
         var_656 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_2130;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_404;
      }
      
      public function get scaleV() : uint
      {
         return var_2131;
      }
      
      public function get tags() : Array
      {
         return var_656;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_100 = null;
         var_656 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_100;
      }
   }
}
