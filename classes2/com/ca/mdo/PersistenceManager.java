package com.ca.mdo;

import android.content.Context;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

class PersistenceManager {
  public SessionManager sessionManager;
  
  static JSONObject buildEvtTypeActivityTxn(String paramString1, String paramString2, String paramString3, long paramLong1, long paramLong2, String paramString4, String paramString5, String paramString6, String paramString7, boolean paramBoolean, JSONObject paramJSONObject) throws JSONException {
    if (paramString1 == null || paramString3 == null || paramString3.equalsIgnoreCase(""))
      return null; 
    try {
      paramJSONObject.put("ty", "txn_events");
      paramJSONObject.put("n", paramString1);
      paramJSONObject.put("v", paramString3);
      if ("apptxn_fail".equals(paramString1) || "apptxn_end".equals(paramString1)) {
        paramJSONObject.put("t", "" + paramLong2);
      } else {
        if (paramLong1 > 0L) {
          paramString3 = "" + paramLong1;
        } else {
          paramString3 = "" + paramLong2;
        } 
        paramJSONObject.put("t", paramString3);
      } 
      JSONObject jSONObject = new JSONObject();
      if (paramBoolean) {
        paramString3 = "AUTO";
      } else {
        paramString3 = "MANUAL";
      } 
      jSONObject.put("mode", paramString3);
      if (paramString2 != null) {
        jSONObject.put("ca_as", paramString2);
      } else {
        jSONObject.put("ca_as", "Unknown");
      } 
      if ("apptxn_end".equals(paramString1) || "apptxn_fail".equals(paramString1) || "apptxn_start".equals(paramString1)) {
        if (paramLong1 > 0L) {
          paramString1 = "" + paramLong1;
        } else {
          paramString1 = "" + paramLong2;
        } 
        jSONObject.put("txn_s", paramString1);
      } 
      if (paramString7 != null)
        jSONObject.put("fd", paramString7); 
      if (paramString5 != null) {
        jSONObject.put("ca_at_p", paramString5);
        jSONObject.put("ca_as_p", paramString4);
        jSONObject.put("txn_s_p", paramString6);
      } 
      setScreenNames(paramJSONObject, jSONObject);
      paramJSONObject.put("attr", jSONObject);
      return paramJSONObject;
    } catch (Exception exception) {
      CALog.e(exception.getMessage(), exception);
      return null;
    } 
  }
  
  private static String getValue(JSONObject paramJSONObject, String paramString) {
    String str = null;
    if (paramJSONObject != null)
      try {
        return paramJSONObject.getString(paramString);
      } catch (JSONException jSONException) {
        return null;
      }  
    return str;
  }
  
  private static void removePassed(JSONObject paramJSONObject) {
    paramJSONObject.remove("passovercsn");
    paramJSONObject.remove("passoverpsn");
  }
  
  private static void setScreenLoadTime(JSONObject paramJSONObject1, JSONObject paramJSONObject2) {
    try {
      String str = getValue(paramJSONObject1, "slt");
      if (str != null)
        paramJSONObject2.put("slt", str); 
      paramJSONObject1.remove("slt");
      return;
    } catch (JSONException jSONException) {
      CALog.ex((Throwable)jSONException);
      return;
    } 
  }
  
  private static void setScreenNames(JSONObject paramJSONObject1, JSONObject paramJSONObject2) {
    try {
      String str1 = getValue(paramJSONObject1, "passovercsn");
      String str2 = getValue(paramJSONObject1, "passoverpsn");
      if (str1 != null)
        paramJSONObject2.put("csn", str1); 
      if (str2 != null)
        paramJSONObject2.put("psn", str2); 
      removePassed(paramJSONObject1);
      return;
    } catch (JSONException jSONException) {
      CALog.ex((Throwable)jSONException);
      return;
    } 
  }
  
