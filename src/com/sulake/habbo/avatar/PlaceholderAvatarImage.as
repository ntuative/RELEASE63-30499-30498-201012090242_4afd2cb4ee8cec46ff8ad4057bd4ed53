package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_660:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_621)
         {
            _structure = null;
            _assets = null;
            var_228 = null;
            var_254 = null;
            var_562 = null;
            var_501 = null;
            var_287 = null;
            if(!var_1156 && var_38)
            {
               var_38.dispose();
            }
            var_38 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_666 = null;
            var_621 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_660[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_660[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_378:
               switch(_loc3_)
               {
                  case AvatarAction.const_744:
                  case AvatarAction.const_437:
                  case AvatarAction.const_315:
                  case AvatarAction.const_796:
                  case AvatarAction.const_373:
                  case AvatarAction.const_760:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_284:
            case AvatarAction.const_817:
            case AvatarAction.const_212:
            case AvatarAction.const_815:
            case AvatarAction.const_793:
            case AvatarAction.const_819:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
