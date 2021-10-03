package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_419:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_492:int = 0;
      
      public static const const_826:int = 2;
      
      public static const const_979:int = 1;
      
      public static const const_659:Boolean = false;
      
      public static const const_723:String = "";
      
      public static const const_481:int = 0;
      
      public static const const_490:int = 0;
      
      public static const const_400:int = 0;
       
      
      private var var_2197:int = 0;
      
      private var var_1667:String = "";
      
      private var var_1439:int = 0;
      
      private var var_2196:int = 0;
      
      private var var_2198:Number = 0;
      
      private var var_1658:int = 255;
      
      private var var_2195:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_2197;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            xOffset = param1.xOffset;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1439 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_2198;
      }
      
      public function set xOffset(param1:int) : void
      {
         var_2196 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_2197 = param1;
      }
      
      public function get tag() : String
      {
         return var_1667;
      }
      
      public function get alpha() : int
      {
         return var_1658;
      }
      
      public function get ink() : int
      {
         return var_1439;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_2198 = param1;
      }
      
      public function get xOffset() : int
      {
         return var_2196;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_2195 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_2195;
      }
      
      public function set tag(param1:String) : void
      {
         var_1667 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1658 = param1;
      }
   }
}
