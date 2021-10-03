package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1660:Number;
      
      private var var_565:Number = 0;
      
      private var var_1661:Number;
      
      private var var_564:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1660 = param1;
         var_1661 = param2;
      }
      
      public function update() : void
      {
         var_564 += var_1661;
         var_565 += var_564;
         if(var_565 > 0)
         {
            var_565 = 0;
            var_564 = var_1660 * -1 * var_564;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_564 = param1;
         var_565 = 0;
      }
      
      public function get location() : Number
      {
         return var_565;
      }
   }
}
