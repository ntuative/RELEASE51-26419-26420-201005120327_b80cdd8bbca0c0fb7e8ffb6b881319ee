package com.sulake.room.object
{
   import flash.utils.Dictionary;
   
   public class RoomObjectModel implements IRoomObjectModelController
   {
       
      
      private var _updateID:int;
      
      private var _stringArrayReadOnlyList:Array;
      
      private var _numberArrayReadOnlyList:Array;
      
      private var var_552:Dictionary;
      
      private var var_553:Dictionary;
      
      private var var_1100:Array;
      
      private var var_541:Dictionary;
      
      private var var_1099:Array;
      
      private var var_540:Dictionary;
      
      public function RoomObjectModel()
      {
         super();
         var_541 = new Dictionary();
         var_540 = new Dictionary();
         var_553 = new Dictionary();
         var_552 = new Dictionary();
         var_1100 = [];
         var_1099 = [];
         _numberArrayReadOnlyList = [];
         _stringArrayReadOnlyList = [];
         _updateID = 0;
      }
      
      public function setNumber(param1:String, param2:Number, param3:Boolean = false) : void
      {
         if(var_1100.indexOf(param1) >= 0)
         {
            return;
         }
         if(param3)
         {
            var_1100.push(param1);
         }
         if(var_541[param1] != param2)
         {
            var_541[param1] = param2;
            ++_updateID;
         }
      }
      
      public function setStringArray(param1:String, param2:Array, param3:Boolean = false) : void
      {
         if(param2 == null)
         {
            return;
         }
         if(_stringArrayReadOnlyList.indexOf(param1) >= 0)
         {
            return;
         }
         if(param3)
         {
            _stringArrayReadOnlyList.push(param1);
         }
         var _loc4_:* = [];
         var _loc5_:int = 0;
         _loc5_ = 0;
         while(_loc5_ < param2.length)
         {
            if(param2[_loc5_] is String)
            {
               _loc4_.push(param2[_loc5_]);
            }
            _loc5_++;
         }
         var _loc6_:Array = var_552[param1];
         var _loc7_:Boolean = true;
         if(_loc6_ != null && _loc6_.length == _loc4_.length)
         {
            _loc5_ = _loc4_.length - 1;
            while(_loc5_ >= 0)
            {
               if(_loc4_[_loc5_] as String != _loc6_[_loc5_] as String)
               {
                  _loc7_ = false;
                  break;
               }
               _loc5_--;
            }
         }
         else
         {
            _loc7_ = false;
         }
         if(_loc7_)
         {
            return;
         }
         var_552[param1] = _loc4_;
         ++_updateID;
      }
      
      public function getNumber(param1:String) : Number
      {
         return var_541[param1];
      }
      
      public function setString(param1:String, param2:String, param3:Boolean = false) : void
      {
         if(var_1099.indexOf(param1) >= 0)
         {
            return;
         }
         if(param3)
         {
            var_1099.push(param1);
         }
         if(var_540[param1] != param2)
         {
            var_540[param1] = param2;
            ++_updateID;
         }
      }
      
      public function setNumberArray(param1:String, param2:Array, param3:Boolean = false) : void
      {
         if(param2 == null)
         {
            return;
         }
         if(_numberArrayReadOnlyList.indexOf(param1) >= 0)
         {
            return;
         }
         if(param3)
         {
            _numberArrayReadOnlyList.push(param1);
         }
         var _loc4_:* = [];
         var _loc5_:int = 0;
         _loc5_ = 0;
         while(_loc5_ < param2.length)
         {
            if(param2[_loc5_] is Number)
            {
               _loc4_.push(param2[_loc5_]);
            }
            _loc5_++;
         }
         var _loc6_:Array = var_553[param1];
         var _loc7_:Boolean = true;
         if(_loc6_ != null && _loc6_.length == _loc4_.length)
         {
            _loc5_ = _loc4_.length - 1;
            while(_loc5_ >= 0)
            {
               if(_loc4_[_loc5_] as Number != _loc6_[_loc5_] as Number)
               {
                  _loc7_ = false;
                  break;
               }
               _loc5_--;
            }
         }
         else
         {
            _loc7_ = false;
         }
         if(_loc7_)
         {
            return;
         }
         var_553[param1] = _loc4_;
         ++_updateID;
      }
      
      public function getString(param1:String) : String
      {
         return var_540[param1];
      }
      
      public function getNumberArray(param1:String) : Array
      {
         var _loc2_:Array = var_553[param1];
         if(_loc2_ != null)
         {
            _loc2_ = _loc2_.slice();
         }
         return _loc2_;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(var_541 != null)
         {
            for(_loc1_ in var_541)
            {
               delete var_541[_loc1_];
            }
            var_541 = null;
         }
         if(var_540 != null)
         {
            for(_loc1_ in var_540)
            {
               delete var_540[_loc1_];
            }
            var_540 = null;
         }
         if(var_553 != null)
         {
            for(_loc1_ in var_553)
            {
               delete var_553[_loc1_];
            }
            var_553 = null;
         }
         if(var_552 != null)
         {
            for(_loc1_ in var_552)
            {
               delete var_552[_loc1_];
            }
            var_552 = null;
         }
         var_1099 = [];
         var_1100 = [];
         _stringArrayReadOnlyList = [];
         _numberArrayReadOnlyList = [];
      }
      
      public function getStringArray(param1:String) : Array
      {
         var _loc2_:Array = var_552[param1];
         if(_loc2_ != null)
         {
            _loc2_ = _loc2_.slice();
         }
         return _loc2_;
      }
      
      public function getUpdateID() : int
      {
         return _updateID;
      }
   }
}
