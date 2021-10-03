package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_923:LegacyWallGeometry = null;
      
      private var var_634:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_635:TileHeightMap = null;
      
      private var var_2199:String = null;
      
      private var _roomId:int = 0;
      
      private var var_636:SelectedRoomObjectData = null;
      
      private var var_924:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_923 = new LegacyWallGeometry();
         var_924 = new RoomCamera();
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_634 != null)
         {
            var_634.dispose();
         }
         var_634 = param1;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_635 != null)
         {
            var_635.dispose();
         }
         var_635 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_2199 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_923;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return var_636;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_924;
      }
      
      public function dispose() : void
      {
         if(var_635 != null)
         {
            var_635.dispose();
            var_635 = null;
         }
         if(var_923 != null)
         {
            var_923.dispose();
            var_923 = null;
         }
         if(var_924 != null)
         {
            var_924.dispose();
            var_924 = null;
         }
         if(var_634 != null)
         {
            var_634.dispose();
            var_634 = null;
         }
         if(var_636 != null)
         {
            var_636.dispose();
            var_636 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_635;
      }
      
      public function get worldType() : String
      {
         return var_2199;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_636 != null)
         {
            var_636.dispose();
         }
         var_636 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_634;
      }
   }
}
