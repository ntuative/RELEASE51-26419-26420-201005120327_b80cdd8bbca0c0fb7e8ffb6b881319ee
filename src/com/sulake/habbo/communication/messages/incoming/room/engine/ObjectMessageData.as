package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_1097:int = 0;
      
      private var _data:String = "";
      
      private var var_1486:int = -1;
      
      private var var_34:int = 0;
      
      private var _type:int = 0;
      
      private var var_1095:int = 0;
      
      private var var_2394:String = "";
      
      private var var_1749:int = 0;
      
      private var _id:int = 0;
      
      private var var_211:Boolean = false;
      
      private var var_244:int = 0;
      
      private var var_1821:String = null;
      
      private var var_87:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_86:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_211)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_211)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_244;
      }
      
      public function get extra() : int
      {
         return var_1486;
      }
      
      public function get state() : int
      {
         return var_34;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_211)
         {
            var_244 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_211)
         {
            var_87 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_211)
         {
            var_1486 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_211)
         {
            var_34 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1749;
      }
      
      public function get staticClass() : String
      {
         return var_1821;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_211)
         {
            var_1749 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_211)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_211)
         {
            var_1821 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_211 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_211)
         {
            var_1097 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_211)
         {
            var_1095 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_211)
         {
            var_86 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_1097;
      }
      
      public function get x() : Number
      {
         return var_87;
      }
      
      public function get sizeY() : int
      {
         return var_1095;
      }
   }
}
