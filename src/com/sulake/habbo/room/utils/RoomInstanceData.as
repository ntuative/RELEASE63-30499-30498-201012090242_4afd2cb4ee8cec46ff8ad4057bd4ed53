package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_630:TileHeightMap = null;
      
      private var var_952:LegacyWallGeometry = null;
      
      private var var_953:RoomCamera = null;
      
      private var var_631:SelectedRoomObjectData = null;
      
      private var var_632:SelectedRoomObjectData = null;
      
      private var var_1998:String = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_952 = new LegacyWallGeometry();
         this.var_953 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_630;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_630 != null)
         {
            this.var_630.dispose();
         }
         this.var_630 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_952;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_953;
      }
      
      public function get worldType() : String
      {
         return this.var_1998;
      }
      
      public function set worldType(param1:String) : void
      {
         this.var_1998 = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_631;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_631 != null)
         {
            this.var_631.dispose();
         }
         this.var_631 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_632;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_632 != null)
         {
            this.var_632.dispose();
         }
         this.var_632 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_630 != null)
         {
            this.var_630.dispose();
            this.var_630 = null;
         }
         if(this.var_952 != null)
         {
            this.var_952.dispose();
            this.var_952 = null;
         }
         if(this.var_953 != null)
         {
            this.var_953.dispose();
            this.var_953 = null;
         }
         if(this.var_631 != null)
         {
            this.var_631.dispose();
            this.var_631 = null;
         }
         if(this.var_632 != null)
         {
            this.var_632.dispose();
            this.var_632 = null;
         }
      }
   }
}
