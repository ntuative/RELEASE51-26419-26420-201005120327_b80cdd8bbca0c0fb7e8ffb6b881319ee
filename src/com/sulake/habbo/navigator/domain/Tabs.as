package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_731:int = 6;
      
      public static const const_200:int = 5;
      
      public static const const_535:int = 2;
      
      public static const const_330:int = 9;
      
      public static const const_300:int = 4;
      
      public static const const_285:int = 2;
      
      public static const const_749:int = 4;
      
      public static const const_206:int = 8;
      
      public static const const_739:int = 7;
      
      public static const const_274:int = 3;
      
      public static const const_342:int = 1;
      
      public static const const_212:int = 5;
      
      public static const const_416:int = 12;
      
      public static const const_298:int = 1;
      
      public static const const_540:int = 11;
      
      public static const const_647:int = 3;
      
      public static const const_1661:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_406:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_406 = new Array();
         var_406.push(new Tab(_navigator,const_342,const_416,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_375));
         var_406.push(new Tab(_navigator,const_285,const_298,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_375));
         var_406.push(new Tab(_navigator,const_300,const_540,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_977));
         var_406.push(new Tab(_navigator,const_274,const_200,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_375));
         var_406.push(new Tab(_navigator,const_212,const_206,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_670));
         setSelectedTab(const_342);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_406)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_406)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_406)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_300;
      }
      
      public function get tabs() : Array
      {
         return var_406;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
