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
      
      public static const const_328:int = 1;
      
      public static const const_251:int = 2;
      
      public static const const_268:int = 3;
      
      public static const const_320:int = 4;
      
      public static const const_246:int = 5;
      
      public static const const_365:int = 1;
      
      public static const const_772:int = 2;
      
      public static const const_649:int = 3;
      
      public static const const_729:int = 4;
      
      public static const const_201:int = 5;
      
      public static const const_728:int = 6;
      
      public static const const_576:int = 7;
      
      public static const const_223:int = 8;
      
      public static const const_331:int = 9;
      
      public static const const_1616:int = 10;
      
      public static const const_798:int = 11;
      
      public static const const_446:int = 12;
       
      
      private var var_381:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_381 = new Array();
         this.var_381.push(new Tab(this._navigator,const_328,const_446,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_427));
         this.var_381.push(new Tab(this._navigator,const_251,const_365,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_427));
         this.var_381.push(new Tab(this._navigator,const_320,const_798,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_927));
         this.var_381.push(new Tab(this._navigator,const_268,const_201,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_427));
         this.var_381.push(new Tab(this._navigator,const_246,const_223,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_761));
         this.setSelectedTab(const_328);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_320;
      }
      
      public function get tabs() : Array
      {
         return this.var_381;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_381)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_381)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_381)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
