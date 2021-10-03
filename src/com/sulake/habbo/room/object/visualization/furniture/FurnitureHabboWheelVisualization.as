package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1069:int = 31;
      
      private static const const_1070:int = 32;
      
      private static const const_773:int = 10;
      
      private static const const_504:int = 20;
       
      
      private var var_596:Boolean = false;
      
      private var var_220:Array;
      
      public function FurnitureHabboWheelVisualization()
      {
         var_220 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_596 = true;
            var_220 = new Array();
            var_220.push(const_1069);
            var_220.push(const_1070);
            return;
         }
         if(param1 > 0 && param1 <= const_773)
         {
            if(var_596)
            {
               var_596 = false;
               var_220 = new Array();
               var_220.push(const_773 + param1);
               var_220.push(const_504 + param1);
               var_220.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
