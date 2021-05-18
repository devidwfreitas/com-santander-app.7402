package com.datami.smi.c;

import android.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.PBEKeySpec;

public final class a {
  private static final String a = "AES";
  
  private static final String b = "Crypto";
  
  private static final byte[] d = new byte[] { 
      89, -27, 42, 21, -40, 0, 16, 3, 12, 21, 
      -2, 14, 5, 27, -30, -11, -4, 19, 39, -30, 
      19, 5, 23, 18, 14, 23, 3, -7 };
  
  private static int e = 243;
  
  private String c;
  
  public a(String paramString) {
    this.c = paramString;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    byte[] arrayOfByte1 = d;
    int i = 80 - paramInt2;
    int k = 18 - paramInt1 * 3;
    paramInt3 = 25 - paramInt3;
    byte[] arrayOfByte2 = new byte[k];
    if (arrayOfByte1 == null) {
      paramInt1 = 0;
      paramInt2 = paramInt3;
    } else {
      paramInt2 = 0;
      paramInt1 = i;
      int m = paramInt3 + 1;
      arrayOfByte2[paramInt2] = (byte)paramInt1;
    } 
    i = -i + paramInt3 + 7;
    paramInt3 = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = i;
    int j = paramInt3 + 1;
    arrayOfByte2[paramInt2] = (byte)paramInt1;
  }
  
  private SecretKey a() {
    byte b = d[5];
    return SecretKeyFactory.getInstance(a(b, b, b | 0x11)).generateSecret(new PBEKeySpec(this.c.toCharArray(), this.c.getBytes(), 20, 256));
  }
  
  public final String a(String paramString) {
    byte b = d[12];
    Cipher cipher = Cipher.getInstance(a(b, b | 0xA, d[5]));
    cipher.init(1, a());
    return new String(Base64.encodeToString(cipher.doFinal(paramString.getBytes()), 0));
  }
  
  public final String b(String paramString) {
    byte b = d[12];
    Cipher cipher = Cipher.getInstance(a(b, b | 0xA, d[5]));
    cipher.init(2, a());
    return new String(cipher.doFinal(Base64.decode(paramString.getBytes(), 0)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */