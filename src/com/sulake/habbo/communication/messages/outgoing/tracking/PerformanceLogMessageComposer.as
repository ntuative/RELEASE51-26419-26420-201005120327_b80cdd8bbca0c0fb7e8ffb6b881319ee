package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1025:int = 0;
      
      private var var_1234:int = 0;
      
      private var var_1853:String = "";
      
      private var var_1026:int = 0;
      
      private var var_1858:String = "";
      
      private var var_1861:int = 0;
      
      private var var_1468:String = "";
      
      private var var_1859:int = 0;
      
      private var var_1857:int = 0;
      
      private var var_1856:String = "";
      
      private var var_1860:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1859 = param1;
         var_1856 = param2;
         var_1468 = param3;
         var_1853 = param4;
         var_1858 = param5;
         if(param6)
         {
            var_1234 = 1;
         }
         else
         {
            var_1234 = 0;
         }
         var_1861 = param7;
         var_1857 = param8;
         var_1026 = param9;
         var_1860 = param10;
         var_1025 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1859,var_1856,var_1468,var_1853,var_1858,var_1234,var_1861,var_1857,var_1026,var_1860,var_1025];
      }
      
      public function dispose() : void
      {
      }
   }
}
