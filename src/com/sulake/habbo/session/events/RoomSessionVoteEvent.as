package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_139:String = "RSPE_VOTE_RESULT";
      
      public static const const_132:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1198:int = 0;
      
      private var var_999:String = "";
      
      private var var_668:Array;
      
      private var var_1006:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1006 = [];
         var_668 = [];
         super(param1,param2,param7,param8);
         var_999 = param3;
         var_1006 = param4;
         var_668 = param5;
         if(var_668 == null)
         {
            var_668 = [];
         }
         var_1198 = param6;
      }
      
      public function get votes() : Array
      {
         return var_668.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1198;
      }
      
      public function get question() : String
      {
         return var_999;
      }
      
      public function get choices() : Array
      {
         return var_1006.slice();
      }
   }
}
