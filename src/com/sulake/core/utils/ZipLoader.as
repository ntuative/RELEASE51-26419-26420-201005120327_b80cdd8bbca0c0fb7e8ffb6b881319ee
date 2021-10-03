package com.sulake.core.utils
{
   import deng.fzip.FZip;
   import deng.fzip.FZipErrorEvent;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.net.URLRequest;
   import flash.net.URLRequestHeader;
   import flash.system.LoaderContext;
   import flash.utils.getQualifiedClassName;
   
   public class ZipLoader extends LibraryLoader
   {
       
      
      private var var_475:uint = 0;
      
      private var var_98:FZip;
      
      private var var_1184:Array;
      
      private var var_1767:uint = 0;
      
      private var var_810:int = 0;
      
      private var var_476:uint = 0;
      
      public function ZipLoader(param1:Boolean)
      {
         super(param1);
         var_1184 = new Array();
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         debug("Load event IO ERROR for file \"undefined\"");
         if(!handleHttpStatus(var_163))
         {
            failure("IO Error, load operation failed for file \"undefined\" (" + var_475 + "/" + var_476 + " bytes): " + param1.text);
            removeEventListeners();
         }
      }
      
      override public function get bytesLoaded() : uint
      {
         return var_475;
      }
      
      private function onParseError(param1:FZipErrorEvent) : void
      {
         debug("Load event parse error for file \"undefined\"");
         if(!handleHttpStatus(var_163))
         {
            failure("Parse Error, load operation failed for file \"undefined\" (" + var_475 + "/" + var_476 + " bytes): " + param1.text);
            removeEventListeners();
         }
      }
      
      override protected function loadEventHandler(param1:Event) : void
      {
      }
      
      override public function get bytesTotal() : uint
      {
         return var_476;
      }
      
      public function get resources() : Array
      {
         return var_1184;
      }
      
      override protected function removeEventListeners() : void
      {
         if(var_98)
         {
            var_98.removeEventListener(Event.COMPLETE,onComplete);
            var_98.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
            var_98.removeEventListener(ProgressEvent.PROGRESS,onProgress);
            var_98.removeEventListener(HTTPStatusEvent.HTTP_STATUS,onHTTPStatus);
            var_98.removeEventListener(FZipErrorEvent.const_114,onParseError);
         }
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var name:String = null;
         var event:Event = param1;
         try
         {
            name = getQualifiedClassName(var_15.content);
            var_1184.push(var_15.contentLoaderInfo.applicationDomain.getDefinition(name));
            ++var_810;
            if(var_1184.length == var_1767)
            {
               var_15.contentLoaderInfo.removeEventListener(Event.COMPLETE,onLoaderComplete);
               var_15.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,onIOError);
               removeEventListeners();
               dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_COMPLETE,0,var_476,var_475));
            }
            else
            {
               var_15.loadBytes(var_98.getFileAt(var_810).content);
            }
         }
         catch(e:Error)
         {
            failure("Crashed on ZipLoader.onLoaderComplete: \"undefined\" (" + var_475 + "/" + var_476 + " bytes): " + e.message);
         }
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         var_476 = param1.bytesTotal;
         var_475 = param1.bytesLoaded;
         debug("Load event PROGRESS for file \"undefined\"");
         dispatchEvent(new LibraryLoaderEvent(LibraryLoaderEvent.LIBRARY_LOADER_EVENT_PROGRESS,0,var_476,var_475));
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null, param3:int = 5) : void
      {
         ErrorReportStorage.addDebugData("Library url","Library url " + param1.url);
         var_51 = param1;
         _name = parseNameFromUrl(var_51.url);
         var_291 = param3;
         if(var_98)
         {
            var_98.close();
         }
         ErrorReportStorage.addDebugData("Library name","Library name " + _name);
         var_98 = new FZip();
         var_98.addEventListener(Event.COMPLETE,onComplete);
         var_98.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
         var_98.addEventListener(ProgressEvent.PROGRESS,onProgress);
         var_98.addEventListener(HTTPStatusEvent.HTTP_STATUS,onHTTPStatus);
         var_98.addEventListener(FZipErrorEvent.const_114,onParseError);
         var_98.load(var_51);
      }
      
      private function onComplete(param1:Event) : void
      {
         var event:Event = param1;
         var_810 = 0;
         var_1767 = var_98.getFileCount();
         debug("Load event COMPLETE for file \"undefined\"");
         removeEventListeners();
         try
         {
            if(var_15)
            {
               var_15.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoaderComplete);
               var_15.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onIOError);
               var_15.loadBytes(var_98.getFileAt(var_810).content);
            }
         }
         catch(e:Error)
         {
            debug("Failed to extract files from library \"undefined\"");
            if(!handleHttpStatus(var_163))
            {
               failure("Crashed on ZipLoader.onComplete: \"undefined\" (" + var_475 + "/" + var_476 + " bytes): " + e.message);
            }
         }
      }
      
      private function onHTTPStatus(param1:HTTPStatusEvent) : void
      {
         var_163 = param1.status;
         debug("Load event STATUS " + var_163 + " for file \"" + var_51.url + "\"");
      }
      
      override protected function handleHttpStatus(param1:int) : Boolean
      {
         if(param1 == 0 || param1 >= 400)
         {
            if(var_291 > 0)
            {
               if(var_98)
               {
                  var_98.close();
               }
               addRequestCounterToUrlRequest(var_51,const_1051 - var_291);
               if(var_1128)
               {
                  var_51.requestHeaders.push(new URLRequestHeader("pragma","no-cache"));
                  var_51.requestHeaders.push(new URLRequestHeader("Cache-Control","no-cache"));
                  var_1128 = false;
               }
               var_98.load(var_51);
               --var_291;
               return true;
            }
            failure("HTTP Error " + param1 + " \"" + var_51.url + "\" (" + var_475 + "/" + var_476 + " bytes)");
            removeEventListeners();
         }
         return false;
      }
   }
}
