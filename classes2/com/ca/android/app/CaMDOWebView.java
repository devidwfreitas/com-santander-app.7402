package com.ca.android.app;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.ca.mdo.CALog;
import com.ca.mdo.CAMobileDevOps;
import com.ca.mdo.SDK;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.xwalk.core.internal.XWalkResourceClientInternal;
import org.xwalk.core.internal.XWalkUIClientInternal;
import org.xwalk.core.internal.XWalkViewInternal;
import org.xwalk.core.internal.XWalkWebResourceRequestInternal;
import org.xwalk.core.internal.XWalkWebResourceResponseInternal;

@TargetApi(8)
public class CaMDOWebView {
  private static Handler handler;
  
  static HashMap<String, DataObject> kNetworkMap;
  
  static HashMap<String, Long> kPageMap;
  
  public static AtomicReference lastXWalkInternalView;
  
  private static int uid = Process.myUid();
  
  long rxBytesStart = 0L;
  
  long txBytesStart = 0L;
  
  static {
    lastXWalkInternalView = new AtomicReference();
    handler = new Handler(Looper.getMainLooper());
    kPageMap = new HashMap<String, Long>();
    kNetworkMap = new HashMap<String, DataObject>();
  }
  
  public static void loadUrl(WebView paramWebView, String paramString) {
    SDK.getAgent().loadUrlOnWebView(paramWebView, paramString);
  }
  
  public static void loadUrl(WebView paramWebView, String paramString, Map<String, String> paramMap) {
    SDK.getAgent().loadUrlOnWebView(paramWebView, paramString, paramMap);
  }
  
  public static void onPageLoadStarted(XWalkUIClientInternal paramXWalkUIClientInternal, XWalkViewInternal paramXWalkViewInternal, String paramString) {
    CALog.d("onPageLoadStarted: " + paramString);
    try {
      kPageMap.put(paramString, Long.valueOf(System.currentTimeMillis()));
      paramXWalkUIClientInternal.onPageLoadStarted(paramXWalkViewInternal, paramString);
      paramXWalkViewInternal.addJavascriptInterface(new JSCaMDOIntegration(), "CaMaaAndroidIntegration");
      return;
    } catch (Throwable throwable) {
      CALog.e("XXXXXXXX: " + throwable);
      return;
    } 
  }
  
  public static void onPageLoadStopped(XWalkUIClientInternal paramXWalkUIClientInternal, XWalkViewInternal paramXWalkViewInternal, String paramString, XWalkUIClientInternal.LoadStatusInternal paramLoadStatusInternal) {
    CALog.d("onPageLoadStopped: " + paramString);
    long l = 0L;
    try {
      if (kPageMap.get(paramString) != null)
        l = ((Long)kPageMap.get(paramString)).longValue(); 
      long l1 = l;
      if (l <= 0L)
        l1 = System.currentTimeMillis(); 
      if (paramXWalkViewInternal != null)
        lastXWalkInternalView.set(paramXWalkViewInternal); 
      paramXWalkViewInternal.addJavascriptInterface(new JSCaMDOIntegration(), "CaMaaAndroidIntegration");
      paramXWalkUIClientInternal.onPageLoadStopped(paramXWalkViewInternal, paramString, paramLoadStatusInternal);
      int i = (int)(System.currentTimeMillis() - l1);
      if (CAMobileDevOps.isScreenshotPolicyEnabled()) {
        registerxWalkBitMapCallback(paramXWalkViewInternal, paramString, i);
        return;
      } 
      SDK.getAgent().viewLoaded(paramString, i);
      return;
    } catch (Throwable throwable) {
      CALog.e("Exception in onPageLoadStopped: " + throwable);
      return;
    } 
  }
  
  public static void onReceivedResponseHeaders(XWalkResourceClientInternal paramXWalkResourceClientInternal, XWalkViewInternal paramXWalkViewInternal, XWalkWebResourceRequestInternal paramXWalkWebResourceRequestInternal, XWalkWebResourceResponseInternal paramXWalkWebResourceResponseInternal) {
    CALog.d("In CrossWalk onReceivedResponseHeaders");
    try {
      String str = paramXWalkWebResourceRequestInternal.getUrl().toString();
      DataObject dataObject = kNetworkMap.get(str);
      long l1 = TrafficStats.getUidRxBytes(uid);
      long l3 = TrafficStats.getUidTxBytes(uid);
      long l2 = System.currentTimeMillis();
      if (dataObject != null) {
        l1 = dataObject.rxBytes;
        l3 = dataObject.txBytes;
        l2 = dataObject.startTime;
        CALog.d(" In CrossWalk Data Object for network Urls : Object is present : " + dataObject);
      } 
      kNetworkMap.remove(str);
      int i = paramXWalkWebResourceResponseInternal.getStatusCode();
      paramXWalkResourceClientInternal.onReceivedResponseHeaders(paramXWalkViewInternal, paramXWalkWebResourceRequestInternal, paramXWalkWebResourceResponseInternal);
      long l4 = TrafficStats.getUidRxBytes(uid);
      long l5 = TrafficStats.getUidTxBytes(uid);
      SDK.getAgent().logNetworkEvent(str, i, (int)(System.currentTimeMillis() - l2), (int)(l4 - l1), (int)(l5 - l3));
      return;
    } catch (Throwable throwable) {
      CALog.e("Exception in onReceivedResponseHeaders: " + throwable);
      return;
    } 
  }
  
  public static void postUrl(WebView paramWebView, String paramString, byte[] paramArrayOfbyte) {
    SDK.getAgent().postUrlOnWebView(paramWebView, paramString, paramArrayOfbyte);
  }
  
  public static void registerxWalkBitMapCallback(final XWalkViewInternal fxWalkViewInternalArg, final String rUrl, final int duration) {
    handler.postDelayed(new Runnable() {
          public void run() {
            try {
              XWalkViewInternal xWalkViewInternal;
              if (fxWalkViewInternalArg != null) {
                xWalkViewInternal = fxWalkViewInternalArg;
              } else {
                xWalkViewInternal = CaMDOWebView.lastXWalkInternalView.get();
              } 
              if (xWalkViewInternal != null) {
                xWalkViewInternal.captureBitmapAsync(new BitMapClass(rUrl, duration));
                return;
              } 
            } catch (Exception exception) {
              CALog.e("Exception in taking screenshot and postDelayed of captureBitmapAsync : " + exception);
            } 
          }
        }1000L);
  }
  
  public static void setWebViewClient(WebView paramWebView, WebViewClient paramWebViewClient) {
    paramWebView.addJavascriptInterface(new JSCaMDOIntegration(paramWebView), "CaMaaAndroidIntegration");
    SDK.getAgent().setWebViewClientOnWebView(paramWebView, paramWebViewClient);
  }
  
  public static WebResourceResponse shouldInterceptLoadRequest(XWalkResourceClientInternal paramXWalkResourceClientInternal, XWalkViewInternal paramXWalkViewInternal, String paramString) {
    CALog.d("In CrossWalk shouldInterceptLoadRequest: " + paramString);
    try {
      DataObject dataObject = new DataObject();
      dataObject.startTime = System.currentTimeMillis();
      dataObject.rxBytes = TrafficStats.getUidRxBytes(uid);
      dataObject.txBytes = TrafficStats.getUidTxBytes(uid);
      kNetworkMap.put(paramString, dataObject);
      return paramXWalkResourceClientInternal.shouldInterceptLoadRequest(paramXWalkViewInternal, paramString);
    } catch (Throwable throwable) {
      CALog.e("Exception in shouldInterceptLoadRequest of CrossWalk View Internal : " + throwable);
      return null;
    } 
  }
  
  static class DataObject {
    long rxBytes;
    
    long startTime;
    
    long txBytes;
    
    public String toString() {
      return "DataObject{rxBytes=" + this.rxBytes + ", txBytes=" + this.txBytes + ", startTime=" + this.startTime + '}';
    }
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\android\app\CaMDOWebView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */