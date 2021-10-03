package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_302:String;
      
      private var var_2342:String;
      
      private var var_2343:int;
      
      private var var_2339:int;
      
      private var var_639:String;
      
      private var var_1154:String;
      
      private var _name:String;
      
      private var var_478:int;
      
      private var var_817:int;
      
      private var var_2341:int;
      
      private var _respectTotal:int;
      
      private var var_2340:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2339;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1154;
      }
      
      public function get customData() : String
      {
         return this.var_2342;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_478;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2343;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2340;
      }
      
      public function get figure() : String
      {
         return this.var_302;
      }
      
      public function get respectTotal() : int
      {
         return this._respectTotal;
      }
      
      public function get sex() : String
      {
         return this.var_639;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_302 = param1.readString();
         this.var_639 = param1.readString();
         this.var_2342 = param1.readString();
         this.var_1154 = param1.readString();
         this.var_2341 = param1.readInteger();
         this.var_2340 = param1.readString();
         this.var_2343 = param1.readInteger();
         this.var_2339 = param1.readInteger();
         this._respectTotal = param1.readInteger();
         this.var_817 = param1.readInteger();
         this.var_478 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2341;
      }
      
      public function get respectLeft() : int
      {
         return this.var_817;
      }
   }
}
