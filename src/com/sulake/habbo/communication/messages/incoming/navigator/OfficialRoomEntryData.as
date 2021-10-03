package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1060:int = 1;
      
      public static const const_679:int = 2;
      
      public static const const_775:int = 3;
      
      public static const const_1278:int = 4;
       
      
      private var _index:int;
      
      private var var_2468:String;
      
      private var var_2467:String;
      
      private var var_2469:Boolean;
      
      private var var_2466:String;
      
      private var var_820:String;
      
      private var var_2470:int;
      
      private var var_2171:int;
      
      private var _type:int;
      
      private var var_2329:String;
      
      private var var_881:GuestRoomData;
      
      private var var_882:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2468 = param1.readString();
         this.var_2467 = param1.readString();
         this.var_2469 = param1.readInteger() == 1;
         this.var_2466 = param1.readString();
         this.var_820 = param1.readString();
         this.var_2470 = param1.readInteger();
         this.var_2171 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1060)
         {
            this.var_2329 = param1.readString();
         }
         else if(this._type == const_775)
         {
            this.var_882 = new PublicRoomData(param1);
         }
         else if(this._type == const_679)
         {
            this.var_881 = new GuestRoomData(param1);
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_881 != null)
         {
            this.var_881.dispose();
            this.var_881 = null;
         }
         if(this.var_882 != null)
         {
            this.var_882.dispose();
            this.var_882 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2468;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2467;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2469;
      }
      
      public function get picText() : String
      {
         return this.var_2466;
      }
      
      public function get picRef() : String
      {
         return this.var_820;
      }
      
      public function get folderId() : int
      {
         return this.var_2470;
      }
      
      public function get tag() : String
      {
         return this.var_2329;
      }
      
      public function get userCount() : int
      {
         return this.var_2171;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_881;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_882;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1060)
         {
            return 0;
         }
         if(this.type == const_679)
         {
            return this.var_881.maxUserCount;
         }
         if(this.type == const_775)
         {
            return this.var_882.maxUsers;
         }
         return 0;
      }
   }
}
