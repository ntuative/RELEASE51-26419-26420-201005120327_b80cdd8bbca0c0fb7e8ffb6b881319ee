package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_2284:int;
      
      private var var_2286:int;
      
      private var var_2287:int;
      
      private var _userName:String;
      
      private var var_2288:int;
      
      private var var_2285:int;
      
      private var var_2283:int;
      
      private var _userId:int;
      
      private var var_784:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_2285 = param1.readInteger();
         var_2288 = param1.readInteger();
         var_784 = param1.readBoolean();
         var_2287 = param1.readInteger();
         var_2286 = param1.readInteger();
         var_2284 = param1.readInteger();
         var_2283 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_2283;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_784;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_2288;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_2286;
      }
      
      public function get cautionCount() : int
      {
         return var_2284;
      }
      
      public function get cfhCount() : int
      {
         return var_2287;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_2285;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
