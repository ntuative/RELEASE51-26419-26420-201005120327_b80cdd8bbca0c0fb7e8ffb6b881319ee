package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_115:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1644:int;
      
      private var var_412:int;
      
      private var var_735:RoomData;
      
      private var var_1738:int;
      
      private var _ownerName:String;
      
      private var var_1837:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_412 = param1.readInteger();
         var_1644 = param1.readInteger();
         var_1837 = param1.readBoolean();
         var_1738 = param1.readInteger();
         _ownerName = param1.readString();
         var_115 = new RoomData(param1);
         var_735 = new RoomData(param1);
      }
      
      public function get method_2() : int
      {
         return var_1644;
      }
      
      public function get event() : RoomData
      {
         return var_735;
      }
      
      public function get room() : RoomData
      {
         return var_115;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_115 != null)
         {
            var_115.dispose();
            var_115 = null;
         }
         if(var_735 != null)
         {
            var_735.dispose();
            var_735 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_412;
      }
      
      public function get ownerId() : int
      {
         return var_1738;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_1837;
      }
   }
}
