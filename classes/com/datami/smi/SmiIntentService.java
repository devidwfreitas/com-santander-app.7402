package com.datami.smi;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.util.Log;
import com.datami.smi.b.k;
import com.datami.smi.b.m;
import com.datami.smi.b.t;
import com.datami.smi.c.c;
import com.datami.smi.c.d;
import com.datami.smi.h.f;
import java.io.Serializable;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Iterator;
import java.util.List;

public class SmiIntentService extends IntentService {
  private static final byte[] $ = new byte[] { 
      64, 16, -53, 106, -19, 2, -2, -4, -13, 17, 
      1, 68, -51, 6, 4, -22, 22, -5, -6, 15, 
      -9, -6, -11, 30, -2, -17, 11, -6, 1, -17, 
      28, -9, 7, 4, -17, -13, 28, 2, -2, -5, 
      3, -47, -31, 38, -25, -13, 10, -8, 7, 1, 
      27, -37, -6, 15, -9, -6, 76, -1, 9, -12, 
      0, 4, 54, 11, 0, -5, -3, 13, 1, -11, 
      -19, 27, -5, -10, 16, -12, -7, 17, -13, -7, 
      -6, 15, 7, -5, 7, -9, -9, 4, 12, -23, 
      -15, -3, 8, -3, 7, 75, -73, -10, 83, -78, 
      -1, -5, 84, -67, -12, 1, 0, 9, 2, -17, 
      15, 1, 68, -83, 4, 79, -82, 13, -15, -1, 
      3, 9, -5, 7, 0, 12, 5, -15, 0, -15, 
      12, 15, -27, 30, -20, 1, 12, 40, -92, 92, 
      -46, -9, 55, -35, -37, 7, -13, 7, 2, -19, 
      21, -9, -9, 2, 10, -6, 1, 34, -29, -10, 
      -1, 15, -7, -20, 26, -17, 17, -9, -6, -12, 
      0, 4, -3, 57, 11, 0, -16, 55, -80, 7, 
      -5, 7, 71, -84, 15, -14, -1, 84, -70, 5, 
      -8, -3, -9, 3, 13, 68, -1, 5, -1, -15, 
      12, 15, -27, 27, 3, -19, 19, -12, 1, 0, 
      9, 2, -17, 11, -13, 13, -11, -5, -19, 2, 
      -2, -4, -13, 17, 1, 68, -51, 6, 4, -22, 
      22, -5, -6, 15, -9, -6, -11, 30, -2, -17, 
      11, -6, 1, -17, 24, -16, -8, 15, 7, -5, 
      7, -24, 11, 15, -14, -1, 13, 4, -11, 0, 
      -3, -8, 42, -24, -14, 0, 18, -6, -2, -5, 
      7, -9, 7, 4, -17, -13, 28, 2, -2, -5, 
      3, 6, -12, 1, 37, -27, -26, 4, 32, -37, 
      -6, 15, -9, -6, 33, -18, -13, -4, 13, 6, 
      -2, 69, -70, 5, -8, -3, 7, 1, 42, 26, 
      -45, -5, 12, 64, -71, 3, 8, 68, -65, -13, 
      10, 68, -78, 9, -18, 78, 9, -68, -1, -11, 
      4, -3, -10, 12, 8, -9, -6, 1, 83, -65, 
      -17, 13, 69, -83, 18, -12, 8, 69, -83, 4, 
      79, -84, 15, -13, 5, 4, -5, 13, -19, 11, 
      -5, 7, 71, -84, 12, 3, 69, -76, -3, 0, 
      -1, -16, 55, -65, -18, -6, 11, 11, 67, -80, 
      7, -5, 7, 71, -84, 15, -14, -1, 84, -83, 
      -2, 18, -16, 14, -14, 0, -15, 0, -15, 12, 
      15, -27, 30, -20, 1, 12, 2, -15, 51, -47, 
      0, 29, 15, 3, -52, 1, 12, 72, -70, 5, 
      -8, -3, 7, 1, 42, -26, 4, 32, -37, -6, 
      15, -9, -6, 33, -18, -13, -4, 13, 6, -2, 
      2, 14, -13, 41, -27, -39, 3, 36, -80, 7, 
      -5, 7, 71, -66, 1, -2, -8, -5, -6, 15, 
      -9, -6, 84, -83, 14, -13, -4, 13, 6, -2, 
      69, -65, -2, -17, 11, -6, 1, 78, -26, 26, 
      15, -7, 32, -26, -20, -16, -8, 15, 7, -5, 
      7, -24, 11, 15, -14, -1, 3, 6, 44, -69, 
      -19, 21, -2, -11, -4, 11, -6, 1, 78 };
  
  private static int $$ = 29;
  
  public static final String SMI_INTENT_ACTION_APP_SD_AUTH = "APP_SD_AUTH";
  
