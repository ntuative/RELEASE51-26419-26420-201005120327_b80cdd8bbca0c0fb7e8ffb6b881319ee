package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1236:int = 4;
      
      public static const const_532:int = 3;
      
      public static const const_567:int = 2;
      
      public static const const_961:int = 1;
       
      
      private var var_2164:String;
      
      private var _disposed:Boolean;
      
      private var var_1644:int;
      
      private var var_2162:Boolean;
      
      private var var_919:String;
      
      private var var_913:PublicRoomData;
      
      private var var_2161:int;
      
      private var _index:int;
      
      private var var_2163:String;
      
      private var _type:int;
      
      private var var_1667:String;
      
      private var var_912:GuestRoomData;
      
      private var var_2165:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_2164 = param1.readString();
         var_2165 = param1.readString();
         var_2162 = param1.readInteger() == 1;
         var_2163 = param1.readString();
         var_919 = param1.readString();
         var_2161 = param1.readInteger();
         var_1644 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_961)
         {
            var_1667 = param1.readString();
         }
         else if(_type == const_532)
         {
            var_913 = new PublicRoomData(param1);
         }
         else if(_type == const_567)
         {
            var_912 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_2161;
      }
      
      public function get popupCaption() : String
      {
         return var_2164;
      }
      
      public function get method_2() : int
      {
         return var_1644;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_2162;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_961)
         {
            return 0;
         }
         if(this.type == const_567)
         {
            return this.var_912.maxUserCount;
         }
         if(this.type == const_532)
         {
            return this.var_913.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_2165;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_912 != null)
         {
            this.var_912.dispose();
            this.var_912 = null;
         }
         if(this.var_913 != null)
         {
            this.var_913.dispose();
            this.var_913 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_912;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_2163;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_913;
      }
      
      public function get picRef() : String
      {
         return var_919;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1667;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
