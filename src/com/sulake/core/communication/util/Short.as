package com.sulake.core.communication.util
{
   import flash.utils.ByteArray;
   
   public class Short
   {
       
      
      private var var_775:ByteArray;
      
      public function Short(param1:int)
      {
         super();
         var_775 = new ByteArray();
         var_775.writeShort(param1);
         var_775.position = 0;
      }
      
      public function get value() : int
      {
         var _loc1_:int = 0;
         var_775.position = 0;
         if(false)
         {
            _loc1_ = var_775.readShort();
            var_775.position = 0;
         }
         return _loc1_;
      }
   }
}
