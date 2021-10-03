package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_252:String = "WE_CHILD_RESIZED";
      
      public static const const_1208:String = "WE_CLOSE";
      
      public static const const_1392:String = "WE_DESTROY";
      
      public static const const_135:String = "WE_CHANGE";
      
      public static const const_1189:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1562:String = "WE_PARENT_RESIZE";
      
      public static const const_100:String = "WE_UPDATE";
      
      public static const const_1190:String = "WE_MAXIMIZE";
      
      public static const const_405:String = "WE_DESTROYED";
      
      public static const const_988:String = "WE_UNSELECT";
      
      public static const const_1166:String = "WE_MAXIMIZED";
      
      public static const const_1652:String = "WE_UNLOCKED";
      
      public static const const_479:String = "WE_CHILD_REMOVED";
      
      public static const const_182:String = "WE_OK";
      
      public static const const_48:String = "WE_RESIZED";
      
      public static const const_1199:String = "WE_ACTIVATE";
      
      public static const const_286:String = "WE_ENABLED";
      
      public static const const_486:String = "WE_CHILD_RELOCATED";
      
      public static const const_1396:String = "WE_CREATE";
      
      public static const const_747:String = "WE_SELECT";
      
      public static const const_175:String = "";
      
      public static const const_1515:String = "WE_LOCKED";
      
      public static const const_1514:String = "WE_PARENT_RELOCATE";
      
      public static const const_1670:String = "WE_CHILD_REMOVE";
      
      public static const const_1560:String = "WE_CHILD_RELOCATE";
      
      public static const const_1650:String = "WE_LOCK";
      
      public static const const_239:String = "WE_FOCUSED";
      
      public static const const_699:String = "WE_UNSELECTED";
      
      public static const const_936:String = "WE_DEACTIVATED";
      
      public static const const_1184:String = "WE_MINIMIZED";
      
      public static const const_1641:String = "WE_ARRANGED";
      
      public static const const_1643:String = "WE_UNLOCK";
      
      public static const const_1617:String = "WE_ATTACH";
      
      public static const const_1320:String = "WE_OPEN";
      
      public static const const_1262:String = "WE_RESTORE";
      
      public static const const_1534:String = "WE_PARENT_RELOCATED";
      
      public static const const_1343:String = "WE_RELOCATE";
      
      public static const const_1678:String = "WE_CHILD_RESIZE";
      
      public static const const_1516:String = "WE_ARRANGE";
      
      public static const const_1315:String = "WE_OPENED";
      
      public static const const_1264:String = "WE_CLOSED";
      
      public static const const_1536:String = "WE_DETACHED";
      
      public static const const_1614:String = "WE_UPDATED";
      
      public static const const_1220:String = "WE_UNFOCUSED";
      
      public static const const_469:String = "WE_RELOCATED";
      
      public static const const_1284:String = "WE_DEACTIVATE";
      
      public static const const_238:String = "WE_DISABLED";
      
      public static const const_566:String = "WE_CANCEL";
      
      public static const const_648:String = "WE_ENABLE";
      
      public static const const_1326:String = "WE_ACTIVATED";
      
      public static const const_1380:String = "WE_FOCUS";
      
      public static const const_1677:String = "WE_DETACH";
      
      public static const const_1173:String = "WE_RESTORED";
      
      public static const const_1405:String = "WE_UNFOCUS";
      
      public static const const_60:String = "WE_SELECTED";
      
      public static const const_1232:String = "WE_PARENT_RESIZED";
      
      public static const const_1401:String = "WE_CREATED";
      
      public static const const_1505:String = "WE_ATTACHED";
      
      public static const const_1358:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1634:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1417:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1634 = param3;
         var_1417 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1417;
      }
      
      public function get related() : IWindow
      {
         return var_1634;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1417 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
