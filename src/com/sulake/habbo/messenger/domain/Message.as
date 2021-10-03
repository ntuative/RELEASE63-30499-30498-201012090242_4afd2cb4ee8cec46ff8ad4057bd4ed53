package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_704:int = 1;
      
      public static const const_630:int = 2;
      
      public static const const_813:int = 3;
      
      public static const const_960:int = 4;
      
      public static const const_588:int = 5;
      
      public static const const_966:int = 6;
       
      
      private var _type:int;
      
      private var var_1107:int;
      
      private var var_1890:String;
      
      private var var_2501:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1107 = param2;
         this.var_1890 = param3;
         this.var_2501 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_1890;
      }
      
      public function get time() : String
      {
         return this.var_2501;
      }
      
      public function get senderId() : int
      {
         return this.var_1107;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
