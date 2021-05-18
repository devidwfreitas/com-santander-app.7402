package com.datami.webview;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.ca.android.app.CaMDOHTTPClient;
import com.datami.smi.SdState;
import com.datami.smi.SdStateChangeListener;
import com.datami.smi.SmiResult;
import com.datami.smi.b.m;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

public class SmiWebView extends WebView implements SdStateChangeListener {
  private static final byte[] $ = new byte[] { 
      63, Byte.MIN_VALUE, -11, 83, -42, 11, -13, 3, 75, -48, 
      -17, -19, 12, 9, -21, 21, -18, 16, -15, 9, 
      -7, -4, 58, -39, -3, 0, 32, -29, -19, 19, 
      20, -28, 37, -37, -13, 48, -41, -3, 44, -28, 
      58, -3, 14, -3, -1, 1, 68, -86, 13, 5, 
      68, -72, 7, -13, 10, -8, 7, -13, -5, 3, 
      2, -8, 2, -5, 7, 71, -86, 13, 5, -1, 
      -10, -4, 83, -79, 1, 78, -83, 15, 68, -67, 
      -5, 7, -13, 7, 2, 43, 26, 9, -21, 21, 
      -18, 16, -15, 9, -7, -4, 58, -58, 5, 8, 
      0, -5, 7, 33, -41, 4, 37, -37, -13, 78, 
      -76, 2, -3, 16, 60, 2, -15, 0, 11, -5, 
      7, 71, -86, 13, 5, -1, -10, 79, -72, 7, 
      -13, 10, -8, 7, -13, 82, -82, 13, -14, 4, 
      -6, 3, 15, -2, 69, -70, 5, -8, -3, 7, 
      1, 42, 26, -2, 5, 84, -86, 13, 5, -1, 
      -10, -4, 83, -67, -5, 3, 2, -8, 6, 1, 
      -19, 5, -1, -10, 79, -73, -10, 83, -67, 2, 
      -2, -5, 3, 1, -9, -9, 4, 12, 9, -21, 
      21, -18, 16, -15, 9, -7, -4, 58, -58, 5, 
      8, 0, -5, 7, 33, -41, 4, 37, -37, -13, 
      78, -62, 5, -11, -7, 14, 60, -9, 4, 73, 
      -87, 18, 3, -20, 13, 4, -18, 87, -67, -9, 
      3, 4, -9, -6, 84, -73, -10, 83, -83, 14, 
      -15, 4, 66, -86, 13, 5, -1, -10, -4, 83, 
      -67, -5, 3, 2, -8, 6, 1, -12, 1, -6, 
      11, -5, -7, 16, 34, -41, 3, 6, -8, 6, 
      1, 9, -21, 21, -18, 16, -15, 9, -7, -4, 
      58, 5, -2, -2, 3, -13, 0, 4, 5, -19, 
      5, -1, -10, 79, -73, -10, 83, -78, -1, -5, 
      84, -67, 2, -2, -5, 3, 1, 9, -21, 21, 
      -18, 16, -15, 9, -7, -4, 58, -39, -3, 0, 
      32, -29, -19, 19, 20, -28, 37, -37, -13, 48, 
      -41, -3, 25, -27, 76, -5, 5, -12, 0, 4, 
      54, 11, 0, -68, 64, 5, -51, -12, 12, -25, 
      11, 1, 13, -22, 4, 69, -53, -12, 2, 62, 
      -68, 6, 4, -10, 15, -7, 62, -69, 13, -7, 
      7, 4, -18, 14, 54, -59, -9, 68, -1, 2, 
      -7, 6, -50, -13, 10, -14, 3, 6, 5, 55, 
      -73, 13, 5, -1, -10, 66, -59, 7, -13, 10, 
      -8, 7, -13, 69, -70, 15, 55, -64, 4, -5, 
      64, -60, -9 };
  
  private static int $$ = 98;
  
  private static final String TAG = $(-$[51], 52, 153) + SmiWebView.class.getSimpleName();
  
  private static final boolean isAndroidKKBelow;
  
  private static final boolean isAndroidLandAbove;
  
  private static String jsToLoad = "";
  
  private static final String jsUrl = "http://s3.amazonaws.com/smisdk-release/js/0.5/android-video-handler-sd-min.js";
  
