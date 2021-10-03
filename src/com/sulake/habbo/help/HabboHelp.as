package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.hotelmerge.HotelMergeUI;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_2110:UserRegistry;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_140:TutorialUI;
      
      private var var_743:IHabboLocalizationManager;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_63:HelpUI;
      
      private var var_742:IHabboConfigurationManager;
      
      private var var_204:IHabboToolbar;
      
      private var var_615:HotelMergeUI;
      
      private var var_308:IHabboCommunicationManager;
      
      private var var_894:FaqIndex;
      
      private var var_2024:String = "";
      
      private var var_1013:IncomingMessages;
      
      private var var_1319:CallForHelpData;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_1319 = new CallForHelpData();
         var_2110 = new UserRegistry();
         super(param1,param2,param3);
         _assetLibrary = param3;
         var_894 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),onWindowManagerReady);
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return var_204;
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(var_63 != null)
         {
            var_63.tellUI(param1,param2);
         }
      }
      
      private function toggleHelpUI() : void
      {
         if(var_63 == null)
         {
            if(!createHelpUI())
            {
               return;
            }
         }
         var_63.toggleUI();
      }
      
      public function removeTutorialUI() : void
      {
         if(var_140 != null)
         {
            var_140.dispose();
            var_140 = null;
         }
      }
      
      public function get ownUserName() : String
      {
         return var_2024;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return _windowManager;
      }
      
      override public function dispose() : void
      {
         if(var_63 != null)
         {
            var_63.dispose();
            var_63 = null;
         }
         if(var_140 != null)
         {
            var_140.dispose();
            var_140 = null;
         }
         if(var_615)
         {
            var_615.dispose();
            var_615 = null;
         }
         if(var_894 != null)
         {
            var_894.dispose();
            var_894 = null;
         }
         var_1013 = null;
         if(var_204)
         {
            var_204.release(new IIDHabboToolbar());
            var_204 = null;
         }
         if(var_743)
         {
            var_743.release(new IIDHabboLocalizationManager());
            var_743 = null;
         }
         if(var_308)
         {
            var_308.release(new IIDHabboCommunicationManager());
            var_308 = null;
         }
         if(var_742)
         {
            var_742.release(new IIDHabboConfigurationManager());
            var_742 = null;
         }
         if(_windowManager)
         {
            _windowManager.release(new IIDHabboWindowManager());
            _windowManager = null;
         }
         super.dispose();
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return var_743;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_96:
               if(var_63 != null)
               {
                  var_63.setRoomSessionStatus(true);
               }
               if(var_140 != null)
               {
                  var_140.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_110:
               if(var_63 != null)
               {
                  var_63.setRoomSessionStatus(false);
               }
               if(var_140 != null)
               {
                  var_140.setRoomSessionStatus(false);
               }
               userRegistry.unregisterRoom();
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(var_63 != null)
         {
            var_63.updateCallForGuideBotUI(true);
         }
      }
      
      public function get userRegistry() : UserRegistry
      {
         return var_2110;
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(var_63 != null)
         {
            var_63.showCallForHelpResult(param1);
         }
      }
      
      public function initHotelMergeUI() : void
      {
         if(!var_615)
         {
            var_615 = new HotelMergeUI(this);
         }
         var_615.startNameChange();
      }
      
      private function createTutorialUI() : Boolean
      {
         if(var_140 == null && _assetLibrary != null && _windowManager != null)
         {
            var_140 = new TutorialUI(this);
         }
         return var_140 != null;
      }
      
      private function createHelpUI() : Boolean
      {
         if(var_63 == null && _assetLibrary != null && _windowManager != null)
         {
            var_63 = new HelpUI(this,_assetLibrary,_windowManager,var_743,var_204);
         }
         return var_63 != null;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return var_1319;
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         var_1319.reportedUserId = param1;
         var_1319.reportedUserName = param2;
         var_63.showUI(HabboHelpViewEnum.const_313);
      }
      
      public function set ownUserName(param1:String) : void
      {
         var_2024 = param1;
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(var_204 != null)
         {
            var_204.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_131,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         _windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),onCommunicationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_743 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),onConfigurationManagerReady);
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            removeTutorialUI();
            return;
         }
         if(var_140 == null)
         {
            if(!createTutorialUI())
            {
               return;
            }
         }
         var_140.update(param1,param2,param3);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_308 = IHabboCommunicationManager(param2);
         var_1013 = new IncomingMessages(this,var_308);
         queueInterface(new IIDHabboToolbar(),onToolbarReady);
      }
      
      public function showUI(param1:String = null) : void
      {
         if(var_63 != null)
         {
            var_63.showUI(param1);
         }
      }
      
      public function hideUI() : void
      {
         if(var_63 != null)
         {
            var_63.hideUI();
         }
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(var_308 != null && param1 != null)
         {
            var_308.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return var_894;
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(var_63 != null)
         {
            var_63.updateCallForGuideBotUI(false);
         }
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_204 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),onLocalizationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_742 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),onRoomSessionManagerReady);
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return var_140;
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_92)
         {
            setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_64)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               toggleHelpUI();
               return;
            }
         }
      }
      
      public function get hotelMergeUI() : HotelMergeUI
      {
         return var_615;
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_96,onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_110,onRoomSessionEvent);
         var_204.events.addEventListener(HabboToolbarEvent.const_92,onHabboToolbarEvent);
         var_204.events.addEventListener(HabboToolbarEvent.const_64,onHabboToolbarEvent);
         createHelpUI();
         setHabboToolbarIcon();
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(var_63 != null)
         {
            var_63.showCallForHelpReply(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(var_742 == null)
         {
            return param1;
         }
         return var_742.getKey(param1,param2,param3);
      }
   }
}
