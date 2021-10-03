package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class AnimationFrame
   {
      
      public static const const_628:int = -1;
      
      public static const const_964:int = -1;
       
      
      private var _y:int = 0;
      
      private var var_2072:int = -1;
      
      private var var_87:int = 0;
      
      private var var_1300:int = 1;
      
      private var var_883:int = 1;
      
      private var var_2074:Boolean = false;
      
      private var var_2073:int = 0;
      
      private var _id:int = 0;
      
      public function AnimationFrame(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:int = -1, param7:int = 0)
      {
         super();
         _id = param1;
         var_87 = param2;
         _y = param3;
         var_2074 = param5;
         if(param4 < 0)
         {
            param4 = const_628;
         }
         var_883 = param4;
         var_1300 = param4;
         if(param6 >= 0)
         {
            var_2072 = param6;
            var_2073 = param7;
         }
      }
      
      public function get y() : int
      {
         return _y;
      }
      
      public function set remainingFrameRepeats(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(var_883 > 0 && param1 > var_883)
         {
            param1 = var_883;
         }
         var_1300 = param1;
      }
      
      public function get frameRepeats() : int
      {
         return var_883;
      }
      
      public function get activeSequenceOffset() : int
      {
         return var_2073;
      }
      
      public function get id() : int
      {
         if(_id >= 0)
         {
            return _id;
         }
         return -_id * Math.random();
      }
      
      public function get remainingFrameRepeats() : int
      {
         if(var_883 < 0)
         {
            return const_628;
         }
         return var_1300;
      }
      
      public function get activeSequence() : int
      {
         return var_2072;
      }
      
      public function get isLastFrame() : Boolean
      {
         return var_2074;
      }
      
      public function get x() : int
      {
         return var_87;
      }
   }
}
