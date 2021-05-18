package com.datami.smi.b;

import android.os.AsyncTask;
import android.util.Log;
import java.net.InetAddress;
import java.net.UnknownHostException;

final class p extends AsyncTask {
  private static final byte[] a = new byte[] { 
      101, 24, -58, -119, 7, 4, 1, -84, 82, -13, 
      14, -4, -3, 10, -17, -69, 70, -5, 8, 3, 
      -7, -1, -68, 70, 9, 3, -82, 7, 4, 1, 
      -84, 82, -13, 14, -4, -3, 10, -17, -69, 83, 
      2, -18, 0, 2, 14, 0, -57, -26 };
  
  private static int b = 231;
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int i = -1;
    int k = 24 - paramInt1 * 2;
    byte[] arrayOfByte1 = a;
    int j = paramInt3 * 2 + 104;
    paramInt3 = 26 - paramInt2 * 23;
    byte[] arrayOfByte2 = new byte[k];
    if (arrayOfByte1 == null) {
      paramInt2 = paramInt3;
      paramInt1 = i;
    } else {
      paramInt2 = paramInt3;
      paramInt1 = j;
      i++;
      paramInt2++;
      arrayOfByte2[i] = (byte)paramInt1;
    } 
    paramInt3 = j + paramInt3;
    i = paramInt1;
    paramInt1 = paramInt3;
    i++;
    paramInt2++;
    arrayOfByte2[i] = (byte)paramInt1;
  }
  
  private static String a(String... paramVarArgs) {
    try {
      InetAddress inetAddress = InetAddress.getByName(paramVarArgs[0]);
      String str = m.J;
      StringBuilder stringBuilder = new StringBuilder();
      byte b1 = a[6];
      byte b2 = a[42];
      Log.i(str, stringBuilder.append(a(b1, b2, b2)).append(paramVarArgs[0]).toString());
      return inetAddress.getHostAddress();
    } catch (UnknownHostException unknownHostException) {
      String str = m.J;
      (new StringBuilder()).append(a(a[42], a[6], a[42])).append(paramVarArgs[0]);
      return null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */