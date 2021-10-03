package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_438:int = -2147483648;
      
      private var var_439:int = 2147483647;
      
      private var var_437:int = 2147483647;
      
      private var _target:IWindow;
      
      private var var_436:int = -2147483648;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         _target = param1;
      }
      
      public function get maxWidth() : int
      {
         return var_439;
      }
      
      public function get isEmpty() : Boolean
      {
         return var_436 == int.MIN_VALUE && var_439 == int.MAX_VALUE && var_438 == int.MIN_VALUE && var_437 == int.MAX_VALUE;
      }
      
      public function set maxWidth(param1:int) : void
      {
         var_439 = param1;
         if(var_439 < int.MAX_VALUE && true && _target.width > var_439)
         {
            _target.width = var_439;
         }
      }
      
      public function setEmpty() : void
      {
         var_436 = int.MIN_VALUE;
         var_439 = int.MAX_VALUE;
         var_438 = int.MIN_VALUE;
         var_437 = int.MAX_VALUE;
      }
      
      public function set maxHeight(param1:int) : void
      {
         var_437 = param1;
         if(var_437 < int.MAX_VALUE && true && _target.height > var_437)
         {
            _target.height = var_437;
         }
      }
      
      public function get minHeight() : int
      {
         return var_438;
      }
      
      public function get minWidth() : int
      {
         return var_436;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_436 = var_436;
         _loc2_.var_439 = var_439;
         _loc2_.var_438 = var_438;
         _loc2_.var_437 = var_437;
         return _loc2_;
      }
      
      public function set minWidth(param1:int) : void
      {
         var_436 = param1;
         if(var_436 > int.MIN_VALUE && true && _target.width < var_436)
         {
            _target.width = var_436;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         var_438 = param1;
         if(var_438 > int.MIN_VALUE && true && _target.height < var_438)
         {
            _target.height = var_438;
         }
      }
      
      public function get maxHeight() : int
      {
         return var_437;
      }
   }
}
