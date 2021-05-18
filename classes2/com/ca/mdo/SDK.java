package com.ca.mdo;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import com.ca.android.app.AnalyticsAgent;

public class SDK {
  private static Application application;
  
  private static AnalyticsAgent currentAgent;
  
  private static AnalyticsAgent dummyAgent;
  
  public static boolean firstLaunch;
  
  public static boolean isSDKEnabledByPolicy;
  
  private static boolean isSDKInitialized;
  
  public static boolean isSslMode;
  
  private static SharedPreferenceChangeListener perfChangeListener;
  
  private static AnalyticsAgent realAgent = null;
  
  private static String sdkEnabledByApi;
  
  private static boolean swappingInProgress;
  
  static {
    dummyAgent = null;
    isSDKEnabledByPolicy = true;
    swappingInProgress = false;
    sdkEnabledByApi = null;
    currentAgent = null;
    firstLaunch = false;
    isSDKInitialized = false;
    isSslMode = false;
  }
  
  private static void changeDBFullPref(boolean paramBoolean) {
    SessionManager sessionManager;
    boolean bool = isDBFull();
    Util.getSharedPreferencesEditor().putBoolean(Constants.PREF_IS_DB_FULL, bool);
    if (bool != paramBoolean) {
      sessionManager = CAMobileDevOps.getSessionManager();
      if (bool == true) {
        DatabaseHandler.isDBFull.set(paramBoolean);
        sessionManager.startSession(System.currentTimeMillis());
        return;
      } 
    } else {
      return;
    } 
    sessionManager.endSession();
    DatabaseHandler.isDBFull.set(paramBoolean);
  }
  
  private static void checkSDKPolicy(Application paramApplication) {
    ConfigManager.readConfigurationFromPlistFile((Context)paramApplication);
    PolicyUtil.mProfileUrl = ConfigManager.getConfig().get("profileURL");
    PolicyUtil.getPolicyManager((Context)application);
  }
  
  public static void disableSDKByAPI() {
    Util.getSharedPreferencesEditor().putString(Constants.PREF_IS_SDK_ENABLED_BY_API, "FALSE").commit();
  }
  
  public static void enableSDKByAPI() {
    Util.getSharedPreferencesEditor().putString(Constants.PREF_IS_SDK_ENABLED_BY_API, "TRUE").commit();
  }
  
  public static AnalyticsAgent getAgent() {
    // Byte code:
    //   0: invokestatic getAndroidVersion : ()I
    //   3: bipush #16
    //   5: if_icmpge -> 21
    //   8: new com/ca/mdo/DummyAgentImpl
    //   11: dup
    //   12: getstatic com/ca/mdo/SDK.application : Landroid/app/Application;
    //   15: invokespecial <init> : (Landroid/app/Application;)V
    //   18: astore_1
    //   19: aload_1
    //   20: areturn
    //   21: getstatic com/ca/mdo/SDK.sdkEnabledByApi : Ljava/lang/String;
    //   24: ifnull -> 87
    //   27: getstatic com/ca/mdo/SDK.sdkEnabledByApi : Ljava/lang/String;
    //   30: ldc 'TRUE'
    //   32: invokevirtual equals : (Ljava/lang/Object;)Z
    //   35: ifeq -> 80
    //   38: getstatic com/ca/mdo/SDK.realAgent : Lcom/ca/android/app/AnalyticsAgent;
    //   41: astore_0
    //   42: aload_0
    //   43: ifnull -> 61
    //   46: aload_0
    //   47: invokeinterface isInitialized : ()Z
    //   52: ifne -> 61
    //   55: aload_0
    //   56: invokeinterface init : ()V
    //   61: aload_0
    //   62: putstatic com/ca/mdo/SDK.currentAgent : Lcom/ca/android/app/AnalyticsAgent;
    //   65: aload_0
    //   66: ifnonnull -> 107
    //   69: new com/ca/mdo/DummyAgentImpl
    //   72: dup
    //   73: getstatic com/ca/mdo/SDK.application : Landroid/app/Application;
    //   76: invokespecial <init> : (Landroid/app/Application;)V
    //   79: areturn
    //   80: getstatic com/ca/mdo/SDK.dummyAgent : Lcom/ca/android/app/AnalyticsAgent;
    //   83: astore_0
    //   84: goto -> 42
    //   87: getstatic com/ca/mdo/SDK.isSDKEnabledByPolicy : Z
    //   90: ifeq -> 100
    //   93: getstatic com/ca/mdo/SDK.realAgent : Lcom/ca/android/app/AnalyticsAgent;
    //   96: astore_0
    //   97: goto -> 42
    //   100: getstatic com/ca/mdo/SDK.dummyAgent : Lcom/ca/android/app/AnalyticsAgent;
    //   103: astore_0
    //   104: goto -> 42
    //   107: aload_0
    //   108: astore_1
    //   109: getstatic com/ca/mdo/SDK.swappingInProgress : Z
    //   112: ifeq -> 19
    //   115: ldc com/ca/mdo/SDK
    //   117: monitorenter
    //   118: ldc com/ca/mdo/SDK
    //   120: monitorexit
    //   121: aload_0
    //   122: areturn
    //   123: astore_0
    //   124: ldc com/ca/mdo/SDK
    //   126: monitorexit
    //   127: aload_0
    //   128: athrow
    // Exception table:
    //   from	to	target	type
    //   118	121	123	finally
    //   124	127	123	finally
  }
  