  public static final String SMI_INTENT_ACTION_CLEAR_CACHE = "CLEAR_CACHE";
  
  public static final String SMI_INTENT_ACTION_GLOBAL_DISCOVERY_PING = "GLOBAL_DISCOVERY_PING";
  
  public static final String SMI_INTENT_ACTION_GW_PING_TEST = "GW_PING_TEST";
  
  public static final String SMI_INTENT_ACTION_SDK_EVENT = "SDK_EVENT";
  
  public static final String SMI_INTENT_ACTION_STOP_SD_DATA = "STOP_SD_DATA";
  
  private static final String TAG = $($[294], 424, $[14]) + SmiIntentService.class.getSimpleName();
  
  private static String $(int paramInt1, int paramInt2, int paramInt3) {
    paramInt2 = 509 - paramInt2;
    byte[] arrayOfByte2 = $;
    paramInt1 = 124 - paramInt1;
    byte[] arrayOfByte1 = new byte[++paramInt3];
    int j = paramInt3 - 1;
    if (arrayOfByte2 == null) {
      boolean bool = false;
      paramInt3 = paramInt1;
      i = j;
      paramInt1 = bool;
    } else {
      paramInt3 = 0;
      arrayOfByte1[paramInt3] = (byte)paramInt1;
      int m = paramInt3 + 1;
    } 
    int i = -i;
    paramInt2++;
    i = paramInt3 + i;
    paramInt3 = paramInt1;
    paramInt1 = i;
    arrayOfByte1[paramInt3] = (byte)paramInt1;
    int k = paramInt3 + 1;
  }
  
  public SmiIntentService() {
    super($($[443], $[102], $[19]));
  }
  
  public static boolean checkForLoop() {
    boolean bool = false;
    String str = new String(c.c.b());
    (new d(SmiSdk.mContext)).run();
    if (str.equalsIgnoreCase(c.c.b())) {
      Log.i(TAG, $($$ << 1, 199, $$ | 0x20));
      bool = true;
    } 
    return bool;
  }
  
  private static boolean checkForLoopCondition() {
    boolean bool = false;
    String str = new String(c.c.b());
    (new d(SmiSdk.mContext)).run();
    if (str.equalsIgnoreCase(c.c.b())) {
      Log.i(TAG, $($$ << 1, 199, $$ | 0x20));
      bool = true;
    } 
    return bool;
  }
  
  private static String exclusionDomainListToString(List paramList) {
    if (paramList == null)
      return null; 
    StringBuilder stringBuilder = new StringBuilder();
    Iterator iterator = paramList.iterator();
    while (true) {
      while (true)
        break; 
      if (paramList != null && !paramList.isEmpty()) {
        stringBuilder.append((String)paramList);
        byte b1 = $[60];
        stringBuilder.append($(b1, b1, b1));
      } 
    } 
    byte b = $[60];
    stringBuilder.deleteCharAt(stringBuilder.lastIndexOf($(b, b, b)));
    return stringBuilder.toString();
  }
  
  private static String getDomain(String paramString) {
    try {
      return (new URL(paramString)).getHost();
    } catch (MalformedURLException malformedURLException) {
      StringBuilder stringBuilder = new StringBuilder();
      byte b1 = -$[445];
      byte b2 = $[67];
      stringBuilder.append($(b1, b2, b2)).append(malformedURLException);
      return null;
    } 
  }
  
  private static int getIconId(SharedPreferences paramSharedPreferences) {
    return paramSharedPreferences.getInt($($[206], 228, $[126]), -1);
  }
  
  public static String getSdkKey(Context paramContext) {
    return k.a(paramContext).getString($($[58], $$, $[126]), "");
  }
  
  private static String getUserId(SharedPreferences paramSharedPreferences) {
    return paramSharedPreferences.getString($($[32], $[301], $[126]), "");
  }
  
  private static boolean getUserMessaging(SharedPreferences paramSharedPreferences) {
    byte b = $[50];
    return paramSharedPreferences.getBoolean($(b, b | 0xE0, $[67]), false);
  }
  
  private static void handleGwPingTest(m paramm) {
    if (m.a(paramm) == t.b) {
      $(-$[2], 333, -$[134]);
      SmiResult smiResult = new SmiResult();
      smiResult.setSdReason(SdReason.SD_NOT_AVAILABLE_GW_CONNECTION_FAILURE);
      smiResult.setSdState(SdState.SD_NOT_AVAILABLE);
      (new Handler(SmiSdk.mContext.getMainLooper())).post(new i(smiResult));
      return;
    } 
    $(-$[2], 138, -$[44]);
  }
  
