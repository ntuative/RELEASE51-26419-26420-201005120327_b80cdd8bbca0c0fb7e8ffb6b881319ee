package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1297:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_881:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1297 = param1;
         var_881 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_881;
      }
      
      public function get identifier() : IID
      {
         return var_1297;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1297 = null;
            while(false)
            {
               var_881.pop();
            }
            var_881 = null;
         }
      }
   }
}
