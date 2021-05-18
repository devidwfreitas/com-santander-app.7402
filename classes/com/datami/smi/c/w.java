package com.datami.smi.c;

import java.util.TimerTask;

final class w extends TimerTask {
  private static final byte[] b = new byte[] { 
      91, 111, -11, -76, -50, 22, -1, -10, -3, 12, 
      -5, 2, 79, 1, -25, 27, 4, 18, -11, -6, 
      -20, -3, 9, -12, 31, -12, -17, 9, 76, -83, 
      12, -3, 9, -12, 83, -69, -2, -8, 14, 2, 
      68 };
  
  private static int c = 16;
  
  w(v paramv) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    paramInt3 = paramInt3 * 12 + 4;
    paramInt1 = paramInt1 * 13 + 13;
    byte[] arrayOfByte2 = b;
    byte[] arrayOfByte1 = new byte[paramInt1];
    int j = paramInt1 - 1;
    if (arrayOfByte2 == null) {
      paramInt2 = 0;
      paramInt1 = paramInt3;
      i = paramInt3;
      paramInt3 = j;
    } else {
      paramInt1 = paramInt3;
      paramInt3 = 0;
      paramInt2 = 85 - paramInt2 * 16;
      arrayOfByte1[paramInt3] = (byte)paramInt2;
      int m = paramInt3 + 1;
    } 
    int i = -paramInt3 + i + 1;
    paramInt1++;
    paramInt3 = paramInt2;
    paramInt2 = i;
    arrayOfByte1[paramInt3] = (byte)paramInt2;
    int k = paramInt3 + 1;
  }
  
  public final void run() {
    byte b = b[13];
    a(b, b - 1, b[13]);
    v.a(this.a, new u(v.a(this.a), v.b(this.a)));
    try {
      v.c(this.a).join();
      v.c(this.a).start();
      return;
    } catch (InterruptedException interruptedException) {
      StringBuilder stringBuilder = new StringBuilder();
      b = b[13];
      byte b1 = b[13];
      stringBuilder.append(a(b - 1, b1, b1 - 1)).append(interruptedException);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\c\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */