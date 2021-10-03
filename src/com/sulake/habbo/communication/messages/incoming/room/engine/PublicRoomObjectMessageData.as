package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class PublicRoomObjectMessageData
   {
       
      
      private var var_1095:int = 0;
      
      private var var_86:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_211:Boolean = false;
      
      private var var_244:int = 0;
      
      private var _type:String = "";
      
      private var _name:String = "";
      
      private var var_87:Number = 0;
      
      private var var_1097:int = 0;
      
      public function PublicRoomObjectMessageData()
      {
         super();
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_211)
         {
            var_86 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return var_1095;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get dir() : int
      {
         return var_244;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         if(!var_211)
         {
            _name = param1;
         }
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_211)
         {
            var_244 = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_211)
         {
            _y = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_211 = true;
      }
      
      public function get z() : Number
      {
         return var_86;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_211)
         {
            var_1095 = param1;
         }
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_211)
         {
            var_1097 = param1;
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
      
      public function get type() : String
      {
         return _type;
      }
      
      public function set type(param1:String) : void
      {
         if(!var_211)
         {
            _type = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_1097;
      }
   }
}
