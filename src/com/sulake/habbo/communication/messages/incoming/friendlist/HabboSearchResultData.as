package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2333:Boolean;
      
      private var var_2334:int;
      
      private var var_2332:Boolean;
      
      private var var_1626:String;
      
      private var var_1154:String;
      
      private var var_2088:int;
      
      private var var_2292:String;
      
      private var var_2331:String;
      
      private var var_2291:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2088 = param1.readInteger();
         this.var_1626 = param1.readString();
         this.var_2292 = param1.readString();
         this.var_2333 = param1.readBoolean();
         this.var_2332 = param1.readBoolean();
         param1.readString();
         this.var_2334 = param1.readInteger();
         this.var_2291 = param1.readString();
         this.var_2331 = param1.readString();
         this.var_1154 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1154;
      }
      
      public function get avatarName() : String
      {
         return this.var_1626;
      }
      
      public function get avatarId() : int
      {
         return this.var_2088;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2333;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2331;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2291;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2332;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2292;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2334;
      }
   }
}
