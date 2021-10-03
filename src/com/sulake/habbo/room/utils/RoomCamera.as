package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_357:Number = 0.5;
      
      private static const const_766:int = 3;
      
      private static const const_1066:Number = 1;
       
      
      private var var_1681:Boolean = false;
      
      private var var_1679:Boolean = false;
      
      private var var_984:int = 0;
      
      private var var_249:Vector3d = null;
      
      private var var_1683:int = 0;
      
      private var var_1682:int = 0;
      
      private var var_1680:Boolean = false;
      
      private var var_1686:int = -2;
      
      private var var_1685:Boolean = false;
      
      private var var_1677:int = 0;
      
      private var var_1684:int = -1;
      
      private var var_391:Vector3d = null;
      
      private var var_1678:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1683;
      }
      
      public function get targetId() : int
      {
         return var_1684;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1677 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1683 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1681 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1684 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1679 = param1;
      }
      
      public function dispose() : void
      {
         var_391 = null;
         var_249 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_391 == null)
         {
            var_391 = new Vector3d();
         }
         var_391.assign(param1);
         var_984 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1686;
      }
      
      public function get screenHt() : int
      {
         return var_1678;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1682 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_249;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1678 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1677;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1681;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1679;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_391 != null && var_249 != null)
         {
            ++var_984;
            _loc2_ = Vector3d.dif(var_391,var_249);
            if(_loc2_.length <= const_357)
            {
               var_249 = var_391;
               var_391 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_357 * (const_766 + 1))
               {
                  _loc2_.mul(const_357);
               }
               else if(var_984 <= const_766)
               {
                  _loc2_.mul(const_357);
               }
               else
               {
                  _loc2_.mul(const_1066);
               }
               var_249 = Vector3d.sum(var_249,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1680 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1682;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1685 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1686 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_249 != null)
         {
            return;
         }
         var_249 = new Vector3d();
         var_249.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1680;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1685;
      }
   }
}
