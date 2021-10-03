package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1931:int;
      
      private var var_1929:String;
      
      private var var_1930:int;
      
      private var _disposed:Boolean;
      
      private var var_1928:int;
      
      private var var_1932:String;
      
      private var var_1212:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1932 = param1.readString();
         var_1931 = param1.readInteger();
         var_1930 = param1.readInteger();
         var_1929 = param1.readString();
         var_1928 = param1.readInteger();
         var_1212 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1928;
      }
      
      public function get worldId() : int
      {
         return var_1930;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1932;
      }
      
      public function get unitPort() : int
      {
         return var_1931;
      }
      
      public function get castLibs() : String
      {
         return var_1929;
      }
      
      public function get nodeId() : int
      {
         return var_1212;
      }
   }
}
