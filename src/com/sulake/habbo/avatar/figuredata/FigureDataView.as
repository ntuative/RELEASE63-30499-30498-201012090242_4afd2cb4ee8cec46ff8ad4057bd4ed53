package com.sulake.habbo.avatar.figuredata
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class FigureDataView
   {
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var _window:IWindowContainer;
      
      private var var_391:IBitmapWrapperWindow;
      
      private var var_959:BitmapData;
      
      public function FigureDataView(param1:IHabboWindowManager, param2:IAssetLibrary)
      {
         super();
         this._assetLibrary = param2;
         this._windowManager = param1;
         var _loc3_:XmlAsset = this._assetLibrary.getAssetByName("AvatarEditorImage") as XmlAsset;
         if(_loc3_)
         {
            this._window = IWindowContainer(this._windowManager.buildFromXML(_loc3_.content as XML));
         }
         var _loc4_:BitmapDataAsset = this._assetLibrary.getAssetByName("platform") as BitmapDataAsset;
         if(_loc4_)
         {
            this.var_959 = _loc4_.content as BitmapData;
         }
         if(this._window != null)
         {
            this.var_391 = this._window.findChildByName("bitmap") as IBitmapWrapperWindow;
         }
      }
      
      public function udpate(param1:BitmapData) : void
      {
         if(this.var_391 && this.var_959)
         {
            this.var_391.bitmap = new BitmapData(this.var_391.width,this.var_391.height,true,16777215);
            this.var_391.bitmap.copyPixels(this.var_959,this.var_959.rect,new Point(0,this.var_391.height - this.var_959.height - 8));
            this.var_391.bitmap.copyPixels(param1,param1.rect,new Point(4,0),null,null,true);
         }
      }
      
      public function get window() : IWindowContainer
      {
         return this._window;
      }
   }
}