  private boolean bViewGone = false;
  
  private final Set cachedVideos = Collections.synchronizedSet(new HashSet());
  
  private Context mContext;
  
  private WebViewClient viewClient;
  
  private static String $(int paramInt1, int paramInt2, int paramInt3) {
    int i;
    paramInt3 = 336 - paramInt3;
    paramInt1 = 77 - paramInt1;
    byte[] arrayOfByte2 = $;
    byte[] arrayOfByte1 = new byte[paramInt1];
    int j = paramInt1 - 1;
    if (arrayOfByte2 == null) {
      paramInt1 = 0;
      paramInt2 = paramInt3;
      i = paramInt3;
      paramInt3 = j;
    } else {
      i = 0;
      paramInt1 = paramInt2 + 39;
      paramInt2 = i;
      arrayOfByte1[paramInt2] = (byte)paramInt1;
      int m = paramInt3 + 1;
    } 
    i += -paramInt3;
    paramInt3 = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = i;
    arrayOfByte1[paramInt2] = (byte)paramInt1;
    int k = paramInt3 + 1;
  }
  
  static {
    if (Build.VERSION.SDK_INT < 19) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    isAndroidKKBelow = bool1;
    if (Build.VERSION.SDK_INT > 20) {
      bool1 = bool2;
    } else {
      bool1 = false;
    } 
    isAndroidLandAbove = bool1;
  }
  
  public SmiWebView(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public SmiWebView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    m.a(this);
    addJavascriptInterface(new e(this), $($[359], $[114], $[127] + 1));
  }
  
  private boolean containsCachedVideo(String paramString) {
    if (this.cachedVideos == null || this.cachedVideos.isEmpty())
      return false; 
    Iterator<String> iterator = this.cachedVideos.iterator();
    while (iterator.hasNext()) {
      if (paramString.contains(iterator.next())) {
        $($[359], $[35] - 1, 167);
        return true;
      } 
    } 
    $($[22], $[35] - 1, $[35]);
    return false;
  }
  
  private String getDatamiJS() {
    try {
      byte b = $[25];
      HttpGet httpGet = new HttpGet($(b, b | 0x41, $[25]));
      return EntityUtils.toString(CaMDOHTTPClient.execute((HttpClient)new DefaultHttpClient(), (HttpUriRequest)httpGet).getEntity());
    } catch (Exception exception) {
      String str = TAG;
      StringBuilder stringBuilder = new StringBuilder();
      byte b1 = $[32];
      byte b2 = $[344];
      Log.i(str, stringBuilder.append($(b1 + 1, b2, b2 | 0x9E)).append(exception).toString());
      return "";
    } 
  }
  
  private String getVideoId(String paramString) {
    paramString = Uri.parse(paramString).getPath();
    if (paramString == null)
      throw new Exception($(-$[79], -$[333], 333)); 
    byte b1 = $[144];
    byte b2 = $[0];
    paramString.contains($(b1, b2, b2 & 0xF8));
    return paramString.substring(paramString.lastIndexOf('/') + 1, paramString.length());
  }
  
  private void handleOnChange(SmiResult paramSmiResult) {
    boolean bool = true;
    if (!isAndroidLandAbove) {
      Log.i(TAG, $($[35] - 1, $[114], 279) + paramSmiResult.getSdState());
      loadVideoHandler(true);
      if (paramSmiResult.getSdState() == SdState.SD_AVAILABLE) {
        String str1 = m.h();
        String str2 = m.c();
        boolean bool1 = m.H();
        StringBuilder stringBuilder = (new StringBuilder()).append($($[35], -$[79], 324));
        if (!bool1) {
          bool1 = true;
        } else {
          bool1 = false;
        } 
        stringBuilder = stringBuilder.append(bool1).append($($[8], $[49], $$ >>> 1)).append(str1).append($($[8] - 1, $[25], $[60])).append(str2);
        byte b1 = $[8];
        byte b2 = $[25];
        String str3 = stringBuilder.append($(b1, b2, b2 | 0xB8)).toString();
        if (isAndroidKKBelow) {
          bool1 = m.J();
          StringBuilder stringBuilder2 = (new StringBuilder()).append($($[35], -$[79], 30));
          if (!bool1) {
            bool1 = bool;
          } else {
            bool1 = false;
          } 
          StringBuilder stringBuilder1 = stringBuilder2.append(bool1).append($($[8], $[49], $$ >>> 1)).append(str1).append($($[8] - 1, $[25], $[60])).append(str2);
          b1 = $[8];
          b2 = $[25];
          loadUrl(stringBuilder1.append($(b1, b2, b2 | 0xB8)).toString());
          loadUrl(str3);
          loadUrl($($[35], -$[79], $$ | 0x98));
          return;
        } 
        evaluateJavascript(str3, null);
        evaluateJavascript($($[35], -$[79], $$ | 0x98), null);
        return;
      } 
    } else {
      return;
    } 
    if (isAndroidKKBelow) {
      loadUrl($($[35] - 1, -$[79], 149));
      return;
    } 
    evaluateJavascript($($[35] - 1, -$[79], 149), null);
  }
  
