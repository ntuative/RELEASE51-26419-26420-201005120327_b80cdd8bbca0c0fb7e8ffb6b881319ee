package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1211:String = "WN_CREATED";
      
      public static const const_942:String = "WN_DISABLE";
      
      public static const const_1002:String = "WN_DEACTIVATED";
      
      public static const const_915:String = "WN_OPENED";
      
      public static const const_835:String = "WN_CLOSED";
      
      public static const const_829:String = "WN_DESTROY";
      
      public static const const_1488:String = "WN_ARRANGED";
      
      public static const const_376:String = "WN_PARENT_RESIZED";
      
      public static const const_998:String = "WN_ENABLE";
      
      public static const const_982:String = "WN_RELOCATE";
      
      public static const const_875:String = "WN_FOCUS";
      
      public static const const_958:String = "WN_PARENT_RELOCATED";
      
      public static const const_371:String = "WN_PARAM_UPDATED";
      
      public static const const_644:String = "WN_PARENT_ACTIVATED";
      
      public static const const_160:String = "WN_RESIZED";
      
      public static const const_841:String = "WN_CLOSE";
      
      public static const const_966:String = "WN_PARENT_REMOVED";
      
      public static const const_256:String = "WN_CHILD_RELOCATED";
      
      public static const const_575:String = "WN_ENABLED";
      
      public static const const_268:String = "WN_CHILD_RESIZED";
      
      public static const const_897:String = "WN_MINIMIZED";
      
      public static const const_719:String = "WN_DISABLED";
      
      public static const const_210:String = "WN_CHILD_ACTIVATED";
      
      public static const const_431:String = "WN_STATE_UPDATED";
      
      public static const const_534:String = "WN_UNSELECTED";
      
      public static const const_401:String = "WN_STYLE_UPDATED";
      
      public static const const_1631:String = "WN_UPDATE";
      
      public static const const_412:String = "WN_PARENT_ADDED";
      
      public static const const_582:String = "WN_RESIZE";
      
      public static const const_736:String = "WN_CHILD_REMOVED";
      
      public static const const_1501:String = "";
      
      public static const const_842:String = "WN_RESTORED";
      
      public static const const_292:String = "WN_SELECTED";
      
      public static const const_962:String = "WN_MINIMIZE";
      
      public static const const_911:String = "WN_FOCUSED";
      
      public static const const_1219:String = "WN_LOCK";
      
      public static const const_349:String = "WN_CHILD_ADDED";
      
      public static const const_837:String = "WN_UNFOCUSED";
      
      public static const const_448:String = "WN_RELOCATED";
      
      public static const const_893:String = "WN_DEACTIVATE";
      
      public static const const_1180:String = "WN_CRETAE";
      
      public static const const_1033:String = "WN_RESTORE";
      
      public static const const_294:String = "WN_ACTVATED";
      
      public static const const_1417:String = "WN_LOCKED";
      
      public static const const_392:String = "WN_SELECT";
      
      public static const const_1032:String = "WN_MAXIMIZE";
      
      public static const const_858:String = "WN_OPEN";
      
      public static const const_536:String = "WN_UNSELECT";
      
      public static const const_1554:String = "WN_ARRANGE";
      
      public static const const_1330:String = "WN_UNLOCKED";
      
      public static const const_1616:String = "WN_UPDATED";
      
      public static const const_1001:String = "WN_ACTIVATE";
      
      public static const const_1317:String = "WN_UNLOCK";
      
      public static const const_1039:String = "WN_MAXIMIZED";
      
      public static const const_902:String = "WN_DESTROYED";
      
      public static const const_851:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1634,cancelable);
      }
   }
}