  public JSONObject buildEvent(String paramString1, String paramString2, long paramLong, String paramString3, JSONObject paramJSONObject) {
    try {
      paramJSONObject.put("ty", paramString3);
      paramJSONObject.put("n", paramString1);
      paramJSONObject.put("v", paramString2);
      paramJSONObject.put("t", paramLong);
      JSONObject jSONObject = new JSONObject();
      setScreenNames(paramJSONObject, jSONObject);
      if (paramJSONObject.has("slt"))
        setScreenLoadTime(paramJSONObject, jSONObject); 
      if (CAMobileDevOps.getApplicationService() != null && CAMobileDevOps.getApplicationTransaction() != null && CAMobileDevOps.mAppTransactionStartTime != -1L) {
        jSONObject.put("ca_as", CAMobileDevOps.getApplicationService());
        jSONObject.put("ca_at", CAMobileDevOps.getApplicationTransaction());
        jSONObject.put("txn_s", CAMobileDevOps.mAppTransactionStartTime);
      } 
      paramJSONObject.put("attr", jSONObject);
      return paramJSONObject;
    } catch (JSONException jSONException) {
      CALog.e(jSONException.getMessage(), (Throwable)jSONException);
      return paramJSONObject;
    } 
  }
  
  public JSONObject buildEvent(JSONObject paramJSONObject) {
    try {
      JSONObject jSONObject;
      if (paramJSONObject.has("attr")) {
        jSONObject = paramJSONObject.getJSONObject("attr");
      } else {
        jSONObject = new JSONObject();
      } 
      if (CAMobileDevOps.getApplicationService() != null && CAMobileDevOps.getApplicationTransaction() != null && CAMobileDevOps.mAppTransactionStartTime != -1L) {
        jSONObject.put("ca_as", CAMobileDevOps.getApplicationService());
        jSONObject.put("ca_at", CAMobileDevOps.getApplicationTransaction());
        jSONObject.put("txn_s", CAMobileDevOps.mAppTransactionStartTime);
      } 
      setScreenNames(paramJSONObject, jSONObject);
      if (paramJSONObject.has("slt"))
        setScreenLoadTime(paramJSONObject, jSONObject); 
      paramJSONObject.put("attr", jSONObject);
      return paramJSONObject;
    } catch (JSONException jSONException) {
      CALog.e(jSONException.getMessage(), (Throwable)jSONException);
      return paramJSONObject;
    } 
  }
  
  public JSONObject buildEvtTypeCustom(String paramString, JSONObject paramJSONObject1, long paramLong, JSONObject paramJSONObject2) {
    JSONObject jSONObject = new JSONObject();
    try {
      paramJSONObject2.put("ty", "custom");
      paramJSONObject2.put("v", paramString);
      if (CAMobileDevOps.getApplicationService() != null && CAMobileDevOps.getApplicationTransaction() != null && CAMobileDevOps.mAppTransactionStartTime != -1L) {
        jSONObject.put("ca_as", CAMobileDevOps.getApplicationService());
        jSONObject.put("ca_at", CAMobileDevOps.getApplicationTransaction());
        jSONObject.put("txn_s", CAMobileDevOps.mAppTransactionStartTime);
        if (paramJSONObject1 != null) {
          Iterator<String> iterator = paramJSONObject1.keys();
          while (iterator.hasNext()) {
            String str = iterator.next();
            jSONObject.put(str, paramJSONObject1.get(str));
          } 
        } 
      } else if (paramJSONObject1 != null) {
        paramJSONObject2.put("attr", paramJSONObject1);
      } 
    } catch (JSONException jSONException) {
      CALog.e(jSONException.getMessage(), (Throwable)jSONException);
      return paramJSONObject2;
    } 
    setScreenNames(paramJSONObject2, jSONObject);
    paramJSONObject2.put("attr", jSONObject);
    paramJSONObject2.put("t", paramLong);
    return paramJSONObject2;
  }
  
  public boolean canCollectPerfData(int paramInt) {
    PolicyManager policyManager = PolicyUtil.getPolicyManager((Context)SDK.getApp());
    return (paramInt == 1 || paramInt % policyManager.getPerfCollectFrequency() == 0);
  }
  
  public JSONObject getJsonObject(JSONObject paramJSONObject, String paramString) {
    try {
      return paramJSONObject.getJSONObject(paramString);
    } catch (JSONException jSONException) {
      return null;
    } 
  }
  
  public void initialize() {}
  
  public void mergeEvent(String paramString1, JSONObject paramJSONObject, int paramInt, String paramString2) {
    if (paramString1 == null || paramString1.trim().equalsIgnoreCase(""))
      return; 
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("session_json_type", paramString2);
      jSONObject.put("session_id", paramString1);
      long l = System.currentTimeMillis();
      if (paramInt != 3 && !paramString2.equalsIgnoreCase("hdr")) {
        paramJSONObject.put("eid", this.sessionManager.getNewEventID());
        paramJSONObject.put("t", l);
      } else {
        paramJSONObject.put("eid", 2147483647);
      } 
      jSONObject.put("session_json", paramJSONObject);
    } catch (JSONException jSONException) {
      CALog.e(jSONException.getMessage(), (Throwable)jSONException);
    } 
    CAMobileDevOps.getDatabaseService().mergeEvent(jSONObject);
  }
  
  public void persistEvent(String paramString1, JSONObject paramJSONObject, int paramInt, String paramString2) {
    // Byte code:
    //   0: iconst_1
    //   1: istore #9
    //   3: aload #4
    //   5: ifnull -> 21
    //   8: aload #4
    //   10: ldc 'evt'
    //   12: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   15: ifeq -> 21
    //   18: invokestatic incrementEventUploadCounter : ()V
    //   21: aload_1
    //   22: ifnull -> 37
    //   25: aload_1
    //   26: invokevirtual trim : ()Ljava/lang/String;
    //   29: ldc ''
    //   31: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   34: ifeq -> 38
    //   37: return
    //   38: new org/json/JSONObject
    //   41: dup
    //   42: invokespecial <init> : ()V
    //   45: astore #17
    //   47: lconst_0
    //   48: lstore #13
    //   50: iconst_m1
    //   51: istore #6
    //   53: lload #13
    //   55: lstore #11
    //   57: iload #6
    //   59: istore #5
    //   61: aload #17
    //   63: ldc 'session_json_type'
    //   65: aload #4
    //   67: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   70: pop
    //   71: lload #13
    //   73: lstore #11
    //   75: iload #6
    //   77: istore #5
    //   79: aload #17
    //   81: ldc 'session_id'
    //   83: aload_1
    //   84: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   87: pop
    //   88: lload #13
    //   90: lstore #11
    //   92: iload #6
    //   94: istore #5
    //   96: invokestatic currentTimeMillis : ()J
    //   99: lstore #13
    //   101: iload_3
    //   102: iconst_3
    //   103: if_icmpeq -> 432
    //   106: lload #13
    //   108: lstore #11
    //   110: iload #6
    //   112: istore #5
    //   114: aload #4
    //   116: ldc 'hdr'
    //   118: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   121: ifne -> 432
    //   124: iload_3
    //   125: iconst_2
    //   126: if_icmpne -> 393
    //   129: ldc_w 2147473647
    //   132: istore #6
    //   134: lload #13
    //   136: lstore #11
    //   138: iload #6
    //   140: istore #5
    //   142: aload_2
    //   143: ldc 'eid'
    //   145: iload #6
    //   147: invokevirtual put : (Ljava/lang/String;I)Lorg/json/JSONObject;
    //   150: pop
    //   151: lload #13
    //   153: lstore #11
    //   155: iload #6
    //   157: istore #5
    //   159: aload_2
    //   160: ldc 't'
    //   162: invokevirtual has : (Ljava/lang/String;)Z
    //   165: ifne -> 413
    //   168: lload #13
    //   170: lstore #11
    //   172: iload #6
    //   174: istore #5
    //   176: aload_2
    //   177: ldc 't'
    //   179: lload #13
    //   181: invokevirtual put : (Ljava/lang/String;J)Lorg/json/JSONObject;
    //   184: pop
    //   185: lload #13
    //   187: lstore #11
    //   189: iload #6
    //   191: istore #5
    //   193: aload_2
    //   194: invokestatic removePassed : (Lorg/json/JSONObject;)V
    //   197: lload #13
    //   199: lstore #11
    //   201: iload #6
    //   203: istore #5
    //   205: aload #17
    //   207: ldc 'session_json'
    //   209: aload_2
    //   210: invokevirtual put : (Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   213: pop
    //   214: lload #13
    //   216: lstore #15
    //   218: iload #6
    //   220: istore #7
    //   222: iload #9
    //   224: istore #8
    //   226: lload #13
    //   228: lstore #11
    //   230: iload #6
    //   232: istore #5
    //   234: aload_2
    //   235: ldc 'n'
    //   237: invokevirtual has : (Ljava/lang/String;)Z
    //   240: ifeq -> 337
    //   243: lload #13
    //   245: lstore #11
    //   247: iload #6
    //   249: istore #5
    //   251: aload_2
    //   252: ldc 'n'
    //   254: invokevirtual getString : (Ljava/lang/String;)Ljava/lang/String;
    //   257: astore_2
    //   258: lload #13
    //   260: lstore #15
    //   262: iload #6
    //   264: istore #7
    //   266: iload #9
    //   268: istore #8
    //   270: aload_2
    //   271: ifnull -> 337
    //   274: lload #13
    //   276: lstore #11
    //   278: iload #6
    //   280: istore #5
    //   282: aload_2
    //   283: ldc_w 'screenshots_disabled'
    //   286: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   289: ifne -> 326
    //   292: lload #13
    //   294: lstore #11
    //   296: iload #6
    //   298: istore #5
    //   300: aload_2
    //   301: ldc_w 'screenshots_enabled'
    //   304: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   307: istore #10
    //   309: lload #13
    //   311: lstore #15
    //   313: iload #6
    //   315: istore #7
    //   317: iload #9
    //   319: istore #8
    //   321: iload #10
    //   323: ifeq -> 337
    //   326: iconst_0
    //   327: istore #8
    //   329: iload #6
    //   331: istore #7
    //   333: lload #13
    //   335: lstore #15
    //   337: invokestatic getDatabaseService : ()Lcom/ca/mdo/DatabaseHandler;
    //   340: aload #17
    //   342: iload_3
    //   343: iload #8
    //   345: invokevirtual persistEvents : (Lorg/json/JSONObject;IZ)V
    //   348: iload_3
    //   349: iconst_2
    //   350: if_icmpeq -> 37
    //   353: iload_3
    //   354: iconst_3
    //   355: if_icmpeq -> 37
    //   358: aload #4
    //   360: ldc 'hdr'
    //   362: invokevirtual equals : (Ljava/lang/Object;)Z
    //   365: ifne -> 37
    //   368: iload #7
    //   370: ifle -> 37
    //   373: aload_0
    //   374: iload #7
    //   376: invokevirtual canCollectPerfData : (I)Z
    //   379: ifeq -> 37
    //   382: aload_0
    //   383: aload_1
    //   384: lload #15
    //   386: iload #7
    //   388: iload_3
    //   389: invokevirtual persistPerformanceEvent : (Ljava/lang/String;JII)V
    //   392: return
    //   393: lload #13
    //   395: lstore #11
    //   397: iload #6
    //   399: istore #5
    //   401: aload_0
    //   402: getfield sessionManager : Lcom/ca/mdo/SessionManager;
    //   405: invokevirtual getNewEventID : ()I
    //   408: istore #6
    //   410: goto -> 134
    //   413: lload #13
    //   415: lstore #11
    //   417: iload #6
    //   419: istore #5
    //   421: aload_2
    //   422: ldc 't'
    //   424: invokevirtual getLong : (Ljava/lang/String;)J
    //   427: lstore #13
    //   429: goto -> 185
    //   432: ldc 2147483647
    //   434: istore #6
    //   436: lload #13
    //   438: lstore #11
    //   440: iload #6
    //   442: istore #5
    //   444: aload_2
    //   445: ldc 'eid'
    //   447: ldc 2147483647
    //   449: invokevirtual put : (Ljava/lang/String;I)Lorg/json/JSONObject;
    //   452: pop
    //   453: goto -> 185
    //   456: astore_2
    //   457: aload_2
    //   458: invokevirtual getMessage : ()Ljava/lang/String;
    //   461: aload_2
    //   462: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   465: pop
    //   466: lload #11
    //   468: lstore #15
    //   470: iload #5
    //   472: istore #7
    //   474: iload #9
    //   476: istore #8
    //   478: goto -> 337
    // Exception table:
    //   from	to	target	type
    //   61	71	456	org/json/JSONException
    //   79	88	456	org/json/JSONException
    //   96	101	456	org/json/JSONException
    //   114	124	456	org/json/JSONException
    //   142	151	456	org/json/JSONException
    //   159	168	456	org/json/JSONException
    //   176	185	456	org/json/JSONException
    //   193	197	456	org/json/JSONException
    //   205	214	456	org/json/JSONException
    //   234	243	456	org/json/JSONException
    //   251	258	456	org/json/JSONException
    //   282	292	456	org/json/JSONException
    //   300	309	456	org/json/JSONException
    //   401	410	456	org/json/JSONException
    //   421	429	456	org/json/JSONException
    //   444	453	456	org/json/JSONException
  }
  
  public void persistPerformanceEvent(String paramString, long paramLong, int paramInt1, int paramInt2) {
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("session_json_type", "prf");
      jSONObject.put("session_id", paramString);
      JSONObject jSONObject1 = setPerf(paramLong);
      if (jSONObject1 != null) {
        jSONObject.put("session_json", jSONObject1);
        jSONObject.put("eid", paramInt1);
        CAMobileDevOps.getDatabaseService().persistEvents(jSONObject, paramInt2, false);
      } 
      return;
    } catch (JSONException jSONException) {
      CALog.e(jSONException.getMessage(), (Throwable)jSONException);
      return;
    } 
  }
  
  public JSONObject setPerf(long paramLong) {
    if (CAMobileDevOps.getmAppDeviceData() != null) {
      JSONObject jSONObject = new JSONObject();
      PolicyManager policyManager = PolicyUtil.getPolicyManager((Context)SDK.getApp());
      try {
        jSONObject.put("t", paramLong);
        if (policyManager.isCpuEnabled()) {
          CAMobileDevOps.getmAppDeviceData();
          jSONObject.put("c", AppDeviceData.getCPUUsage());
        } else {
          jSONObject.put("c", 0);
        } 
        if (policyManager.isMemEnabled()) {
          CAMobileDevOps.getmAppDeviceData();
          jSONObject.put("m", AppDeviceData.getMemoryUsage());
        } else {
          jSONObject.put("m", 0);
        } 
        if (policyManager.isDiskEnabled()) {
          CAMobileDevOps.getmAppDeviceData();
          jSONObject.put("d", AppDeviceData.getDiskUsage());
        } else {
          jSONObject.put("d", 0);
        } 
        jSONObject.put("f", "0");
        if (policyManager.isBatteryEnabled()) {
          CAMobileDevOps.getmAppDeviceData();
          jSONObject.put("b", AppDeviceData.getBatteryPct());
          jSONObject.put("eid", this.sessionManager.getPresentEventID());
          return jSONObject;
        } 
      } catch (Exception exception) {
        CALog.e("Exception in processing perf Json", exception);
        return jSONObject;
      } 
      jSONObject.put("b", 0);
      jSONObject.put("eid", this.sessionManager.getPresentEventID());
      return jSONObject;
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\PersistenceManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */