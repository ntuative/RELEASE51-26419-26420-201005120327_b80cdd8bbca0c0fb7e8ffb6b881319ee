package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_86:Number = 0;
      
      private var var_244:int = 0;
      
      private var var_2189:int = 0;
      
      private var var_2194:Number = 0;
      
      private var var_2191:Number = 0;
      
      private var var_2190:Number = 0;
      
      private var var_2193:Number = 0;
      
      private var var_2192:Boolean = false;
      
      private var var_87:Number = 0;
      
      private var _id:int = 0;
      
      private var var_202:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_202 = [];
         super();
         _id = param1;
         var_87 = param2;
         _y = param3;
         var_86 = param4;
         var_2193 = param5;
         var_244 = param6;
         var_2189 = param7;
         var_2194 = param8;
         var_2191 = param9;
         var_2190 = param10;
         var_2192 = param11;
         var_202 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function get dir() : int
      {
         return var_244;
      }
      
      public function get localZ() : Number
      {
         return var_2193;
      }
      
      public function get isMoving() : Boolean
      {
         return var_2192;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_2189;
      }
      
      public function get targetX() : Number
      {
         return var_2194;
      }
      
      public function get targetY() : Number
      {
         return var_2191;
      }
      
      public function get targetZ() : Number
      {
         return var_2190;
      }
      
      public function get x() : Number
      {
         return var_87;
      }
      
      public function get actions() : Array
      {
         return var_202.slice();
      }
   }
}
