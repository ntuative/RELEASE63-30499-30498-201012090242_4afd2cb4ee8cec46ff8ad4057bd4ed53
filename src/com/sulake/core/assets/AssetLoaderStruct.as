package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_783:IAssetLoader;
      
      private var var_1662:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         this.var_1662 = param1;
         this.var_783 = param2;
      }
      
      public function get assetName() : String
      {
         return this.var_1662;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return this.var_783;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_783 != null)
            {
               if(!this.var_783.disposed)
               {
                  this.var_783.dispose();
                  this.var_783 = null;
               }
            }
            super.dispose();
         }
      }
   }
}
