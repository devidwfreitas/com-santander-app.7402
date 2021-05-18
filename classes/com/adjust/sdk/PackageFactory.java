package com.adjust.sdk;

import android.net.Uri;
import android.net.UrlQuerySanitizer;
import avo;
import avq;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class PackageFactory {
  private static final String ADJUST_PREFIX = "adjust_";
  
  public static ActivityPackage buildDeeplinkSdkClickPackage(Uri paramUri, long paramLong, ActivityState paramActivityState, AdjustConfig paramAdjustConfig, avo paramavo, SessionParameters paramSessionParameters) {
    if (paramUri != null) {
      String str = paramUri.toString();
      if (str != null && str.length() != 0) {
        AdjustFactory.getLogger().verbose("Url to parse (%s)", new Object[] { paramUri });
        UrlQuerySanitizer urlQuerySanitizer = new UrlQuerySanitizer();
        urlQuerySanitizer.setUnregisteredParameterValueSanitizer(UrlQuerySanitizer.getAllButNulLegal());
        urlQuerySanitizer.setAllowUnregisteredParamaters(true);
        urlQuerySanitizer.parseUrl(str);
        avq avq = queryStringClickPackageBuilder(urlQuerySanitizer.getParameterList(), paramActivityState, paramAdjustConfig, paramavo, paramSessionParameters);
        if (avq != null) {
          avq.f = paramUri.toString();
          avq.g = paramLong;
          return avq.a("deeplink");
        } 
      } 
    } 
    return null;
  }
  
  public static ActivityPackage buildInstallReferrerSdkClickPackage(String paramString, long paramLong1, long paramLong2, ActivityState paramActivityState, AdjustConfig paramAdjustConfig, avo paramavo, SessionParameters paramSessionParameters) {
    if (paramString == null || paramString.length() == 0)
      return null; 
    avq avq = new avq(paramAdjustConfig, paramavo, paramActivityState, paramSessionParameters, System.currentTimeMillis());
    if (avq == null)
      return null; 
    avq.d = paramString;
    avq.h = paramLong1;
    avq.i = paramLong2;
    return avq.a("install_referrer");
  }
  
  public static ActivityPackage buildReftagSdkClickPackage(String paramString, long paramLong, ActivityState paramActivityState, AdjustConfig paramAdjustConfig, avo paramavo, SessionParameters paramSessionParameters) {
    // Byte code:
    //   0: aload_0
    //   1: ifnull -> 11
    //   4: aload_0
    //   5: invokevirtual length : ()I
    //   8: ifne -> 13
    //   11: aconst_null
    //   12: areturn
    //   13: aload_0
    //   14: ldc 'UTF-8'
    //   16: invokestatic decode : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   19: astore #7
    //   21: invokestatic getLogger : ()Lcom/adjust/sdk/ILogger;
    //   24: ldc 'Referrer to parse (%s)'
    //   26: iconst_1
    //   27: anewarray java/lang/Object
    //   30: dup
    //   31: iconst_0
    //   32: aload #7
    //   34: aastore
    //   35: invokeinterface verbose : (Ljava/lang/String;[Ljava/lang/Object;)V
    //   40: new android/net/UrlQuerySanitizer
    //   43: dup
    //   44: invokespecial <init> : ()V
    //   47: astore #8
    //   49: aload #8
    //   51: invokestatic getAllButNulLegal : ()Landroid/net/UrlQuerySanitizer$ValueSanitizer;
    //   54: invokevirtual setUnregisteredParameterValueSanitizer : (Landroid/net/UrlQuerySanitizer$ValueSanitizer;)V
    //   57: aload #8
    //   59: iconst_1
    //   60: invokevirtual setAllowUnregisteredParamaters : (Z)V
    //   63: aload #8
    //   65: aload #7
    //   67: invokevirtual parseQuery : (Ljava/lang/String;)V
    //   70: aload #8
    //   72: invokevirtual getParameterList : ()Ljava/util/List;
    //   75: aload_3
    //   76: aload #4
    //   78: aload #5
    //   80: aload #6
    //   82: invokestatic queryStringClickPackageBuilder : (Ljava/util/List;Lcom/adjust/sdk/ActivityState;Lcom/adjust/sdk/AdjustConfig;Lavo;Lcom/adjust/sdk/SessionParameters;)Lavq;
    //   85: astore_3
    //   86: aload_3
    //   87: ifnonnull -> 101
    //   90: aconst_null
    //   91: areturn
    //   92: astore #7
    //   94: ldc 'malformed'
    //   96: astore #7
    //   98: goto -> 21
    //   101: aload_3
    //   102: aload #7
    //   104: putfield d : Ljava/lang/String;
    //   107: aload_3
    //   108: lload_1
    //   109: putfield g : J
    //   112: aload_3
    //   113: aload_0
    //   114: putfield e : Ljava/lang/String;
    //   117: aload_3
    //   118: ldc 'reftag'
    //   120: invokevirtual a : (Ljava/lang/String;)Lcom/adjust/sdk/ActivityPackage;
    //   123: areturn
    // Exception table:
    //   from	to	target	type
    //   13	21	92	java/io/UnsupportedEncodingException
  }
  
  private static avq queryStringClickPackageBuilder(List<UrlQuerySanitizer.ParameterValuePair> paramList, ActivityState paramActivityState, AdjustConfig paramAdjustConfig, avo paramavo, SessionParameters paramSessionParameters) {
    if (paramList == null)
      return null; 
    LinkedHashMap<Object, Object> linkedHashMap = new LinkedHashMap<Object, Object>();
    AdjustAttribution adjustAttribution = new AdjustAttribution();
    for (UrlQuerySanitizer.ParameterValuePair parameterValuePair : paramList)
      readQueryString(parameterValuePair.mParameter, parameterValuePair.mValue, (Map)linkedHashMap, adjustAttribution); 
    long l = System.currentTimeMillis();
    String str = (String)linkedHashMap.remove("reftag");
    if (paramActivityState != null)
      paramActivityState.lastInterval = l - paramActivityState.lastActivity; 
    avq avq = new avq(paramAdjustConfig, paramavo, paramActivityState, paramSessionParameters, l);
    avq.a = linkedHashMap;
    avq.b = adjustAttribution;
    avq.c = str;
    return avq;
  }
  
  private static boolean readQueryString(String paramString1, String paramString2, Map<String, String> paramMap, AdjustAttribution paramAdjustAttribution) {
    if (paramString1 != null && paramString2 != null && paramString1.startsWith("adjust_")) {
      paramString1 = paramString1.substring("adjust_".length());
      if (paramString1.length() != 0 && paramString2.length() != 0) {
        if (!tryToSetAttribution(paramAdjustAttribution, paramString1, paramString2))
          paramMap.put(paramString1, paramString2); 
        return true;
      } 
    } 
    return false;
  }
  
  private static boolean tryToSetAttribution(AdjustAttribution paramAdjustAttribution, String paramString1, String paramString2) {
    if (paramString1.equals("tracker")) {
      paramAdjustAttribution.trackerName = paramString2;
      return true;
    } 
    if (paramString1.equals("campaign")) {
      paramAdjustAttribution.campaign = paramString2;
      return true;
    } 
    if (paramString1.equals("adgroup")) {
      paramAdjustAttribution.adgroup = paramString2;
      return true;
    } 
    if (paramString1.equals("creative")) {
      paramAdjustAttribution.creative = paramString2;
      return true;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\adjust\sdk\PackageFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */