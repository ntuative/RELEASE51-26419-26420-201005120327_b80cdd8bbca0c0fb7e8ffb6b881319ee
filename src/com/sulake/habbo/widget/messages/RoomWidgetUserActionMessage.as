package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_546:String = "RWUAM_RESPECT_USER";
      
      public static const const_656:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_744:String = "RWUAM_START_TRADING";
      
      public static const const_638:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_552:String = "RWUAM_WHISPER_USER";
      
      public static const const_580:String = "RWUAM_IGNORE_USER";
      
      public static const const_385:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_750:String = "RWUAM_BAN_USER";
      
      public static const const_616:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_388:String = "RWUAM_KICK_USER";
      
      public static const const_637:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_576:String = " RWUAM_RESPECT_PET";
      
      public static const const_399:String = "RWUAM_KICK_BOT";
      
      public static const const_1295:String = "RWUAM_TRAIN_PET";
      
      public static const const_620:String = "RWUAM_PICKUP_PET";
      
      public static const const_661:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_613:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