  public static AnalyticsAgent getAgent(Application paramApplication) {
    if (CAMobileDevOps.getAndroidVersion() < 16)
      return new DummyAgentImpl(paramApplication); 
    if (!isSDKInitialized)
      initialize(paramApplication); 
    return getAgent();
  }
  
  public static Application getApp() {
    return application;
  }
  
  public static String getSDKEnabledByAPI() {
    return Util.getSharedPreferences().getString(Constants.PREF_IS_SDK_ENABLED_BY_API, null);
  }
  
  public static void initialize(Application paramApplication) {
    firstLaunch = true;
    perfChangeListener = new SharedPreferenceChangeListener();
    application = paramApplication;
    realAgent = new AnalyticsAgentImpl(application);
    dummyAgent = new DummyAgentImpl(application);
    isSDKEnabledByPolicy = PolicyManager.getSDKEnabledFlagPrefVal((Context)application);
    checkSDKPolicy(paramApplication);
    Util.getSharedPreferences().registerOnSharedPreferenceChangeListener(perfChangeListener);
    sdkEnabledByApi = Util.getSharedPreferences().getString(Constants.PREF_IS_SDK_ENABLED_BY_API, null);
    isSDKInitialized = true;
  }
  
  public static boolean isDBFull() {
    return Util.getSharedPreferences().getBoolean(Constants.PREF_IS_DB_FULL, false);
  }
  
  public static void onSDKDisabled() {
    // Byte code:
    //   0: ldc com/ca/mdo/SDK
    //   2: monitorenter
    //   3: getstatic com/ca/mdo/SDK.currentAgent : Lcom/ca/android/app/AnalyticsAgent;
    //   6: getstatic com/ca/mdo/SDK.dummyAgent : Lcom/ca/android/app/AnalyticsAgent;
    //   9: if_acmpeq -> 35
    //   12: ldc 'SDK_IS_DISABLED: NO data will be collected.'
    //   14: invokestatic d : (Ljava/lang/String;)I
    //   17: pop
    //   18: iconst_0
    //   19: putstatic com/ca/mdo/SDK.isSDKEnabledByPolicy : Z
    //   22: getstatic com/ca/mdo/SDK.realAgent : Lcom/ca/android/app/AnalyticsAgent;
    //   25: getstatic com/ca/mdo/SDK.dummyAgent : Lcom/ca/android/app/AnalyticsAgent;
    //   28: invokestatic toggle : (Lcom/ca/android/app/AnalyticsAgent;Lcom/ca/android/app/AnalyticsAgent;)V
    //   31: ldc com/ca/mdo/SDK
    //   33: monitorexit
    //   34: return
    //   35: ldc 'SDK IS Already disabled '
    //   37: invokestatic d : (Ljava/lang/String;)I
    //   40: pop
    //   41: goto -> 31
    //   44: astore_0
    //   45: ldc com/ca/mdo/SDK
    //   47: monitorexit
    //   48: aload_0
    //   49: athrow
    // Exception table:
    //   from	to	target	type
    //   3	31	44	finally
    //   35	41	44	finally
  }
  
  public static void onSDKEnabled() {
    // Byte code:
    //   0: ldc com/ca/mdo/SDK
    //   2: monitorenter
    //   3: getstatic com/ca/mdo/SDK.currentAgent : Lcom/ca/android/app/AnalyticsAgent;
    //   6: getstatic com/ca/mdo/SDK.realAgent : Lcom/ca/android/app/AnalyticsAgent;
    //   9: if_acmpeq -> 35
    //   12: ldc 'SDK IS ENABLED: Now data will be collected.'
    //   14: invokestatic d : (Ljava/lang/String;)I
    //   17: pop
    //   18: iconst_1
    //   19: putstatic com/ca/mdo/SDK.isSDKEnabledByPolicy : Z
    //   22: getstatic com/ca/mdo/SDK.dummyAgent : Lcom/ca/android/app/AnalyticsAgent;
    //   25: getstatic com/ca/mdo/SDK.realAgent : Lcom/ca/android/app/AnalyticsAgent;
    //   28: invokestatic toggle : (Lcom/ca/android/app/AnalyticsAgent;Lcom/ca/android/app/AnalyticsAgent;)V
    //   31: ldc com/ca/mdo/SDK
    //   33: monitorexit
    //   34: return
    //   35: ldc 'SDK IS Already enabled '
    //   37: invokestatic d : (Ljava/lang/String;)I
    //   40: pop
    //   41: goto -> 31
    //   44: astore_0
    //   45: ldc com/ca/mdo/SDK
    //   47: monitorexit
    //   48: aload_0
    //   49: athrow
    // Exception table:
    //   from	to	target	type
    //   3	31	44	finally
    //   35	41	44	finally
  }
  
  public static void setDBAvailable() {
    changeDBFullPref(false);
  }
  
  public static void setDBFull() {
    changeDBFullPref(true);
  }
  
  private static void toggle(AnalyticsAgent paramAnalyticsAgent1, AnalyticsAgent paramAnalyticsAgent2) {
    // Byte code:
    //   0: ldc com/ca/mdo/SDK
    //   2: monitorenter
    //   3: getstatic com/ca/mdo/SDK.currentAgent : Lcom/ca/android/app/AnalyticsAgent;
    //   6: aload_1
    //   7: if_acmpeq -> 34
    //   10: iconst_1
    //   11: putstatic com/ca/mdo/SDK.swappingInProgress : Z
    //   14: aload_0
    //   15: invokeinterface pause : ()V
    //   20: aload_1
    //   21: invokeinterface resume : ()V
    //   26: aload_1
    //   27: putstatic com/ca/mdo/SDK.currentAgent : Lcom/ca/android/app/AnalyticsAgent;
    //   30: iconst_0
    //   31: putstatic com/ca/mdo/SDK.swappingInProgress : Z
    //   34: ldc com/ca/mdo/SDK
    //   36: monitorexit
    //   37: return
    //   38: astore_0
    //   39: ldc com/ca/mdo/SDK
    //   41: monitorexit
    //   42: aload_0
    //   43: athrow
    // Exception table:
    //   from	to	target	type
    //   3	34	38	finally
  }
  
  static class SharedPreferenceChangeListener implements SharedPreferences.OnSharedPreferenceChangeListener {
    public void onSharedPreferenceChanged(SharedPreferences param1SharedPreferences, String param1String) {
      if (param1String != null && param1String.equals(Constants.PREF_IS_SDK_ENABLED_BY_API)) {
        SDK.access$002(Util.getSharedPreferences().getString(Constants.PREF_IS_SDK_ENABLED_BY_API, null));
        if (SDK.sdkEnabledByApi != null) {
          if (SDK.sdkEnabledByApi.equals("TRUE")) {
            SDK.onSDKEnabled();
            return;
          } 
        } else {
          return;
        } 
      } else {
        return;
      } 
      SDK.onSDKDisabled();
    }
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\SDK.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */