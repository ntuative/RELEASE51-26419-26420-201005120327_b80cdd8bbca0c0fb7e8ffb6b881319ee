package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1469:GarbageMonitor = null;
      
      private var var_1230:int = 0;
      
      private var var_1234:Boolean = false;
      
      private var var_1853:String = "";
      
      private var var_1468:String = "";
      
      private var var_348:Number = 0;
      
      private var var_1229:int = 10;
      
      private var var_2327:Array;
      
      private var var_660:int = 0;
      
      private var var_1231:int = 60;
      
      private var var_1025:int = 0;
      
      private var var_1026:int = 0;
      
      private var var_1858:String = "";
      
      private var var_1854:Number = 0;
      
      private var var_1228:int = 1000;
      
      private var var_1855:Boolean = true;
      
      private var var_1852:Number = 0.15;
      
      private var var_161:IHabboConfigurationManager = null;
      
      private var var_1856:String = "";
      
      private var var_1232:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2327 = [];
         super();
         var_1468 = Capabilities.version;
         var_1853 = Capabilities.os;
         var_1234 = Capabilities.isDebugger;
         var_1856 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1469 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1230 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1469.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1469.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_348;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1231 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1468;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1026;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1228)
         {
            ++var_1025;
            _loc3_ = true;
         }
         else
         {
            ++var_660;
            if(var_660 <= 1)
            {
               var_348 = param1;
            }
            else
            {
               _loc4_ = Number(var_660);
               var_348 = var_348 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1230 > var_1231 * 1000 && var_1232 < var_1229)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_348);
            _loc5_ = true;
            if(var_1855 && var_1232 > 0)
            {
               _loc6_ = differenceInPercents(var_1854,var_348);
               if(_loc6_ < var_1852)
               {
                  _loc5_ = false;
               }
            }
            var_1230 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_1854 = var_348;
               if(sendReport())
               {
                  ++var_1232;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1229 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1228 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1856,var_1468,var_1853,var_1858,var_1234,_loc4_,_loc3_,var_1026,var_348,var_1025);
            _connection.send(_loc1_);
            var_1026 = 0;
            var_348 = 0;
            var_660 = 0;
            var_1025 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_161 = param1;
         var_1231 = int(var_161.getKey("performancetest.interval","60"));
         var_1228 = int(var_161.getKey("performancetest.slowupdatelimit","1000"));
         var_1229 = int(var_161.getKey("performancetest.reportlimit","10"));
         var_1852 = Number(var_161.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_1855 = Boolean(int(var_161.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
