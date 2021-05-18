package com.datami.smi.h;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Looper;
import java.io.IOException;

public final class a {
  private static final byte[] a = new byte[] { 
      102, 9, -112, -92, -32, -15, -2, -3, -7, 82, 
      -68, -5, 67, -69, 0, -13, -2, 5, -1, 66, 
      -72, -14, 1, 0, 75, -86, 10, 1, 67, -79, 
      10, -10, -7, 76, -86, 10, -12, 11, 2, -5, 
      -14, 0, 61, -59, -10, -2, 6, -7, 5, 53, 
      -53, -15, 8, -16, 1, 4, 3, 52, -59, -8, 
      -8, -14, 0, 61, -59, -10, -2, 6, -7, 5, 
      53, -53, -15, 8, -16, 1, 4, 3, 52, -59, 
      -8, -8, 67, -53, -5, -17, 67, -61, 3, -3, 
      -11, -8, 9, 1, -5, 2, -15, 66, -71, 12, 
      -15, -6, 11, 4, -4, 53, -39, -3, 17, -19, 
      -4, -42, -2, 6, -7, 5, 67, -50, -30, 9, 
      -26, 87, -69, -14, -1, -2, 7, 0, -19, 9, 
      -8, -1, 76, -72, 3, -10, -5, 5, -1, -14, 
      0, 61, -53, -15, 8, -16, 1, 4, 3, 52, 
      -74, 15, -11, 8, -7, -7, 5 };
  
  private static int b = 213;
  
  public static c a(Context paramContext) {
    if (Looper.myLooper() == Looper.getMainLooper()) {
      byte b1 = a[52];
      byte b2 = a[18];
      throw new IllegalStateException(a(b1, b2, b2 & 0x12));
    } 
    try {
      PackageManager packageManager = paramContext.getPackageManager();
      byte b = a[14];
      packageManager.getPackageInfo(a(b, b | 0x86, a[14]), 0);
      d d = new d(null);
      b = a[14];
      Intent intent = new Intent(a(b, b | 0x38, -a[4]));
      b = a[14];
      intent.setPackage(a(b, b | 0x23, a[56]));
      if (paramContext.bindService(intent, d, 1))
        try {
          e e = new e(d.a());
          return new c(e.a(), e.b());
        } catch (Exception exception) {
          throw exception;
        } finally {
          paramContext.unbindService(d);
        }  
    } catch (Exception exception) {
      throw exception;
    } 
    throw new IOException(a(a[126], b >>> 1, a[26]));
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    byte[] arrayOfByte1 = a;
    paramInt2 += 4;
    int i = -1;
    int k = paramInt3 + 19;
    int j = 99 - paramInt1 * 4;
    byte[] arrayOfByte2 = new byte[k];
    if (arrayOfByte1 == null) {
      paramInt3 = paramInt2;
      paramInt1 = i;
    } else {
      paramInt1 = j;
      paramInt3 = paramInt2;
      i++;
      byte b1 = (byte)paramInt1;
      paramInt3++;
      arrayOfByte2[i] = b1;
    } 
    paramInt2 = -paramInt2 + j - 2;
    i = paramInt1;
    paramInt1 = paramInt2;
    i++;
    byte b = (byte)paramInt1;
    paramInt3++;
    arrayOfByte2[i] = b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\h\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */