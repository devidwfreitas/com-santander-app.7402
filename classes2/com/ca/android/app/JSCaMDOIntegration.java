package com.ca.android.app;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.ca.integration.CaMDOCallback;
import com.ca.mdo.CALog;
import com.ca.mdo.CAMobileDevOps;
import com.ca.mdo.SDK;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JSCaMDOIntegration {
  public static final Map<String, FormRequest> formRequests = new HashMap<String, FormRequest>();
  
  private static final HashSet<String> nonUrlFormActions = new HashSet<String>(Arrays.asList(new String[] { "#", "", "self", "SELF" }));
  
  private Handler mHandler;
  
  private WebView webView;
  
  public JSCaMDOIntegration() {
    this.mHandler = new Handler(Looper.getMainLooper());
  }
  
  public JSCaMDOIntegration(WebView paramWebView) {
    this.webView = paramWebView;
    this.mHandler = new Handler(Looper.getMainLooper());
  }
  
  private void addToApmHeader(Map<String, String> paramMap) {
    if (paramMap != null)
      try {
        CaMDOIntegration.addToApmHeader(paramMap.get("header"));
        return;
      } catch (Exception exception) {
        CALog.e("Error in processing javascript addToApmHeader", exception);
        return;
      }  
  }
  
  private static String convertBundleToSuccessVal(Bundle paramBundle) {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("success", true);
      for (String str : paramBundle.keySet()) {
        try {
          jSONObject.put(str, paramBundle.get(str).toString());
        } catch (JSONException jSONException) {
          CALog.e("Exception creating JSON from Bundle :" + jSONException, (Throwable)jSONException);
        } 
      } 
    } catch (JSONException jSONException) {
      CALog.e("Exception creating JSON from Bundle :" + jSONException, (Throwable)jSONException);
    } 
    return jSONObject.toString();
  }
  
  private void disableSDK(Map<String, String> paramMap) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: invokestatic getCallbackFuncName : (Ljava/util/Map;)Ljava/lang/String;
    //   6: astore_3
    //   7: invokestatic disableSDK : ()V
    //   10: aload_3
    //   11: ifnull -> 29
    //   14: aload_2
    //   15: ifnull -> 61
    //   18: aload_0
    //   19: aload_3
    //   20: aload_1
    //   21: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   24: aconst_null
    //   25: aload_2
    //   26: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   29: return
    //   30: astore_2
    //   31: new java/lang/StringBuilder
    //   34: dup
    //   35: invokespecial <init> : ()V
    //   38: ldc 'Exception while disableSDK from JS API:'
    //   40: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: aload_2
    //   44: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   47: invokevirtual toString : ()Ljava/lang/String;
    //   50: aload_2
    //   51: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   54: pop
    //   55: ldc 'failed to disable sdk'
    //   57: astore_2
    //   58: goto -> 10
    //   61: aload_0
    //   62: aload_3
    //   63: aload_1
    //   64: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   67: invokestatic getSuccessVal : ()Ljava/lang/String;
    //   70: aconst_null
    //   71: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   74: return
    // Exception table:
    //   from	to	target	type
    //   7	10	30	java/lang/Exception
  }
  
  private void enableSDK(Map<String, String> paramMap) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: invokestatic getCallbackFuncName : (Ljava/util/Map;)Ljava/lang/String;
    //   6: astore_3
    //   7: invokestatic enableSDK : ()V
    //   10: aload_3
    //   11: ifnull -> 29
    //   14: aload_2
    //   15: ifnull -> 61
    //   18: aload_0
    //   19: aload_3
    //   20: aload_1
    //   21: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   24: aconst_null
    //   25: aload_2
    //   26: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   29: return
    //   30: astore_2
    //   31: new java/lang/StringBuilder
    //   34: dup
    //   35: invokespecial <init> : ()V
    //   38: ldc 'Exception while enableSDK from JS API:'
    //   40: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: aload_2
    //   44: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   47: invokevirtual toString : ()Ljava/lang/String;
    //   50: aload_2
    //   51: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   54: pop
    //   55: ldc 'failed to enable sdk'
    //   57: astore_2
    //   58: goto -> 10
    //   61: aload_0
    //   62: aload_3
    //   63: aload_1
    //   64: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   67: invokestatic getSuccessVal : ()Ljava/lang/String;
    //   70: aload_2
    //   71: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   74: return
    // Exception table:
    //   from	to	target	type
    //   7	10	30	java/lang/Exception
  }
  
  private void executeCallback(final String callbackFunName, final String callback, String paramString3, String paramString4) {
    if (callback != null && paramString3 != null) {
      callback = "javascript:" + callbackFunName + "('" + callback + "'," + paramString3 + ")";
    } else if (callback != null && paramString4 != null) {
      callback = "javascript:" + callbackFunName + "('" + callback + "','','" + paramString4 + "')";
    } else {
      callback = "javascript:" + callbackFunName + "('" + callback + "')";
    } 
    this.mHandler.post(new Runnable() {
          public void run() {
            if (JSCaMDOIntegration.this.webView != null) {
              JSCaMDOIntegration.this.webView.loadUrl(callback);
              JSCaMDOIntegration.this.webView.loadUrl("javascript:delete window[" + callbackFunName + "]");
            } 
          }
        });
  }
  
  @JavascriptInterface
  public static String getAPMHeader() {
    return CAMobileDevOps.getAPMHeader();
  }
  
  private void getAPMHeaders(Map<String, String> paramMap) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore_2
    //   4: aload_1
    //   5: invokestatic getCallbackFuncName : (Ljava/util/Map;)Ljava/lang/String;
    //   8: astore #5
    //   10: invokestatic getAPMHeaders : ()Ljava/util/Map;
    //   13: astore #4
    //   15: aload #4
    //   17: astore_2
    //   18: aload #5
    //   20: ifnull -> 39
    //   23: aload_3
    //   24: ifnull -> 71
    //   27: aload_0
    //   28: aload #5
    //   30: aload_1
    //   31: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   34: aconst_null
    //   35: aload_3
    //   36: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   39: return
    //   40: astore_3
    //   41: new java/lang/StringBuilder
    //   44: dup
    //   45: invokespecial <init> : ()V
    //   48: ldc 'Exception while isInPrivateZone from JS API:'
    //   50: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: aload_3
    //   54: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   57: invokevirtual toString : ()Ljava/lang/String;
    //   60: aload_3
    //   61: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   64: pop
    //   65: ldc 'failed to check if sdk is in private zone'
    //   67: astore_3
    //   68: goto -> 18
    //   71: aload_0
    //   72: aload #5
    //   74: aload_1
    //   75: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   78: aload_2
    //   79: invokestatic getJSON : (Ljava/util/Map;)Lorg/json/JSONObject;
    //   82: invokevirtual toString : ()Ljava/lang/String;
    //   85: aload_3
    //   86: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   89: return
    // Exception table:
    //   from	to	target	type
    //   10	15	40	java/lang/Exception
  }
  
  private static String getAction(Map<String, String> paramMap) {
    return paramMap.get("action");
  }
  
  private static String getCallbackFuncName(Map<String, String> paramMap) {
    return paramMap.get("callbackfn_name");
  }
  
  private CaMDOCallback getCallbackObj(final Map<String, String> jsMessage) {
    return new CaMDOCallback(new Handler(Looper.getMainLooper())) {
        String callbackFunName = JSCaMDOIntegration.getCallbackFuncName(jsMessage);
        
        public void onError(int param1Int, Exception param1Exception) {
          if (this.callbackFunName != null)
            JSCaMDOIntegration.this.executeCallback(this.callbackFunName, JSCaMDOIntegration.getAction(jsMessage), null, param1Exception.getMessage()); 
        }
        
        public void onSuccess(Bundle param1Bundle) {
          if (this.callbackFunName != null) {
            String str = JSCaMDOIntegration.convertBundleToSuccessVal(param1Bundle);
            JSCaMDOIntegration.this.executeCallback(this.callbackFunName, JSCaMDOIntegration.getAction(jsMessage), str, null);
          } 
        }
      };
  }
  
  private void getCustomerId(Map<String, String> paramMap) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: aload_1
    //   5: invokestatic getCallbackFuncName : (Ljava/util/Map;)Ljava/lang/String;
    //   8: astore #5
    //   10: invokestatic getCustomerId : ()Ljava/lang/String;
    //   13: astore #4
    //   15: aload #4
    //   17: astore_3
    //   18: aload #5
    //   20: ifnull -> 39
    //   23: aload_2
    //   24: ifnull -> 72
    //   27: aload_0
    //   28: aload #5
    //   30: aload_1
    //   31: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   34: aconst_null
    //   35: aload_2
    //   36: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   39: return
    //   40: astore_2
    //   41: new java/lang/StringBuilder
    //   44: dup
    //   45: invokespecial <init> : ()V
    //   48: ldc 'Exception while getCustomerId from JS API:'
    //   50: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: aload_2
    //   54: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   57: invokevirtual toString : ()Ljava/lang/String;
    //   60: aload_2
    //   61: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   64: pop
    //   65: ldc_w 'failed to return customerID'
    //   68: astore_2
    //   69: goto -> 18
    //   72: aload_0
    //   73: aload #5
    //   75: aload_1
    //   76: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   79: aload_3
    //   80: invokestatic getSuccessVal : (Ljava/lang/Object;)Ljava/lang/String;
    //   83: aload_2
    //   84: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   87: return
    // Exception table:
    //   from	to	target	type
    //   10	15	40	java/lang/Exception
  }
  
  private void getDeviceId(Map<String, String> paramMap) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: aload_1
    //   5: invokestatic getCallbackFuncName : (Ljava/util/Map;)Ljava/lang/String;
    //   8: astore #5
    //   10: invokestatic getDeviceId : ()Ljava/lang/String;
    //   13: astore #4
    //   15: aload #4
    //   17: astore_3
    //   18: aload #5
    //   20: ifnull -> 39
    //   23: aload_2
    //   24: ifnull -> 73
    //   27: aload_0
    //   28: aload #5
    //   30: aload_1
    //   31: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   34: aconst_null
    //   35: aload_2
    //   36: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   39: return
    //   40: astore_2
    //   41: new java/lang/StringBuilder
    //   44: dup
    //   45: invokespecial <init> : ()V
    //   48: ldc_w 'Exception while getDeviceId from JS API:'
    //   51: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   54: aload_2
    //   55: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   58: invokevirtual toString : ()Ljava/lang/String;
    //   61: aload_2
    //   62: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   65: pop
    //   66: ldc_w 'failed to return deviceID'
    //   69: astore_2
    //   70: goto -> 18
    //   73: aload_0
    //   74: aload #5
    //   76: aload_1
    //   77: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   80: aload_3
    //   81: invokestatic getSuccessVal : (Ljava/lang/Object;)Ljava/lang/String;
    //   84: aload_2
    //   85: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   88: return
    // Exception table:
    //   from	to	target	type
    //   10	15	40	java/lang/Exception
  }
  
  private static JSONObject getJSON(Map<String, String> paramMap) {
    JSONObject jSONObject = new JSONObject();
    if (paramMap != null && !paramMap.isEmpty())
      for (Map.Entry<String, String> entry : paramMap.entrySet()) {
        try {
          jSONObject.put((String)entry.getKey(), entry.getValue());
        } catch (JSONException jSONException) {
          CALog.e("JSON Exception while converting map to JSON " + jSONException.getLocalizedMessage(), (Throwable)jSONException);
        } 
      }  
    return jSONObject;
  }
  
  private static Map<String, String> getJSONAsMap(String paramString) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    if (paramString != null)
      try {
        JSONObject jSONObject = new JSONObject(paramString);
        JSONArray jSONArray = jSONObject.names();
        int j = jSONArray.length();
        int i = 0;
        while (true) {
          if (i < j) {
            String str = jSONArray.getString(i);
            hashMap.put(str, jSONObject.get(str).toString());
            i++;
            continue;
          } 
          return (Map)hashMap;
        } 
      } catch (Exception exception) {
        CALog.w("Exception while getting Map from JsonString :" + paramString + "\nException=" + exception, exception);
        return (Map)hashMap;
      }  
    return (Map)hashMap;
  }
  
  private static String getSuccessVal() {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("success", true);
    } catch (JSONException jSONException) {
      CALog.e("Exception creating JSON from Bundle :" + jSONException, (Throwable)jSONException);
    } 
    return jSONObject.toString();
  }
  
  private static String getSuccessVal(Object paramObject) {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("success", true);
      jSONObject.put("value", paramObject);
    } catch (JSONException jSONException) {
      CALog.e("Exception creating JSON from Bundle :" + jSONException, (Throwable)jSONException);
    } 
    return jSONObject.toString();
  }
  
  private void ignoreViews(Map<String, String> paramMap) {
    if (paramMap != null)
      try {
        String str = paramMap.get("views");
        HashSet<String> hashSet = new HashSet();
        if (str != null) {
          String[] arrayOfString = str.split(",");
          if (arrayOfString.length > 0)
            hashSet.addAll(Arrays.asList(arrayOfString)); 
        } 
        CaMDOIntegration.ignoreViews(hashSet);
        return;
      } catch (Exception exception) {
        CALog.e("Error in processing javascript addToApmHeader", exception);
        return;
      }  
  }
  
  private void isSDKEnabled(Map<String, String> paramMap) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore #4
    //   5: aload_1
    //   6: invokestatic getCallbackFuncName : (Ljava/util/Map;)Ljava/lang/String;
    //   9: astore #5
    //   11: invokestatic isSDKEnabled : ()Z
    //   14: istore_2
    //   15: iload_2
    //   16: invokestatic valueOf : (Z)Ljava/lang/String;
    //   19: astore #4
    //   21: aload #5
    //   23: ifnull -> 42
    //   26: aload_3
    //   27: ifnull -> 76
    //   30: aload_0
    //   31: aload #5
    //   33: aload_1
    //   34: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   37: aconst_null
    //   38: aload_3
    //   39: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   42: return
    //   43: astore_3
    //   44: new java/lang/StringBuilder
    //   47: dup
    //   48: invokespecial <init> : ()V
    //   51: ldc_w 'Exception while isSDKEnabled from JS API:'
    //   54: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: aload_3
    //   58: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   61: invokevirtual toString : ()Ljava/lang/String;
    //   64: aload_3
    //   65: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   68: pop
    //   69: ldc_w 'failed to check if sdk enabled'
    //   72: astore_3
    //   73: goto -> 21
    //   76: aload_0
    //   77: aload #5
    //   79: aload_1
    //   80: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   83: aload #4
    //   85: invokestatic getSuccessVal : (Ljava/lang/Object;)Ljava/lang/String;
    //   88: aload_3
    //   89: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   92: return
    // Exception table:
    //   from	to	target	type
    //   11	15	43	java/lang/Exception
  }
  
  private void isScreenshotPolicyEnabled(Map<String, String> paramMap) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore #4
    //   5: aload_1
    //   6: invokestatic getCallbackFuncName : (Ljava/util/Map;)Ljava/lang/String;
    //   9: astore #5
    //   11: invokestatic isScreenshotPolicyEnabled : ()Z
    //   14: istore_2
    //   15: iload_2
    //   16: invokestatic valueOf : (Z)Ljava/lang/String;
    //   19: astore #4
    //   21: aload #5
    //   23: ifnull -> 42
    //   26: aload_3
    //   27: ifnull -> 76
    //   30: aload_0
    //   31: aload #5
    //   33: aload_1
    //   34: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   37: aconst_null
    //   38: aload_3
    //   39: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   42: return
    //   43: astore_3
    //   44: new java/lang/StringBuilder
    //   47: dup
    //   48: invokespecial <init> : ()V
    //   51: ldc_w 'Exception while isScreenshotPolicyEnabled from JS API:'
    //   54: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: aload_3
    //   58: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   61: invokevirtual toString : ()Ljava/lang/String;
    //   64: aload_3
    //   65: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   68: pop
    //   69: ldc_w 'failed to check if isScreenshotPolicy Enabled'
    //   72: astore_3
    //   73: goto -> 21
    //   76: aload_0
    //   77: aload #5
    //   79: aload_1
    //   80: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   83: aload #4
    //   85: invokestatic getSuccessVal : (Ljava/lang/Object;)Ljava/lang/String;
    //   88: aload_3
    //   89: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   92: return
    // Exception table:
    //   from	to	target	type
    //   11	15	43	java/lang/Exception
  }
  
  @JavascriptInterface
  public static void logFormRequest(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {
    if (CaMDOIntegration.isSDKEnabled() && paramString1 != null)
      try {
        if (!nonUrlFormActions.contains(paramString1.trim())) {
          formRequests.put(paramString2, new FormRequest(paramString2, paramString3, paramString4, paramString5));
          return;
        } 
        return;
      } catch (JSONException jSONException) {
        CALog.e("Exception while parsing form json data");
        return;
      }  
  }
  
  private void logNetworkEvent(Map<String, String> paramMap) {
    int i = 0;
    if (paramMap != null) {
      int j;
      int k;
      int m;
      String str1;
      String str2;
      String str3;
      String str4;
      try {
        str1 = paramMap.get("url");
        String str = paramMap.get("status");
        str2 = paramMap.get("inbytes");
        str3 = paramMap.get("outbytes");
        str4 = paramMap.get("responsetime");
        if (str == null) {
          j = -1;
        } else {
          j = Integer.valueOf(str).intValue();
        } 
      } catch (Exception exception) {
        CALog.e("Error in processing javascript integration api call.", exception);
        return;
      } 
      if (str2 == null) {
        k = 0;
      } else {
        k = Integer.valueOf(str2).intValue();
      } 
      if (str3 == null) {
        m = 0;
      } else {
        m = Integer.valueOf(str3).intValue();
      } 
      if (str4 != null)
        i = Integer.valueOf(str4).intValue(); 
      CaMDOIntegration.logNetworkEvent(str1, j, i, k, m, getCallbackObj((Map<String, String>)exception));
      return;
    } 
  }
  
  private void logNumericMetrics(Map<String, String> paramMap) {
    Double double_ = Double.valueOf(paramMap.get("value"));
    String str1 = paramMap.get("key");
    String str2 = paramMap.get("attributes");
    if (double_ != null && str1 != null)
      try {
        SDK.getAgent().logNumericMetric(str1, double_, getJSONAsMap(str2), getCallbackObj(paramMap));
        return;
      } catch (Exception exception) {
        CALog.e("Exception while addSessionEvent from JS API:" + exception, exception);
        return;
      }  
  }
  
  private void logTextMetrics(Map<String, String> paramMap) {
    String str1 = paramMap.get("value");
    String str2 = paramMap.get("key");
    String str3 = paramMap.get("attributes");
    if (str1 != null && str2 != null)
      try {
        SDK.getAgent().logTextMetric(str2, str1, getJSONAsMap(str3), getCallbackObj(paramMap));
        return;
      } catch (Exception exception) {
        CALog.e("Exception while addSessionEvent from JS API:" + exception, exception);
        return;
      }  
  }
  
  @JavascriptInterface
  public static void logevent(String paramString1, long paramLong, int paramInt1, int paramInt2, int paramInt3, String paramString2) {
    if (CaMDOIntegration.isSDKEnabled()) {
      HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
      if (paramString2 != null)
        hashMap.put("corrId", paramString2); 
      CAMobileDevOps.httpPerformance(CAMobileDevOps.getNetworkData(paramString1, paramInt1, paramLong, paramInt2, paramInt3, null, hashMap, null, null));
    } 
  }
  
  private void processJSMessage(Map<String, String> paramMap) {
    try {
      String str = getAction(paramMap);
      if (str != null) {
        if (str.equals("sendScreenShot")) {
          takeScreenshot(paramMap, paramMap.get("screenname"), paramMap.get("quality"));
          return;
        } 
        if (str.equals("getAPMHeaders")) {
          getAPMHeaders(paramMap);
          return;
        } 
        if (str.equals("setCustomerLocation")) {
          setCustomerLocation(paramMap);
          return;
        } 
        if (str.equals("setSessionAttribute")) {
          setSessionAttribute(paramMap);
          return;
        } 
        if (str.equals("startApplicationTransaction")) {
          startApplicationTransaction(paramMap);
          return;
        } 
        if (str.equals("stopApplicationTransaction")) {
          stopApplicationTransaction(paramMap);
          return;
        } 
        if (str.equals("setCustomerFeedback")) {
          setCustomerFeedback(paramMap);
          return;
        } 
        if (str.equals("isSDKEnabled")) {
          isSDKEnabled(paramMap);
          return;
        } 
        if (str.equals("isInPrivateZone")) {
          isInPrivateZone(paramMap);
          return;
        } 
        if (str.equals("enableSDK")) {
          enableSDK(paramMap);
          return;
        } 
        if (str.equals("exitPrivateZone")) {
          exitPrivateZone(paramMap);
          return;
        } 
        if (str.equals("disableSDK")) {
          disableSDK(paramMap);
          return;
        } 
        if (str.equals("enterPrivateZone")) {
          enterPrivateZone(paramMap);
          return;
        } 
        if (str.equalsIgnoreCase("isScreenshotPolicyEnabled")) {
          isScreenshotPolicyEnabled(paramMap);
          return;
        } 
        if (str.equalsIgnoreCase("stopCurrentAndStartNewSession")) {
          stopCurrentAndStartNewSession(paramMap);
          return;
        } 
        if (str.equalsIgnoreCase("stopCurrentSession")) {
          stopCurrentSession(paramMap);
          return;
        } 
        if (str.equalsIgnoreCase("startNewSession")) {
          startNewSession(paramMap);
          return;
        } 
        if (str.equalsIgnoreCase("viewLoaded")) {
          str = paramMap.get("screenname");
          String str1 = paramMap.get("screenloadtime");
          if (str != null) {
            viewLoaded(paramMap, str, str1);
            return;
          } 
        } else {
          if (str.equalsIgnoreCase("logNetworkEvent")) {
            logNetworkEvent(paramMap);
            return;
          } 
          if (str.equalsIgnoreCase("uploadEvents")) {
            CaMDOIntegration.uploadEvents(null);
            return;
          } 
          if (str.equalsIgnoreCase("logTextMetric")) {
            logTextMetrics(paramMap);
            return;
          } 
          if (str.equalsIgnoreCase("logNumericMetric")) {
            logNumericMetrics(paramMap);
            return;
          } 
          if (str.equalsIgnoreCase("customerId")) {
            getCustomerId(paramMap);
            return;
          } 
          if (str.equalsIgnoreCase("deviceId")) {
            getDeviceId(paramMap);
            return;
          } 
          if (str.equalsIgnoreCase("ignoreViews")) {
            ignoreViews(paramMap);
            return;
          } 
          if (str.equalsIgnoreCase("addToAPMHeader")) {
            addToApmHeader(paramMap);
            return;
          } 
          CALog.e("action=" + str + " does not match with any supported api");
        } 
      } 
    } catch (Exception exception) {
      CALog.e("Error in processing javascript integration api call.", exception);
      return;
    } 
  }
  
  private void setCustomerFeedback(Map<String, String> paramMap) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: ldc_w 'feedback'
    //   6: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   11: checkcast java/lang/String
    //   14: astore #4
    //   16: aload_1
    //   17: invokestatic getCallbackFuncName : (Ljava/util/Map;)Ljava/lang/String;
    //   20: astore_3
    //   21: invokestatic getAgent : ()Lcom/ca/android/app/AnalyticsAgent;
    //   24: aload #4
    //   26: invokeinterface setCustomerFeedbackOnIntegration : (Ljava/lang/String;)V
    //   31: aload_3
    //   32: ifnull -> 50
    //   35: aload_2
    //   36: ifnull -> 84
    //   39: aload_0
    //   40: aload_3
    //   41: aload_1
    //   42: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   45: aconst_null
    //   46: aload_2
    //   47: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   50: return
    //   51: astore_2
    //   52: new java/lang/StringBuilder
    //   55: dup
    //   56: invokespecial <init> : ()V
    //   59: ldc_w 'Exception while setCustomerFeedback from JS API:'
    //   62: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: aload_2
    //   66: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   69: invokevirtual toString : ()Ljava/lang/String;
    //   72: aload_2
    //   73: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   76: pop
    //   77: ldc_w 'failed to set customer feedback'
    //   80: astore_2
    //   81: goto -> 31
    //   84: aload_0
    //   85: aload_3
    //   86: aload_1
    //   87: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   90: invokestatic getSuccessVal : ()Ljava/lang/String;
    //   93: aload_2
    //   94: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   97: return
    // Exception table:
    //   from	to	target	type
    //   21	31	51	java/lang/Exception
  }
  
  private void setCustomerLocation(Map<String, String> paramMap) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_1
    //   3: ldc_w 'zipcode'
    //   6: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   11: checkcast java/lang/String
    //   14: astore_2
    //   15: aload_1
    //   16: ldc_w 'countryCode'
    //   19: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   24: checkcast java/lang/String
    //   27: astore #7
    //   29: aload_1
    //   30: ldc_w 'latitude'
    //   33: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   38: checkcast java/lang/String
    //   41: astore #5
    //   43: aload_1
    //   44: ldc_w 'longitude'
    //   47: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   52: checkcast java/lang/String
    //   55: astore #6
    //   57: aload_1
    //   58: invokestatic getCallbackFuncName : (Ljava/util/Map;)Ljava/lang/String;
    //   61: astore #4
    //   63: aload_2
    //   64: ifnull -> 83
    //   67: aload #7
    //   69: ifnull -> 83
    //   72: invokestatic getAgent : ()Lcom/ca/android/app/AnalyticsAgent;
    //   75: aload_2
    //   76: aload #7
    //   78: invokeinterface setCustomerLocationOnIntegration : (Ljava/lang/String;Ljava/lang/String;)V
    //   83: aload_3
    //   84: astore_2
    //   85: aload #5
    //   87: ifnull -> 143
    //   90: aload_3
    //   91: astore_2
    //   92: aload #6
    //   94: ifnull -> 143
    //   97: new android/location/Location
    //   100: dup
    //   101: ldc_w 'user'
    //   104: invokespecial <init> : (Ljava/lang/String;)V
    //   107: astore_2
    //   108: aload_2
    //   109: aload #5
    //   111: invokestatic valueOf : (Ljava/lang/String;)Ljava/lang/Double;
    //   114: invokevirtual doubleValue : ()D
    //   117: invokevirtual setLatitude : (D)V
    //   120: aload_2
    //   121: aload #6
    //   123: invokestatic valueOf : (Ljava/lang/String;)Ljava/lang/Double;
    //   126: invokevirtual doubleValue : ()D
    //   129: invokevirtual setLongitude : (D)V
    //   132: invokestatic getAgent : ()Lcom/ca/android/app/AnalyticsAgent;
    //   135: aload_2
    //   136: invokeinterface setCustomerLocationOnIntegration : (Landroid/location/Location;)V
    //   141: aload_3
    //   142: astore_2
    //   143: aload #4
    //   145: ifnull -> 164
    //   148: aload_2
    //   149: ifnull -> 198
    //   152: aload_0
    //   153: aload #4
    //   155: aload_1
    //   156: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   159: aconst_null
    //   160: aload_2
    //   161: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   164: return
    //   165: astore_2
    //   166: new java/lang/StringBuilder
    //   169: dup
    //   170: invokespecial <init> : ()V
    //   173: ldc_w 'Exception while setCustomerLocation from JS API:'
    //   176: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: aload_2
    //   180: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   183: invokevirtual toString : ()Ljava/lang/String;
    //   186: aload_2
    //   187: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   190: pop
    //   191: ldc_w 'failed to add set customer location'
    //   194: astore_2
    //   195: goto -> 143
    //   198: aload_0
    //   199: aload #4
    //   201: aload_1
    //   202: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   205: invokestatic getSuccessVal : ()Ljava/lang/String;
    //   208: aload_2
    //   209: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   212: return
    // Exception table:
    //   from	to	target	type
    //   72	83	165	java/lang/Exception
    //   97	141	165	java/lang/Exception
  }
  
  private void setSessionAttribute(Map<String, String> paramMap) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: ldc_w 'type'
    //   6: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   11: checkcast java/lang/String
    //   14: astore #4
    //   16: aload_1
    //   17: ldc_w 'value'
    //   20: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   25: checkcast java/lang/String
    //   28: astore #5
    //   30: aload_1
    //   31: ldc_w 'key'
    //   34: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   39: checkcast java/lang/String
    //   42: astore #6
    //   44: aload_1
    //   45: invokestatic getCallbackFuncName : (Ljava/util/Map;)Ljava/lang/String;
    //   48: astore_3
    //   49: invokestatic getAgent : ()Lcom/ca/android/app/AnalyticsAgent;
    //   52: aload #4
    //   54: aload #6
    //   56: aload #5
    //   58: invokeinterface setSessionAttributeOnIntegration : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   63: aload_3
    //   64: ifnull -> 82
    //   67: aload_2
    //   68: ifnull -> 116
    //   71: aload_0
    //   72: aload_3
    //   73: aload_1
    //   74: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   77: aconst_null
    //   78: aload_2
    //   79: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   82: return
    //   83: astore_2
    //   84: new java/lang/StringBuilder
    //   87: dup
    //   88: invokespecial <init> : ()V
    //   91: ldc_w 'Exception while setSessionAttribute from JS API:'
    //   94: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: aload_2
    //   98: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   101: invokevirtual toString : ()Ljava/lang/String;
    //   104: aload_2
    //   105: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   108: pop
    //   109: ldc_w 'failed to add session attribute'
    //   112: astore_2
    //   113: goto -> 63
    //   116: aload_0
    //   117: aload_3
    //   118: aload_1
    //   119: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   122: invokestatic getSuccessVal : ()Ljava/lang/String;
    //   125: aload_2
    //   126: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   129: return
    // Exception table:
    //   from	to	target	type
    //   49	63	83	java/lang/Exception
  }
  
  private void startApplicationTransaction(Map<String, String> paramMap) {
    String str1 = paramMap.get("transactionName");
    String str2 = paramMap.get("serviceName");
    if (str2 != null)
      try {
        if (str2.trim().length() > 0) {
          SDK.getAgent().startApplicationTransactionOnIntegration(str1, str2, getCallbackObj(paramMap));
          return;
        } 
        SDK.getAgent().startApplicationTransactionOnIntegration(str1, getCallbackObj(paramMap));
        return;
      } catch (Exception exception) {
        CALog.e("Exception while startApplicationTransaction from JS API:" + exception, exception);
        return;
      }  
    SDK.getAgent().startApplicationTransactionOnIntegration(str1, getCallbackObj((Map<String, String>)exception));
  }
  
  private void startNewSession(Map<String, String> paramMap) {
    String str = getCallbackFuncName(paramMap);
    CAMobileDevOps.startNewSession();
    if (str != null) {
      if (false) {
        executeCallback(str, getAction(paramMap), null, null);
        return;
      } 
    } else {
      return;
    } 
    executeCallback(str, getAction(paramMap), getSuccessVal(), null);
  }
  
  private void stopApplicationTransaction(Map<String, String> paramMap) {
    String str1 = paramMap.get("transactionName");
    String str2 = paramMap.get("failure");
    if (str2 != null)
      try {
        if (str2.trim().length() > 0) {
          SDK.getAgent().stopApplicationTransactionOnIntegration(str1, str2, getCallbackObj(paramMap));
          return;
        } 
        SDK.getAgent().stopApplicationTransactionOnIntegration(str1, getCallbackObj(paramMap));
        return;
      } catch (Exception exception) {
        CALog.e("Exception while stopApplicationTransaction from JS API:" + exception, exception);
        return;
      }  
    SDK.getAgent().stopApplicationTransactionOnIntegration(str1, getCallbackObj((Map<String, String>)exception));
  }
  
  private void stopCurrentAndStartNewSession(Map<String, String> paramMap) {
    String str = getCallbackFuncName(paramMap);
    CAMobileDevOps.stopCurrentAndStartNewSession();
    if (str != null) {
      if (false) {
        executeCallback(str, getAction(paramMap), null, null);
        return;
      } 
    } else {
      return;
    } 
    executeCallback(str, getAction(paramMap), getSuccessVal(), null);
  }
  
  private void stopCurrentSession(Map<String, String> paramMap) {
    String str = getCallbackFuncName(paramMap);
    CAMobileDevOps.stopCurrentSession();
    if (str != null) {
      if (false) {
        executeCallback(str, getAction(paramMap), null, null);
        return;
      } 
    } else {
      return;
    } 
    executeCallback(str, getAction(paramMap), getSuccessVal(), null);
  }
  
  private void takeScreenshot(final Map<String, String> jsMessage, final String screenName, String paramString2) {
    final int qualityOfScreenShot = CAMobileDevOps.getQuality(paramString2);
    this.mHandler.post(new Runnable() {
          public void run() {
            SDK.getAgent().takeScreenshotOnIntegration(screenName, qualityOfScreenShot, JSCaMDOIntegration.this.getCallbackObj(jsMessage));
          }
        });
  }
  
  private void viewLoaded(Map<String, String> paramMap, String paramString1, String paramString2) {
    boolean bool;
    try {
      bool = Integer.parseInt(paramString2);
      if (CAMobileDevOps.isCrossWalk()) {
        CaMDOWebView.registerxWalkBitMapCallback(null, paramString1, bool);
        return;
      } 
    } catch (Exception exception) {
      bool = false;
      if (CAMobileDevOps.isCrossWalk()) {
        CaMDOWebView.registerxWalkBitMapCallback(null, paramString1, bool);
        return;
      } 
    } 
    CAMobileDevOps.viewLoaded(paramString1, bool, getCallbackObj(paramMap));
  }
  
  public void enterPrivateZone(Map<String, String> paramMap) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: invokestatic getCallbackFuncName : (Ljava/util/Map;)Ljava/lang/String;
    //   6: astore_3
    //   7: invokestatic enterPrivateZone : ()V
    //   10: aload_3
    //   11: ifnull -> 29
    //   14: aload_2
    //   15: ifnull -> 63
    //   18: aload_0
    //   19: aload_3
    //   20: aload_1
    //   21: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   24: aconst_null
    //   25: aload_2
    //   26: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   29: return
    //   30: astore_2
    //   31: new java/lang/StringBuilder
    //   34: dup
    //   35: invokespecial <init> : ()V
    //   38: ldc_w 'Exception while enterPrivateZone from JS API:'
    //   41: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: aload_2
    //   45: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   48: invokevirtual toString : ()Ljava/lang/String;
    //   51: aload_2
    //   52: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   55: pop
    //   56: ldc_w 'failed to enter private zone'
    //   59: astore_2
    //   60: goto -> 10
    //   63: aload_0
    //   64: aload_3
    //   65: aload_1
    //   66: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   69: invokestatic getSuccessVal : ()Ljava/lang/String;
    //   72: aload_2
    //   73: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   76: return
    // Exception table:
    //   from	to	target	type
    //   7	10	30	java/lang/Exception
  }
  
  public void exitPrivateZone(Map<String, String> paramMap) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: invokestatic getCallbackFuncName : (Ljava/util/Map;)Ljava/lang/String;
    //   6: astore_3
    //   7: invokestatic exitPrivateZone : ()V
    //   10: aload_3
    //   11: ifnull -> 29
    //   14: aload_2
    //   15: ifnull -> 63
    //   18: aload_0
    //   19: aload_3
    //   20: aload_1
    //   21: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   24: aconst_null
    //   25: aload_2
    //   26: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   29: return
    //   30: astore_2
    //   31: new java/lang/StringBuilder
    //   34: dup
    //   35: invokespecial <init> : ()V
    //   38: ldc_w 'Exception while exitPrivateZone from JS API:'
    //   41: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: aload_2
    //   45: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   48: invokevirtual toString : ()Ljava/lang/String;
    //   51: aload_2
    //   52: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   55: pop
    //   56: ldc_w 'failed to exit private zone'
    //   59: astore_2
    //   60: goto -> 10
    //   63: aload_0
    //   64: aload_3
    //   65: aload_1
    //   66: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   69: invokestatic getSuccessVal : ()Ljava/lang/String;
    //   72: aload_2
    //   73: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   76: return
    // Exception table:
    //   from	to	target	type
    //   7	10	30	java/lang/Exception
  }
  
  public void isInPrivateZone(Map<String, String> paramMap) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aconst_null
    //   3: astore #4
    //   5: aload_1
    //   6: invokestatic getCallbackFuncName : (Ljava/util/Map;)Ljava/lang/String;
    //   9: astore #5
    //   11: invokestatic isInPrivateZone : ()Z
    //   14: istore_2
    //   15: iload_2
    //   16: invokestatic valueOf : (Z)Ljava/lang/String;
    //   19: astore #4
    //   21: aload #5
    //   23: ifnull -> 42
    //   26: aload_3
    //   27: ifnull -> 74
    //   30: aload_0
    //   31: aload #5
    //   33: aload_1
    //   34: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   37: aconst_null
    //   38: aload_3
    //   39: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   42: return
    //   43: astore_3
    //   44: new java/lang/StringBuilder
    //   47: dup
    //   48: invokespecial <init> : ()V
    //   51: ldc 'Exception while isInPrivateZone from JS API:'
    //   53: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: aload_3
    //   57: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   60: invokevirtual toString : ()Ljava/lang/String;
    //   63: aload_3
    //   64: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   67: pop
    //   68: ldc 'failed to check if sdk is in private zone'
    //   70: astore_3
    //   71: goto -> 21
    //   74: aload_0
    //   75: aload #5
    //   77: aload_1
    //   78: invokestatic getAction : (Ljava/util/Map;)Ljava/lang/String;
    //   81: aload #4
    //   83: invokestatic getSuccessVal : (Ljava/lang/Object;)Ljava/lang/String;
    //   86: aload_3
    //   87: invokespecial executeCallback : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   90: return
    // Exception table:
    //   from	to	target	type
    //   11	15	43	java/lang/Exception
  }
  
  @JavascriptInterface
  public void postMessage(String paramString) {
    processJSMessage(getJSONAsMap(paramString));
  }
  
  public static class FormRequest {
    public final String enctype;
    
    public final String formData;
    
    public final String httpMethod;
    
    public final String url;
    
    public FormRequest(String param1String1, String param1String2, String param1String3, String param1String4) throws JSONException {
      this.url = param1String1;
      this.httpMethod = param1String2;
      this.enctype = param1String3;
      this.formData = param1String4;
    }
    
    public String getParameters() throws UnsupportedEncodingException, JSONException {
      JSONArray jSONArray = new JSONArray(this.formData);
      int j = jSONArray.length();
      StringBuilder stringBuilder = new StringBuilder();
      for (int i = 0; i < j; i++) {
        JSONObject jSONObject = (JSONObject)jSONArray.get(i);
        String str = jSONObject.getString("name");
        if (str != null && str.trim().length() > 0) {
          stringBuilder.append(URLEncoder.encode(str, "UTF-8"));
          stringBuilder.append("=");
          stringBuilder.append(URLEncoder.encode(jSONObject.getString("value"), "UTF-8"));
          stringBuilder.append("&");
        } 
      } 
      return stringBuilder.substring(0, stringBuilder.lastIndexOf("&"));
    }
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\android\app\JSCaMDOIntegration.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */