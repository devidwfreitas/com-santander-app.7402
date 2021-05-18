package com.ca.mdo;

import android.content.Context;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public class DataManager {
  public static String UPLOAD_TAG;
  
  public static int eventCheckRate = 100;
  
  public AtomicInteger currentRate = new AtomicInteger(0);
  
  private String mBackendUrl;
  
  public Context mContext;
  
  static {
    UPLOAD_TAG = "[Upload]:";
  }
  
  public DataManager(Context paramContext, String paramString) {
    this.mContext = paramContext;
    this.mBackendUrl = paramString;
  }
  
  private void afterUploadProcessing(SessionUploadInfo paramSessionUploadInfo) {
    String str3;
    String str1 = (CAMobileDevOps.getSessionManager()).mSessionID;
    DatabaseHelper databaseHelper = DatabaseHelper.getDatabaseHelper(this.mContext);
    String str2 = Util.getSharedPreferences().getString(Constants.PREF_CRASH_SESSION, "");
    try {
      boolean bool;
      str3 = paramSessionUploadInfo.getSessionId();
      int i = paramSessionUploadInfo.getStatusCode();
      if (str1 != null && str1.equalsIgnoreCase(str3)) {
        bool = true;
      } else {
        bool = false;
      } 
      if (isSuccessfulUpload(i) || (i == 429 && !bool)) {
        CAMobileDevOps.removeCustomEventsForSession(str3);
        databaseHelper.purgeSessionEvents(str3);
        if (isSuccessfulUpload(i))
          updateLastAcceptedTime(System.currentTimeMillis()); 
        if (str1.equals(str3) || str2.equals(str3)) {
          databaseHelper.updateSessionMetadataStatus(str3, paramSessionUploadInfo.getSessionAcceptanceHeaderValue());
          return;
        } 
        databaseHelper.purgeSessionHeader(str3);
        return;
      } 
    } catch (Exception exception) {
      CALog.e("Exception while updating SDK DB after Uploading session:" + paramSessionUploadInfo.getSessionId());
      return;
    } 
    databaseHelper.updateSessionMetadataStatus(str3, paramSessionUploadInfo.getSessionAcceptanceHeaderValue());
  }
  
  private boolean isSuccessfulUpload(int paramInt) {
    return (paramInt >= 200 && paramInt < 300);
  }
  
  private void postToWriteServer(String paramString1, String paramString2, SessionUploadInfo paramSessionUploadInfo) {
    // Byte code:
    //   0: aload_3
    //   1: invokevirtual getSessionAcceptanceHeaderValue : ()Ljava/lang/String;
    //   4: astore #8
    //   6: new java/lang/StringBuilder
    //   9: dup
    //   10: invokespecial <init> : ()V
    //   13: getstatic com/ca/mdo/DataManager.UPLOAD_TAG : Ljava/lang/String;
    //   16: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: ldc 'Url +'
    //   21: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: aload_1
    //   25: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: invokevirtual toString : ()Ljava/lang/String;
    //   31: invokestatic d : (Ljava/lang/String;)I
    //   34: pop
    //   35: new java/lang/StringBuilder
    //   38: dup
    //   39: invokespecial <init> : ()V
    //   42: getstatic com/ca/mdo/DataManager.UPLOAD_TAG : Ljava/lang/String;
    //   45: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: ldc ' Header['
    //   50: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: getstatic com/ca/mdo/Constants.RESPONSE_HEADER_SESSION_STATUS : Ljava/lang/String;
    //   56: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: ldc ']='
    //   61: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: aload #8
    //   66: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: invokevirtual toString : ()Ljava/lang/String;
    //   72: invokestatic d : (Ljava/lang/String;)I
    //   75: pop
    //   76: new java/lang/StringBuilder
    //   79: dup
    //   80: invokespecial <init> : ()V
    //   83: getstatic com/ca/mdo/DataManager.UPLOAD_TAG : Ljava/lang/String;
    //   86: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: ldc 'Data to be uploaded '
    //   91: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: aload_2
    //   95: invokevirtual toString : ()Ljava/lang/String;
    //   98: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: invokevirtual toString : ()Ljava/lang/String;
    //   104: invokestatic f : (Ljava/lang/String;)I
    //   107: pop
    //   108: new org/apache/http/client/methods/HttpPost
    //   111: dup
    //   112: aload_1
    //   113: invokespecial <init> : (Ljava/lang/String;)V
    //   116: astore #7
    //   118: aload_2
    //   119: invokevirtual toString : ()Ljava/lang/String;
    //   122: invokestatic compress : (Ljava/lang/String;)[B
    //   125: astore_1
    //   126: new java/lang/StringBuilder
    //   129: dup
    //   130: invokespecial <init> : ()V
    //   133: getstatic com/ca/mdo/DataManager.UPLOAD_TAG : Ljava/lang/String;
    //   136: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: ldc 'Before Compression :'
    //   141: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: aload_2
    //   145: invokevirtual length : ()I
    //   148: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   151: ldc ' After Compression :'
    //   153: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: aload_1
    //   157: arraylength
    //   158: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   161: invokevirtual toString : ()Ljava/lang/String;
    //   164: invokestatic d : (Ljava/lang/String;)I
    //   167: pop
    //   168: aload #7
    //   170: ldc 'Content-Type'
    //   172: ldc 'application/json; charset=utf-8'
    //   174: invokevirtual setHeader : (Ljava/lang/String;Ljava/lang/String;)V
    //   177: aload #7
    //   179: ldc 'Content-Encoding'
    //   181: ldc 'gzip'
    //   183: invokevirtual setHeader : (Ljava/lang/String;Ljava/lang/String;)V
    //   186: aload #8
    //   188: ifnull -> 201
    //   191: aload #7
    //   193: getstatic com/ca/mdo/Constants.RESPONSE_HEADER_SESSION_STATUS : Ljava/lang/String;
    //   196: aload #8
    //   198: invokevirtual setHeader : (Ljava/lang/String;Ljava/lang/String;)V
    //   201: invokestatic getSharedPreferences : ()Landroid/content/SharedPreferences;
    //   204: getstatic com/ca/mdo/Constants.LAST_SESSION_ACCEPTED_TIME : Ljava/lang/String;
    //   207: ldc2_w -1
    //   210: invokeinterface getLong : (Ljava/lang/String;J)J
    //   215: lstore #5
    //   217: lload #5
    //   219: lconst_0
    //   220: lcmp
    //   221: ifle -> 469
    //   224: aload #7
    //   226: getstatic com/ca/mdo/Constants.REQUEST_HEADER_LAST_SESSION_ACCPETED_TIMESTAMP : Ljava/lang/String;
    //   229: lload #5
    //   231: invokestatic valueOf : (J)Ljava/lang/String;
    //   234: invokevirtual setHeader : (Ljava/lang/String;Ljava/lang/String;)V
    //   237: new java/lang/StringBuilder
    //   240: dup
    //   241: invokespecial <init> : ()V
    //   244: getstatic com/ca/mdo/DataManager.UPLOAD_TAG : Ljava/lang/String;
    //   247: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   250: ldc ' Header['
    //   252: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: getstatic com/ca/mdo/Constants.REQUEST_HEADER_LAST_SESSION_ACCPETED_TIMESTAMP : Ljava/lang/String;
    //   258: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   261: ldc ']='
    //   263: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   266: lload #5
    //   268: invokevirtual append : (J)Ljava/lang/StringBuilder;
    //   271: invokevirtual toString : ()Ljava/lang/String;
    //   274: invokestatic d : (Ljava/lang/String;)I
    //   277: pop
    //   278: aload #7
    //   280: ldc 'X-Axa-Tenant'
    //   282: getstatic com/ca/mdo/CAMobileDevOps.mTenantID : Ljava/lang/String;
    //   285: invokevirtual setHeader : (Ljava/lang/String;Ljava/lang/String;)V
    //   288: new java/lang/StringBuilder
    //   291: dup
    //   292: invokespecial <init> : ()V
    //   295: getstatic com/ca/mdo/DataManager.UPLOAD_TAG : Ljava/lang/String;
    //   298: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   301: ldc 'On wire Data Size '
    //   303: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   306: aload_1
    //   307: arraylength
    //   308: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   311: invokevirtual toString : ()Ljava/lang/String;
    //   314: invokestatic d : (Ljava/lang/String;)I
    //   317: pop
    //   318: aload #7
    //   320: new org/apache/http/entity/ByteArrayEntity
    //   323: dup
    //   324: aload_1
    //   325: invokespecial <init> : ([B)V
    //   328: invokevirtual setEntity : (Lorg/apache/http/HttpEntity;)V
    //   331: new org/apache/http/impl/client/DefaultHttpClient
    //   334: dup
    //   335: invokespecial <init> : ()V
    //   338: astore_2
    //   339: aload_2
    //   340: astore_1
    //   341: getstatic com/ca/mdo/SDK.isSslMode : Z
    //   344: ifeq -> 351
    //   347: invokestatic getHTTPClient : ()Lorg/apache/http/impl/client/DefaultHttpClient;
    //   350: astore_1
    //   351: aload_1
    //   352: aload #7
    //   354: invokeinterface execute : (Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   359: astore_1
    //   360: aload_1
    //   361: invokeinterface getStatusLine : ()Lorg/apache/http/StatusLine;
    //   366: invokeinterface getStatusCode : ()I
    //   371: istore #4
    //   373: aload_1
    //   374: getstatic com/ca/mdo/Constants.RESPONSE_HEADER_SESSION_STATUS : Ljava/lang/String;
    //   377: invokeinterface getFirstHeader : (Ljava/lang/String;)Lorg/apache/http/Header;
    //   382: astore_2
    //   383: aconst_null
    //   384: astore_1
    //   385: aload_2
    //   386: ifnull -> 396
    //   389: aload_2
    //   390: invokeinterface getValue : ()Ljava/lang/String;
    //   395: astore_1
    //   396: aload_3
    //   397: aload_1
    //   398: invokevirtual setSessionAcceptanceHeaderValue : (Ljava/lang/String;)V
    //   401: aload_3
    //   402: iload #4
    //   404: invokevirtual setStatusCode : (I)V
    //   407: new java/lang/StringBuilder
    //   410: dup
    //   411: invokespecial <init> : ()V
    //   414: getstatic com/ca/mdo/DataManager.UPLOAD_TAG : Ljava/lang/String;
    //   417: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   420: ldc_w ' Status code='
    //   423: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   426: aload_3
    //   427: invokevirtual getStatusCode : ()I
    //   430: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   433: ldc_w ' '
    //   436: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   439: invokevirtual toString : ()Ljava/lang/String;
    //   442: invokestatic d : (Ljava/lang/String;)I
    //   445: pop
    //   446: aload_3
    //   447: invokevirtual getStatusCode : ()I
    //   450: ifle -> 463
    //   453: aload_3
    //   454: invokevirtual getStatusCode : ()I
    //   457: sipush #300
    //   460: if_icmplt -> 468
    //   463: aload_3
    //   464: iconst_0
    //   465: invokevirtual setEventCounts : (I)V
    //   468: return
    //   469: aload #7
    //   471: getstatic com/ca/mdo/Constants.RESPONSE_HEADER_SESSION_STATUS : Ljava/lang/String;
    //   474: getstatic com/ca/mdo/Constants.SESSION_STATUS_ACCEPTED : Ljava/lang/String;
    //   477: invokevirtual setHeader : (Ljava/lang/String;Ljava/lang/String;)V
    //   480: goto -> 278
    //   483: astore_1
    //   484: new java/lang/StringBuilder
    //   487: dup
    //   488: invokespecial <init> : ()V
    //   491: getstatic com/ca/mdo/DataManager.UPLOAD_TAG : Ljava/lang/String;
    //   494: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   497: aload_1
    //   498: invokevirtual toString : ()Ljava/lang/String;
    //   501: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   504: invokevirtual toString : ()Ljava/lang/String;
    //   507: aload_1
    //   508: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   511: pop
    //   512: aload_3
    //   513: iconst_0
    //   514: invokevirtual setStatusCode : (I)V
    //   517: return
    //   518: astore_1
    //   519: aload_1
    //   520: invokevirtual toString : ()Ljava/lang/String;
    //   523: aload_1
    //   524: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   527: pop
    //   528: goto -> 331
    //   531: astore_1
    //   532: new java/lang/StringBuilder
    //   535: dup
    //   536: invokespecial <init> : ()V
    //   539: ldc_w 'Received Exception '
    //   542: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   545: aload_1
    //   546: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   549: invokevirtual toString : ()Ljava/lang/String;
    //   552: invokestatic d : (Ljava/lang/String;)I
    //   555: pop
    //   556: aload_2
    //   557: astore_1
    //   558: goto -> 351
    //   561: astore_1
    //   562: new java/lang/StringBuilder
    //   565: dup
    //   566: invokespecial <init> : ()V
    //   569: getstatic com/ca/mdo/DataManager.UPLOAD_TAG : Ljava/lang/String;
    //   572: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   575: ldc_w 'Failed to upload data : '
    //   578: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   581: aload_1
    //   582: invokevirtual getMessage : ()Ljava/lang/String;
    //   585: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   588: invokevirtual toString : ()Ljava/lang/String;
    //   591: aload_1
    //   592: invokestatic e : (Ljava/lang/String;Ljava/lang/Throwable;)I
    //   595: pop
    //   596: aload_3
    //   597: iconst_m1
    //   598: invokevirtual setStatusCode : (I)V
    //   601: new java/lang/StringBuilder
    //   604: dup
    //   605: invokespecial <init> : ()V
    //   608: getstatic com/ca/mdo/DataManager.UPLOAD_TAG : Ljava/lang/String;
    //   611: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   614: ldc_w ' Status code='
    //   617: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   620: aload_3
    //   621: invokevirtual getStatusCode : ()I
    //   624: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   627: ldc_w ' '
    //   630: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   633: invokevirtual toString : ()Ljava/lang/String;
    //   636: invokestatic d : (Ljava/lang/String;)I
    //   639: pop
    //   640: aload_3
    //   641: invokevirtual getStatusCode : ()I
    //   644: ifle -> 657
    //   647: aload_3
    //   648: invokevirtual getStatusCode : ()I
    //   651: sipush #300
    //   654: if_icmplt -> 468
    //   657: aload_3
    //   658: iconst_0
    //   659: invokevirtual setEventCounts : (I)V
    //   662: return
    //   663: astore_1
    //   664: new java/lang/StringBuilder
    //   667: dup
    //   668: invokespecial <init> : ()V
    //   671: getstatic com/ca/mdo/DataManager.UPLOAD_TAG : Ljava/lang/String;
    //   674: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   677: ldc_w ' Status code='
    //   680: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   683: aload_3
    //   684: invokevirtual getStatusCode : ()I
    //   687: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   690: ldc_w ' '
    //   693: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   696: invokevirtual toString : ()Ljava/lang/String;
    //   699: invokestatic d : (Ljava/lang/String;)I
    //   702: pop
    //   703: aload_3
    //   704: invokevirtual getStatusCode : ()I
    //   707: ifle -> 720
    //   710: aload_3
    //   711: invokevirtual getStatusCode : ()I
    //   714: sipush #300
    //   717: if_icmplt -> 725
    //   720: aload_3
    //   721: iconst_0
    //   722: invokevirtual setEventCounts : (I)V
    //   725: aload_1
    //   726: athrow
    // Exception table:
    //   from	to	target	type
    //   6	186	483	java/lang/Exception
    //   191	201	483	java/lang/Exception
    //   201	217	483	java/lang/Exception
    //   224	278	483	java/lang/Exception
    //   278	318	483	java/lang/Exception
    //   318	331	518	java/lang/Exception
    //   347	351	531	java/lang/Exception
    //   351	383	561	java/lang/Throwable
    //   351	383	663	finally
    //   389	396	561	java/lang/Throwable
    //   389	396	663	finally
    //   396	407	561	java/lang/Throwable
    //   396	407	663	finally
    //   469	480	483	java/lang/Exception
    //   519	528	483	java/lang/Exception
    //   562	601	663	finally
  }
  
  private void refreshPolicyOrSecurityKey(Integer paramInteger) {
    if (paramInteger.intValue() == 204) {
      PolicyUtil.refreshPolicy();
      return;
    } 
    if (paramInteger.intValue() == 210 || paramInteger.intValue() == 205) {
      MDOSecurityManager.getInstance().downloadNewSecurityKey();
      return;
    } 
  }
  
  private void resetRate() {
    this.currentRate.getAndSet(0);
  }
  
  private void updateLastAcceptedTime(long paramLong) {
    Util.getSharedPreferencesEditor().putLong(Constants.LAST_SESSION_ACCEPTED_TIME, paramLong).commit();
  }
  
  private ArrayList<SessionUploadInfo> uploadEvents() {
    ArrayList<SessionUploadInfo> arrayList = new ArrayList();
    HashSet<Integer> hashSet = new HashSet();
    try {
      DatabaseHelper databaseHelper = DatabaseHelper.getDatabaseHelper(this.mContext);
      Map<String, SessionMetaData> map = databaseHelper.getAllSessionMetadata();
      String str2 = CAMobileDevOps.getCrashedSession();
      CALog.d("Previous crashed session is " + CAMobileDevOps.getCrashedSession());
    } catch (Exception exception) {
      CALog.e(exception.toString(), exception);
    } finally {
      Exception exception = null;
      boolean bool1 = false;
    } 
    boolean bool = false;
    for (Integer integer1 : hashSet) {
      boolean bool1 = bool;
      if (!bool)
        bool1 = isSuccessfulUpload(integer1.intValue()); 
      refreshPolicyOrSecurityKey(integer1);
      bool = bool1;
    } 
    if (bool)
      checkIsDBFull(); 
    return (ArrayList<SessionUploadInfo>)integer;
  }
  
  public boolean canApplyDataRules() {
    return (this.currentRate.get() > eventCheckRate);
  }
  
  public void checkIsDBFull() {
    long l1 = AppDeviceData.getSDKDiskOccupancy();
    long l2 = PolicyUtil.getPolicyManager((Context)SDK.getApp()).getMaxDBSizeInBytes();
    CALog.d(" Current SDK  usage Bytes  = " + l1 + " of allowed " + l2 + " Bytes");
    if (l1 > l2) {
      CALog.i("Persistent data usage is higher than 100% SDK will be disabled.");
      SDK.setDBFull();
      return;
    } 
    SDK.setDBAvailable();
  }
  
  public void increment() {
    this.currentRate.incrementAndGet();
  }
  
  public void processRules() {
    if (canApplyDataRules()) {
      checkIsDBFull();
      resetRate();
    } 
  }
  
  public ArrayList<SessionUploadInfo> processUploads() {
    ArrayList<SessionUploadInfo> arrayList2 = new ArrayList();
    ArrayList<SessionUploadInfo> arrayList1 = arrayList2;
    if (!CAMobileDevOps.getOptOut()) {
      arrayList1 = arrayList2;
      try {
        CALog.d("");
        arrayList1 = arrayList2;
        CALog.d("---------------------- UPLOADING DATA ---------------------");
        arrayList1 = arrayList2;
        arrayList2 = uploadEvents();
        arrayList1 = arrayList2;
        CALog.d("---------------------- DONE UPLOADING DATA ---------------------");
        arrayList1 = arrayList2;
        CALog.d("");
        return arrayList2;
      } catch (Exception exception) {
        CALog.e(exception.toString(), exception);
        return arrayList1;
      } 
    } 
    return arrayList1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\DataManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */