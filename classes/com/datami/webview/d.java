package com.datami.webview;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.datami.smi.b.m;
import java.net.URL;

final class d extends WebViewClient {
  private static final byte[] b = new byte[] { 
      85, 95, 23, 49, -7, 1, 7, 16, -73, 73, 
      11, 3, 4, 14, 0, 5, -61, 14, -5, 9, 
      5, -4, 12, 5, 7, -13, 9, -49, 59, 18, 
      4 };
  
  private static int c = 164;
  
  d(SmiWebView paramSmiWebView) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int i;
    int j;
    paramInt2 = paramInt2 * 3 + 5;
    paramInt1 += 4;
    byte[] arrayOfByte2 = b;
    byte[] arrayOfByte1 = new byte[paramInt2];
    int k = paramInt2 - 1;
    if (arrayOfByte2 == null) {
      paramInt2 = -1;
      paramInt3 = paramInt1;
      j = k;
      i = paramInt1;
    } else {
      i = paramInt1;
      paramInt1 = 121 - paramInt3;
      paramInt2 = -1;
      paramInt3 = i;
      paramInt3++;
      arrayOfByte1[++paramInt2] = (byte)paramInt1;
    } 
    paramInt1 = i + j - 6;
    paramInt3++;
    arrayOfByte1[++paramInt2] = (byte)paramInt1;
  }
  
  public final void onPageFinished(WebView paramWebView, String paramString) {
    if (SmiWebView.access$600(this.a) != null) {
      SmiWebView.access$600(this.a).onPageFinished(paramWebView, paramString);
      SmiWebView.access$700(this.a);
      SmiWebView.access$200();
      byte b1 = -b[5];
      byte b2 = b[11];
      a(b1, b2, b2);
    } 
  }
  
  public final WebResourceResponse shouldInterceptRequest(WebView paramWebView, String paramString) {
    if (m.U())
      try {
        if ((new URL(paramString)).getHost().contains(a(b[7], b[11] - 1, b[14])) && SmiWebView.access$300()) {
          byte b1 = b[22];
          byte b2 = b[14];
          if (paramString.contains(a(b1, b2, b2 | 0x14)) && !SmiWebView.access$400(this.a, paramString))
            SmiWebView.access$500(this.a); 
        } 
      } catch (Exception exception) {} 
    return (SmiWebView.access$600(this.a) != null) ? SmiWebView.access$600(this.a).shouldInterceptRequest(paramWebView, paramString) : null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\webview\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */