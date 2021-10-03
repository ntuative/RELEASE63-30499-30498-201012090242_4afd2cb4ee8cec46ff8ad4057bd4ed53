package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_878:BigInteger;
      
      private var var_1934:BigInteger;
      
      private var var_1442:BigInteger;
      
      private var var_1933:BigInteger;
      
      private var var_1187:BigInteger;
      
      private var var_1443:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1187 = param1;
         this.var_1443 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1187.toString() + ",generator: " + this.var_1443.toString() + ",secret: " + param1);
         this.var_878 = new BigInteger();
         this.var_878.fromRadix(param1,param2);
         this.var_1934 = this.var_1443.modPow(this.var_878,this.var_1187);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1442 = new BigInteger();
         this.var_1442.fromRadix(param1,param2);
         this.var_1933 = this.var_1442.modPow(this.var_878,this.var_1187);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_1934.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_1933.toRadix(param1);
      }
   }
}
