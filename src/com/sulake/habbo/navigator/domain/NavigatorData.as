package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1455:int = 10;
       
      
      private var var_1546:NavigatorSettingsMessageParser;
      
      private var var_1307:int;
      
      private var var_2086:int;
      
      private var var_2087:Boolean;
      
      private var var_1072:Array;
      
      private var var_888:Dictionary;
      
      private var var_1073:Array;
      
      private var var_2350:int;
      
      private var var_2085:int;
      
      private var var_2088:int;
      
      private var var_2090:int;
      
      private var var_612:PublicRoomShortData;
      
      private var var_425:RoomEventData;
      
      private var var_139:MsgWithRequestId;
      
      private var var_2089:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_2084:Boolean;
      
      private var var_208:GuestRoomData;
      
      private var var_738:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1072 = new Array();
         var_1073 = new Array();
         var_888 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_2086;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2084;
      }
      
      public function startLoading() : void
      {
         this.var_738 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2084 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_425 != null)
         {
            var_425.dispose();
         }
         var_425 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_139 != null && var_139 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_139 != null && var_139 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_139 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_208;
      }
      
      public function get allCategories() : Array
      {
         return var_1072;
      }
      
      public function onRoomExit() : void
      {
         if(var_425 != null)
         {
            var_425.dispose();
            var_425 = null;
         }
         if(var_612 != null)
         {
            var_612.dispose();
            var_612 = null;
         }
         if(var_208 != null)
         {
            var_208.dispose();
            var_208 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_139 = param1;
         var_738 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1546;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_139 = param1;
         var_738 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_612 = null;
         var_208 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_612 = param1.publicSpace;
            var_425 = null;
         }
      }
      
      public function get method_9() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2350 = param1.limit;
         this.var_1307 = param1.favouriteRoomIds.length;
         this.var_888 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_888[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_139 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_612;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2087;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_139 = param1;
         var_738 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_2088 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_208 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_738;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1073;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1072 = param1;
         var_1073 = new Array();
         for each(_loc2_ in var_1072)
         {
            if(_loc2_.visible)
            {
               var_1073.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_2085;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2090;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1546 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_139 == null)
         {
            return;
         }
         var_139.dispose();
         var_139 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_425;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_888[param1] = !!param2 ? "yes" : null;
         var_1307 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_139 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_2088;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_139 != null && var_139 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2087 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2085 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_2089 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_208 != null)
         {
            var_208.dispose();
         }
         var_208 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_208 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1546.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1307 >= var_2350;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2090 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_2089;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_208 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2086 = param1;
      }
   }
}
