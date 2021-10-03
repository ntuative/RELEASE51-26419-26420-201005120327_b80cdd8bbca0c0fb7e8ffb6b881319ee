package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1291:BigInteger;
      
      private var var_577:BigInteger;
      
      private var var_1529:BigInteger;
      
      private var var_1530:BigInteger;
      
      private var var_2031:BigInteger;
      
      private var var_2032:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1291 = param1;
         var_1529 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2031.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1530 = new BigInteger();
         var_1530.fromRadix(param1,param2);
         var_2031 = var_1530.modPow(var_577,var_1291);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_2032.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1291.toString() + ",generator: " + var_1529.toString() + ",secret: " + param1);
         var_577 = new BigInteger();
         var_577.fromRadix(param1,param2);
         var_2032 = var_1529.modPow(var_577,var_1291);
         return true;
      }
   }
}
