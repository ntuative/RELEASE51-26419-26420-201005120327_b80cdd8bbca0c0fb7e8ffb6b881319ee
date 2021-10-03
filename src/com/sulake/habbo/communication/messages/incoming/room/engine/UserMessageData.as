package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1387:String = "F";
      
      public static const const_1008:String = "M";
       
      
      private var var_87:Number = 0;
      
      private var var_302:String = "";
      
      private var var_2229:int = 0;
      
      private var var_1979:String = "";
      
      private var var_1981:int = 0;
      
      private var var_1792:int = 0;
      
      private var var_1980:String = "";
      
      private var var_639:String = "";
      
      private var _id:int = 0;
      
      private var var_211:Boolean = false;
      
      private var var_244:int = 0;
      
      private var var_2230:String = "";
      
      private var _name:String = "";
      
      private var var_1790:int = 0;
      
      private var _y:Number = 0;
      
      private var var_86:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_244;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_211)
         {
            var_244 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_211)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2229;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_211)
         {
            var_1981 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2230;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_211)
         {
            var_1980 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_211)
         {
            var_2230 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_211)
         {
            var_1792 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_211)
         {
            var_302 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_211)
         {
            var_2229 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_211)
         {
            var_639 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1981;
      }
      
      public function get groupID() : String
      {
         return var_1980;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_211)
         {
            var_1790 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_211)
         {
            var_1979 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_211 = true;
      }
      
      public function get sex() : String
      {
         return var_639;
      }
      
      public function get figure() : String
      {
         return var_302;
      }
      
      public function get webID() : int
      {
         return var_1790;
      }
      
      public function get custom() : String
      {
         return var_1979;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_211)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_211)
         {
            var_86 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_211)
         {
            var_87 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_87;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1792;
      }
   }
}
