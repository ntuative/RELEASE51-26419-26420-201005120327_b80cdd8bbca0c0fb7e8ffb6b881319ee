package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2056:String;
      
      private var var_1393:String;
      
      private var var_2057:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2057 = param1;
         var_1393 = param2;
         var_2056 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2057,var_1393,var_2056];
      }
      
      public function dispose() : void
      {
      }
   }
}
