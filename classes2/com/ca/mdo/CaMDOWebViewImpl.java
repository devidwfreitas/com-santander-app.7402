package com.ca.mdo;

import android.annotation.TargetApi;
import android.os.Process;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.ca.android.app.CaMDOWebViewClient;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

@TargetApi(8)
class CaMDOWebViewImpl {
  private static int uid = Process.myUid();
  
  private static WeakHashMap<WebView, CaMDOWebViewClient> webViewClients_ = new WeakHashMap<WebView, CaMDOWebViewClient>();
  
  private static void checkAndSetCaMDOWebViewClient(WebView paramWebView) {
    try {
      if ((CaMDOWebViewClient)webViewClients_.get(paramWebView) == null)
        setCaMDOWebViewClient(paramWebView, new CaMDOWebViewClient()); 
      return;
    } catch (Throwable throwable) {
      CALog.e("checkAndSetCaMDOWebViewClient: failed", throwable);
      return;
    } 
  }
  
  public static void loadUrl(WebView paramWebView, String paramString) {
    loadUrl(paramWebView, paramString, new HashMap<String, String>());
  }
  
  public static void loadUrl(WebView paramWebView, String paramString, Map<String, String> paramMap) {
    checkAndSetCaMDOWebViewClient(paramWebView);
    if (CAMobileDevOps.sendAPMHeader())
      paramMap.put("x-apm-bt", AppDeviceData.getAPMHeader()); 
    paramWebView.loadUrl(paramString, paramMap);
  }
  
  public static void postUrl(WebView paramWebView, String paramString, byte[] paramArrayOfbyte) {
    checkAndSetCaMDOWebViewClient(paramWebView);
    paramWebView.postUrl(paramString, paramArrayOfbyte);
  }
  
  private static void setCaMDOWebViewClient(WebView paramWebView, CaMDOWebViewClient paramCaMDOWebViewClient) {
    try {
      paramWebView.setWebViewClient((WebViewClient)paramCaMDOWebViewClient);
      webViewClients_.put(paramWebView, paramCaMDOWebViewClient);
      return;
    } catch (Throwable throwable) {
      CALog.e("setCaMDOWebViewClient: failed", throwable);
      return;
    } 
  }
  
  public static void setWebViewClient(WebView paramWebView, WebViewClient paramWebViewClient) {
    setCaMDOWebViewClient(paramWebView, new CaMDOWebViewClient(paramWebViewClient));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\CaMDOWebViewImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */