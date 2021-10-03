package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1117:int = 80;
       
      
      private var var_524:Map;
      
      private var var_733:String = "";
      
      private var var_1294:Array;
      
      public function UserRegistry()
      {
         var_524 = new Map();
         var_1294 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_524.getValue(var_1294.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_733;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_524.getValue(param1) != null)
         {
            var_524.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_733);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_733 == "")
         {
            var_1294.push(param1);
         }
         var_524.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_524;
      }
      
      public function unregisterRoom() : void
      {
         var_733 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_524.length > const_1117)
         {
            _loc1_ = var_524.getKey(0);
            var_524.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_733 = param1;
         if(var_733 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
