package com.datami.webview;

import android.webkit.JavascriptInterface;

public final class e {
  private static final byte[] b = new byte[] { 
      126, -11, 35, 13, 43, -2, -5, 1, -84, 71, 
      3, -80, 83, -7, -14, -5, 17, -13, 3, -9, 
      -73, 84, -15, -7, -1, 8, -81, 65, -4, 0, 
      3, -5 };
  
  private static int c = 155;
  
  public e(SmiWebView paramSmiWebView) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int i = 29 - paramInt2 * 2;
    byte[] arrayOfByte2 = b;
    paramInt2 = paramInt3 * 3 + 69;
    paramInt1 += 4;
    byte[] arrayOfByte1 = new byte[i];
    int j = i - 1;
    if (arrayOfByte2 == null) {
      boolean bool = false;
      i = paramInt2;
      paramInt3 = j;
      paramInt2 = bool;
    } else {
      paramInt3 = paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = 0;
      int n = paramInt3 + 1;
      arrayOfByte1[paramInt2] = (byte)paramInt1;
      int i1 = paramInt2 + 1;
    } 
    i = paramInt3 + i + 2;
    paramInt3 = paramInt1;
    paramInt1 = i;
    int k = paramInt3 + 1;
    arrayOfByte1[paramInt2] = (byte)paramInt1;
    int m = paramInt2 + 1;
  }
  
  @JavascriptInterface
  private void a(String paramString) {
    byte[] arrayOfByte;
    int j;
    try {
      paramString = SmiWebView.access$000(this.a, paramString);
      SmiWebView.access$100(this.a, paramString);
      return;
    } catch (Exception exception) {
      SmiWebView.access$200();
      byte b2 = b[24];
      byte b1 = b[29];
      k = 29 - b1 * 2;
      byte[] arrayOfByte1 = b;
      i = b1 * 3 + 69;
      j = b2 + 4;
      arrayOfByte = new byte[k];
      int i2 = k - 1;
      if (arrayOfByte1 == null) {
        boolean bool = false;
        m = i;
        k = i2;
        i = j;
        j = bool;
      } else {
        k = j;
        j = 0;
        int i3 = k + 1;
        arrayOfByte[j] = (byte)i;
        int i4 = j + 1;
      } 
    } 
    int m = k + m + 2;
    int k = i;
    int i = m;
    int n = k + 1;
    arrayOfByte[j] = (byte)i;
    int i1 = j + 1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\webview\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */