package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1127:int = 1;
      
      private static const const_1070:int = 3;
      
      private static const const_1126:int = 2;
      
      private static const const_1125:int = 15;
       
      
      private var var_886:int;
      
      private var var_220:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_220 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1126)
         {
            var_220 = new Array();
            var_220.push(const_1127);
            var_886 = const_1125;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_886 > 0)
         {
            --var_886;
         }
         if(var_886 == 0)
         {
            if(false)
            {
               super.setAnimation(var_220.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
