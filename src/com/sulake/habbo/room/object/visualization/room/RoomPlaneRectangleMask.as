package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_1977:Number = 0;
      
      private var var_1974:Number = 0;
      
      private var var_1975:Number = 0;
      
      private var var_1976:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1974 = param1;
         var_1975 = param2;
         var_1977 = param3;
         var_1976 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1974;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1977;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1975;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1976;
      }
   }
}