  public static void init(String paramString1, String paramString2, Context paramContext) {
    SharedPreferences.Editor editor = k.a(paramContext).edit();
    editor.putString($($[58], $$, $[126]), paramString1);
    editor.putString($($[32], $[301], $[126]), paramString2);
    editor.apply();
    editor.commit();
  }
  
  public static void init(String paramString1, String paramString2, Context paramContext, int paramInt, boolean paramBoolean, List paramList) {
    SharedPreferences.Editor editor = k.a(paramContext).edit();
    editor.putString($($[58], $$, $[126]), paramString1);
    editor.putString($($[32], $[301], $[126]), paramString2);
    editor.putInt($($[206], 228, $[126]), paramInt);
    paramInt = $[50];
    editor.putBoolean($(paramInt, paramInt | 0xE0, $[67]), paramBoolean);
    editor.putString($(-$[89], 360, $[88]), exclusionDomainListToString(paramList));
    editor.apply();
    editor.commit();
  }
  
  private void resetUramPreferenceData(SharedPreferences paramSharedPreferences) {
    if (paramSharedPreferences == null)
      return; 
    SharedPreferences.Editor editor = paramSharedPreferences.edit();
    if (paramSharedPreferences.contains($($[32], 385, $[40])))
      editor.remove($($[32], 385, $[40])); 
    editor.apply();
    editor.commit();
  }
  
  public static void sendClearCacheEventIntent() {
    Intent intent = new Intent(SmiSdk.mContext, SmiIntentService.class);
    intent.setAction($($[173], 238, $[46]));
    SmiSdk.mContext.startService(intent);
  }
  
  public static void sendGwPingTestIntent(m paramm) {
    Intent intent = new Intent(SmiSdk.mContext, SmiIntentService.class);
    intent.setAction($(-$[2], $[244], $[26]));
    intent.putExtra($($[5], $$ | 0xE0, $[5]), (Serializable)paramm);
    SmiSdk.mContext.startService(intent);
  }
  
  public static void sendReAuthEventIntent() {
    Intent intent = new Intent(SmiSdk.mContext, SmiIntentService.class);
    intent.setAction($(59, 113, $[46]));
    SmiSdk.mContext.startService(intent);
  }
  
  protected void onHandleIntent(Intent paramIntent) {
    SharedPreferences sharedPreferences;
    String str;
    try {
      sharedPreferences = k.a(SmiSdk.mContext);
      $($[139], 468, $[266]);
      str = paramIntent.getAction();
      (new StringBuilder()).append($($[206], -$[414], -$[89])).append(str);
      if (str == null)
        return; 
      NetworkInfo networkInfo = ((ConnectivityManager)SmiSdk.mContext.getSystemService($(-$[44], 302, $[26]))).getActiveNetworkInfo();
      if (networkInfo == null || !networkInfo.isConnected()) {
        Log.i(TAG, $(-$[140], 420, -$[143]));
        return;
      } 
    } catch (Exception null) {
      $($[443], $$ | 0xC2, $[244]);
      return;
    } 
    if (str.equalsIgnoreCase($(-$[2], 444, -$[134]))) {
      Log.i(TAG, $($[139], $[0], $[88]));
      m.a(SmiSdk.mContext, false);
      return;
    } 
    boolean bool = str.equalsIgnoreCase($(59, 113, $[46]));
    if (bool) {
      try {
        Log.i(TAG, $(59, 382, $[16]));
        if (!getSdkKey(SmiSdk.mContext).isEmpty() && m.S()) {
          SmiSdk.getAppSDAuthInternal(SmiSdk.mContext, getUserId(sharedPreferences), getIconId(sharedPreferences), null, getUserMessaging(sharedPreferences));
          return;
        } 
      } catch (Exception exception) {
        m.v();
        $($[150], 103, $[206]);
        return;
      } 
    } else {
      SmiResult smiResult;
      if (str.equalsIgnoreCase($($[443], 348, $[92]))) {
        $($[443], 348, $[92]);
        f.a((Intent)exception, SmiSdk.mContext);
        return;
      } 
      byte b = $[443];
      if (str.equalsIgnoreCase($(b, b | 0x110, $[26]))) {
        m.L();
        return;
      } 
      if (str.equalsIgnoreCase($($[173], 238, $[46]))) {
        $($[262], 505, $[284]);
        if (!checkForLoopCondition()) {
          smiResult = m.O();
          m.a(SmiSdk.mContext, smiResult, null);
          c.a(SmiSdk.mContext);
          sendReAuthEventIntent();
          return;
        } 
      } else if (str.equalsIgnoreCase($(-$[2], $[244], $[26]))) {
        $($[262], 291, $[43]);
        handleGwPingTest((m)smiResult.getSerializableExtra($($[5], $$ | 0xE0, $[5])));
      } 
    } 
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2) {
    return super.onStartCommand(paramIntent, paramInt1, paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\SmiIntentService.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */