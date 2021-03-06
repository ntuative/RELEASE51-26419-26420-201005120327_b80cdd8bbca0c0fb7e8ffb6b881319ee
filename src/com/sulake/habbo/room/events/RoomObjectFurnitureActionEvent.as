package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectFurnitureActionEvent extends RoomObjectEvent
   {
      
      public static const ROOM_OBJECT_DICE_ACTIVATE:String = "ROFCAE_DICE_ACTIVATE";
      
      public static const const_391:String = "ROFCAE_STICKIE";
      
      public static const const_441:String = "ROFCAE_JUKEBOX_DISPOSE";
      
      public static const const_417:String = "ROFCAE_DICE_OFF";
      
      public static const const_383:String = "ROFCAE_JUKEBOX_INIT";
      
      public static const ROOM_OBJECT_SOUND_MACHINE_STOP:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_452:String = "ROFCAE_USE_HABBOWHEEL";
      
      public static const const_465:String = "ROFCAE_ENTER_ONEWAYDOOR";
      
      public static const const_382:String = "ROFCAE_SOUND_MACHINE_DISPOSE";
      
      public static const const_460:String = "ROFCAE_SOUND_MACHINE_START";
       
      
      public function RoomObjectFurnitureActionEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}
