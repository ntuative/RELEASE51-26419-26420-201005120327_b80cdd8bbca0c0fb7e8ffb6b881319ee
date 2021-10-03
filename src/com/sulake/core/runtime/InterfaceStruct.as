package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_446:uint;
      
      private var var_1115:IUnknown;
      
      private var var_1373:String;
      
      private var var_1116:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1116 = param1;
         var_1373 = getQualifiedClassName(var_1116);
         var_1115 = param2;
         var_446 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1116;
      }
      
      public function get disposed() : Boolean
      {
         return var_1115 == null;
      }
      
      public function get references() : uint
      {
         return var_446;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_446) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1115;
      }
      
      public function get iis() : String
      {
         return var_1373;
      }
      
      public function reserve() : uint
      {
         return ++var_446;
      }
      
      public function dispose() : void
      {
         var_1116 = null;
         var_1373 = null;
         var_1115 = null;
         var_446 = 0;
      }
   }
}