  private void loadVideoHandler(boolean paramBoolean) {
    if (!this.bViewGone) {
      if (jsToLoad.isEmpty()) {
        Thread thread = new Thread(new b(this));
        thread.start();
        try {
          thread.join();
        } catch (InterruptedException interruptedException) {}
      } 
      if (!jsToLoad.isEmpty() && paramBoolean) {
        String str = $($[242], -$[79], $[242]) + jsToLoad;
        if (isAndroidKKBelow) {
          loadUrl(str);
        } else {
          evaluateJavascript(str, null);
        } 
        $(-$[375], $[144], 296);
        return;
      } 
    } 
  }
  
  private void modifyVideoElements() {
    (new Handler(this.mContext.getMainLooper())).post(new a(this));
  }
  
  private void modifyVideoElementsOnUIThread() {
    String str;
    boolean bool = true;
    if (!isAndroidLandAbove && m.U()) {
      loadVideoHandler(true);
      String str1 = m.h();
      String str2 = m.c();
      boolean bool1 = m.H();
      StringBuilder stringBuilder = (new StringBuilder()).append($($[35], -$[79], 324));
      if (!bool1) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      stringBuilder = stringBuilder.append(bool1).append($($[8], $[49], $$ >>> 1)).append(str1).append($($[8] - 1, $[25], $[60])).append(str2);
      byte b1 = $[8];
      byte b2 = $[25];
      str = stringBuilder.append($(b1, b2, b2 | 0xB8)).toString();
      if (isAndroidKKBelow) {
        bool1 = m.J();
        StringBuilder stringBuilder2 = (new StringBuilder()).append($($[35], -$[79], 30));
        if (!bool1) {
          bool1 = bool;
        } else {
          bool1 = false;
        } 
        StringBuilder stringBuilder1 = stringBuilder2.append(bool1).append($($[8], $[49], $$ >>> 1)).append(str1).append($($[8] - 1, $[25], $[60])).append(str2);
        b1 = $[8];
        b2 = $[25];
        loadUrl(stringBuilder1.append($(b1, b2, b2 | 0xB8)).toString());
        $($[114], $[135], 183);
        loadUrl(str);
        $($[114], $[0], $$ - 2);
        return;
      } 
    } else {
      return;
    } 
    evaluateJavascript(str, null);
  }
  
  private void updateCachedVideo(String paramString) {
    this.cachedVideos.add(paramString);
  }
  
  public void destroy() {
    $(52, 61, 120);
  }
  
  public void onChange(SmiResult paramSmiResult) {
    if (Build.VERSION.SDK_INT == 19) {
      (new Handler(this.mContext.getMainLooper())).post(new c(this, paramSmiResult));
      return;
    } 
    handleOnChange(paramSmiResult);
  }
  
  public void onWindowVisibilityChanged(int paramInt) {
    super.onWindowVisibilityChanged(paramInt);
    if (paramInt == 8) {
      this.bViewGone = true;
      return;
    } 
    if (paramInt == 0) {
      this.bViewGone = false;
      return;
    } 
  }
  
  public void setWebViewClient(WebViewClient paramWebViewClient) {
    this.viewClient = paramWebViewClient;
    loadVideoHandler(false);
    super.setWebViewClient(new d(this));
    $(52, 61, 120);
  }
  
  static {
    boolean bool1;
    boolean bool2 = true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\webview\SmiWebView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */