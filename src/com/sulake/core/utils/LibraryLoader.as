package com.sulake.core.utils
{
   import com.sulake.core.Core;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   import flash.display.DisplayObject;
   import flash.display.FrameLabel;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class LibraryLoader extends EventDispatcher implements IDisposable
   {
      
      protected static const const_1518:uint = 1;
      
      protected static const const_1517:uint = 2;
      
      protected static const const_1520:uint = 4;
      
      protected static const const_1519:uint = 3;
      
      protected static const name_2:uint = 7;
      
      public static const const_1302:int = 5;
      
      public static const LIBRARY_LOADER_FINALIZE:String = "LIBRARY_LOADER_FINALIZE";
       
      
      protected var var_39:Loader;
      
      protected var var_16:LoaderContext;
      
      protected var _status:int = 0;
      
      protected var var_255:URLRequest;
      
      protected var var_744:XML;
      
      protected var var_614:Class;
      
      protected var var_410:uint = 0;
      
      protected var _name:String;
      
      protected var var_927:Boolean = false;
      
      protected var _debug:Boolean = false;
      
      protected var var_926:Boolean = false;
      
      protected var var_2603:String = "";
      
      protected var var_2602:String = "";
      
      protected var var_1868:int;
      
      protected var var_1161:int;
      
      protected var var_1160:int;
      
      protected var var_2682:uint = 0;
      
      protected var var_2604:Boolean = true;
      
      public function LibraryLoader(param1:LoaderContext = null, param2:Boolean = false, param3:Boolean = false)
      {
         if(param1 == null)
         {
            this.var_16 = new LoaderContext();
            this.var_16.applicationDomain = ApplicationDomain.currentDomain;
         }
         else
         {
            this.var_16 = param1;
         }
         this.var_926 = param2;
         this._debug = param3;
         this._status = 0;
         this.var_39 = new Loader();
         this.var_39.contentLoaderInfo.addEventListener(Event.INIT,this.loadEventHandler);
         this.var_39.contentLoaderInfo.addEventListener(Event.COMPLETE,this.loadEventHandler);
         this.var_39.contentLoaderInfo.addEventListener(ProgressEvent.PROGRESS,this.loadEventHandler);
         this.var_39.contentLoaderInfo.addEventListener(Event.UNLOAD,this.loadEventHandler);
         this.var_39.contentLoaderInfo.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.loadEventHandler);
         this.var_39.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.loadEventHandler);
         this.var_39.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.loadEventHandler);
         super();
      }
      
      protected static function parseNameFromUrl(param1:String) : String
      {
         var _loc2_:int = 0;
         _loc2_ = param1.indexOf("?",0);
         if(_loc2_ > -1)
         {
            param1 = param1.slice(0,_loc2_);
         }
         _loc2_ = param1.lastIndexOf(".");
         if(_loc2_ > -1)
         {
            param1 = param1.slice(0,_loc2_);
         }
         _loc2_ = param1.lastIndexOf("/");
         if(_loc2_ > -1)
         {
            param1 = param1.slice(_loc2_ + 1,param1.length);
         }
         return param1;
      }
      
      public function get url() : String
      {
         return !!this.var_255 ? this.var_255.url : null;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get ready() : Boolean
      {
         return this.var_927;
      }
      
      public function get status() : int
      {
         return this._status;
      }
      
      public function get domain() : ApplicationDomain
      {
         return this.var_39.contentLoaderInfo.applicationDomain;
      }
      
      public function get request() : URLRequest
      {
         return this.var_255;
      }
      
      public function get resource() : Class
      {
         return this.var_614;
      }
      
      public function get manifest() : XML
      {
         return this.var_744;
      }
      
      public function get bytesTotal() : uint
      {
         return this.var_39.contentLoaderInfo.bytesTotal;
      }
      
      public function get bytesLoaded() : uint
      {
         return this.var_39.contentLoaderInfo.bytesLoaded;
      }
      
      public function get elapsedTime() : uint
      {
         return !!this.var_927 ? uint(this.var_1161 - this.var_1868) : uint(getTimer() - this.var_1868);
      }
      
      public function get paused() : Boolean
      {
         return this.var_926;
      }
      
      protected function get content() : DisplayObject
      {
         return this.var_39.content;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_DISPOSE,this._status,this.bytesTotal,this.bytesLoaded,this.elapsedTime));
            try
            {
               this.var_39.close();
            }
            catch(e:Error)
            {
            }
            try
            {
               this.var_39.unload();
            }
            catch(e:Error)
            {
            }
            this.var_39 = null;
            this.var_16 = null;
            this.var_614 = null;
            this.var_744 = null;
            super.dispose();
         }
      }
      
      public function load(param1:URLRequest, param2:int = 5) : void
      {
         this.var_927 = false;
         this.var_255 = param1;
         this.var_1160 = param2;
         ErrorReportStorage.addDebugData("Library url","Library url " + param1.url);
         this._name = parseNameFromUrl(this.var_255.url);
         ErrorReportStorage.addDebugData("Library name","Library name " + this._name);
         if(!this.var_926)
         {
            this.var_926 = true;
            this.resume();
         }
      }
      
      public function resume() : void
      {
         if(this.var_926 && !_disposed)
         {
            this.var_926 = false;
            if(!this.var_927 && this.var_255)
            {
               this.var_1161 = -1;
               this.var_1868 = getTimer();
               this.var_39.load(this.var_255,this.var_16);
            }
         }
      }
      
      protected function retry() : Boolean
      {
         if(!this.var_927 && !_disposed && this.var_1160 > 0)
         {
            try
            {
               this.var_39.close();
               this.var_39.unload();
            }
            catch(e:Error)
            {
            }
            this.addRequestCounterToUrlRequest(this.var_255,const_1302 - this.var_1160);
            if(this.var_2604)
            {
               this.var_255.requestHeaders.push(new URLRequestHeader("pragma","no-cache"));
               this.var_255.requestHeaders.push(new URLRequestHeader("Cache-Control","no-cache"));
               this.var_2604 = false;
            }
            --this.var_1160;
            this.var_410 = 0;
            this.var_39.load(this.var_255,this.var_16);
            return true;
         }
         return false;
      }
      
      public function hasDefinition(param1:String) : Boolean
      {
         var name:String = param1;
         try
         {
            return this.var_39.contentLoaderInfo.applicationDomain.hasDefinition(name);
         }
         catch(e:Error)
         {
            return false;
         }
      }
      
      public function getDefinition(param1:String) : Object
      {
         var name:String = param1;
         try
         {
            if(this.var_39.contentLoaderInfo.applicationDomain.hasDefinition(name))
            {
               return this.var_39.contentLoaderInfo.applicationDomain.getDefinition(name);
            }
         }
         catch(e:Error)
         {
         }
         return null;
      }
      
      protected function loadEventHandler(param1:Event) : void
      {
         var _loc2_:* = null;
         switch(param1.type)
         {
            case Event.INIT:
               this.debug("Load event INIT for file \"" + this.url + "\"");
               this.var_410 |= 0;
               break;
            case Event.COMPLETE:
               this.debug("Load event COMPLETE for file \"" + this.url + "\"");
               this.var_410 |= 0;
               break;
            case Event.ENTER_FRAME:
               break;
            case HTTPStatusEvent.HTTP_STATUS:
               this._status = HTTPStatusEvent(param1).status;
               this.debug("Load event STATUS " + this._status + " for file \"" + this.url + "\"");
               break;
            case Event.UNLOAD:
               this.debug("Load event UNLOAD for file \"" + this.url + "\"");
               dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_UNLOAD,this._status,this.bytesTotal,this.bytesLoaded,this.elapsedTime));
               break;
            case ProgressEvent.PROGRESS:
               this.debug("Load event PROGRESS for file \"" + this.url + "\"");
               dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,this._status,this.bytesTotal,this.bytesLoaded,this.elapsedTime));
               break;
            case IOErrorEvent.IO_ERROR:
               this.debug("Load event IO ERROR for file \"" + this.url + "\"");
               if(!this.handleHttpStatus(this._status))
               {
                  this.var_1161 = getTimer();
                  this.failure("IO Error, send or load operation failed for file \"" + this.url + "\"");
                  this.removeEventListeners();
               }
               break;
            case SecurityErrorEvent.SECURITY_ERROR:
               this.var_1161 = getTimer();
               this.failure("Security Error, security violation with file \"" + this.url + "\"");
               this.removeEventListeners();
               break;
            case TimerEvent.TIMER:
               _loc2_ = TimerEvent(param1).target as Timer;
               _loc2_.removeEventListener(TimerEvent.TIMER,this.loadEventHandler);
               _loc2_.stop();
               if(!_disposed)
               {
                  this.var_410 = LibraryLoader.name_2;
                  this.loadEventHandler(new Event(Event.COMPLETE));
               }
               return;
            default:
               Logger.log("LibraryLoader::loadEventHandler(" + param1 + ")");
         }
         if(this.var_410 == LibraryLoader.const_1519)
         {
            if(this.analyzeLibrary())
            {
               this.var_410 |= 0;
            }
         }
         if(this.var_410 == LibraryLoader.name_2)
         {
            if(this.prepareLibrary())
            {
               this.var_927 = true;
               this.var_1161 = getTimer();
               this.removeEventListeners();
               dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,this._status,this.bytesTotal,this.bytesLoaded,this.elapsedTime));
               dispatchEvent(new Event(LIBRARY_LOADER_FINALIZE));
            }
         }
      }
      
      protected function analyzeLibrary() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         this.debug("Analyzing library \"" + this._name + "\", content " + (this.content is MovieClip ? "is" : "is not") + " a MovieClip");
         this.debug("\tBytes loaded: " + this.var_39.contentLoaderInfo.bytesLoaded + "/" + this.var_39.contentLoaderInfo.bytesTotal);
         if(this.content is MovieClip)
         {
            _loc1_ = this.content as MovieClip;
            _loc3_ = _loc1_.currentLabels;
            this.debug("\tLibrary \"" + this._name + "\" is in frame " + _loc1_.currentFrame + "(" + _loc1_.currentLabel + ")");
            if(_loc3_.length > 1)
            {
               _loc4_ = 0;
               while(_loc4_ < _loc3_.length)
               {
                  _loc2_ = _loc3_[_loc4_] as FrameLabel;
                  if(_loc2_.name == this._name)
                  {
                     if(_loc2_.frame != _loc1_.currentFrame)
                     {
                        _loc1_.addEventListener(Event.ENTER_FRAME,this.loadEventHandler);
                        return false;
                     }
                  }
                  _loc4_++;
               }
            }
         }
         return true;
      }
      
      protected function prepareLibrary() : Boolean
      {
         var xmlClass:Class = null;
         this.debug("Preparing library \"" + this._name + "\"");
         this.var_614 = this.getDefinition(this._name) as Class;
         if(this.var_614 == null)
         {
            if(!this.retry())
            {
               this.failure("Failed to find resource class \"" + this._name + "\" from library " + this.var_255.url + "!");
            }
            return false;
         }
         try
         {
            xmlClass = this.var_614.manifest as Class;
            if(xmlClass == null)
            {
               return false;
            }
         }
         catch(e:Error)
         {
            if(!retry())
            {
               failure("Failed to find embedded manifest.xml from library undefined!");
            }
            return false;
         }
         var bytes:ByteArray = new xmlClass() as ByteArray;
         try
         {
            this.var_744 = new XML(bytes.readUTFBytes(bytes.length));
         }
         catch(e:Error)
         {
            if(!retry())
            {
               failure("Failed to extract manifest.xml from library " + _name + "!\n" + e.message);
            }
            return false;
         }
         return true;
      }
      
      protected function handleHttpStatus(param1:int) : Boolean
      {
         if(param1 == 0 || param1 >= 400)
         {
            if(this.retry())
            {
               return true;
            }
            this.failure("HTTP Error " + param1 + " \"" + this.var_39.contentLoaderInfo.url + "\"");
            this.removeEventListeners();
         }
         return false;
      }
      
      protected function addRequestCounterToUrlRequest(param1:URLRequest, param2:int) : void
      {
         var _loc9_:int = 0;
         var _loc11_:* = null;
         if(param1.url == null || param1.url == "")
         {
            return;
         }
         var _loc3_:Array = param1.url.split("?");
         var _loc4_:String = _loc3_[0];
         var _loc5_:String = "";
         if(_loc3_.length > 1)
         {
            _loc5_ = _loc3_[1];
         }
         var _loc7_:Array = _loc5_.split("&");
         var _loc8_:Boolean = false;
         _loc9_ = 0;
         while(_loc9_ < _loc7_.length)
         {
            _loc11_ = _loc7_[_loc9_];
            if(_loc11_.indexOf("counterparameter=") >= 0)
            {
               _loc11_ = "counterparameter=" + param2.toString();
               _loc7_[_loc9_] = _loc11_;
               _loc8_ = true;
               break;
            }
            _loc9_++;
         }
         if(!_loc8_)
         {
            _loc7_.push("counterparameter=" + param2);
         }
         var _loc10_:String = _loc4_;
         _loc9_ = 0;
         while(_loc9_ < _loc7_.length)
         {
            if(_loc9_ == 0)
            {
               _loc10_ = _loc10_ + "?" + _loc7_[_loc9_];
            }
            else
            {
               _loc10_ = _loc10_ + "&" + _loc7_[_loc9_];
            }
            _loc9_++;
         }
         param1.url = _loc10_;
      }
      
      protected function removeEventListeners() : void
      {
         if(this.var_39)
         {
            if(this.var_39.content != null)
            {
               this.var_39.content.removeEventListener(Event.ENTER_FRAME,this.loadEventHandler);
            }
            this.var_39.contentLoaderInfo.removeEventListener(Event.INIT,this.loadEventHandler);
            this.var_39.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.loadEventHandler);
            this.var_39.contentLoaderInfo.removeEventListener(ProgressEvent.PROGRESS,this.loadEventHandler);
            this.var_39.contentLoaderInfo.removeEventListener(Event.UNLOAD,this.loadEventHandler);
            this.var_39.contentLoaderInfo.removeEventListener(HTTPStatusEvent.HTTP_STATUS,this.loadEventHandler);
            this.var_39.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.loadEventHandler);
            this.var_39.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.loadEventHandler);
         }
      }
      
      protected function debug(param1:String) : void
      {
         Core.debug(param1);
         this.var_2602 = param1;
         if(this._debug)
         {
            dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_DEBUG,this._status,this.bytesTotal,this.bytesLoaded,this.elapsedTime));
         }
      }
      
      protected function failure(param1:String) : void
      {
         Core.warning(param1);
         this.var_2603 = param1;
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_ERROR,this._status,this.bytesTotal,this.bytesLoaded,this.elapsedTime));
         dispatchEvent(new Event(LIBRARY_LOADER_FINALIZE));
      }
      
      public function getLastDebugMessage() : String
      {
         return this.var_2602;
      }
      
      public function getLastErrorMessage() : String
      {
         return this.var_2603;
      }
   }
}
