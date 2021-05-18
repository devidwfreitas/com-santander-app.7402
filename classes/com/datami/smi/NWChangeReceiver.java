package com.datami.smi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.datami.smi.a.a;
import com.datami.smi.b.f;
import com.datami.smi.b.m;

public class NWChangeReceiver extends BroadcastReceiver {
  private static final byte[] $ = new byte[] { 
      31, 47, 30, -112, -11, 2, 1, 10, 3, -16, 
      12, -12, 14, -10, -4, 9, -6, 2, 10, -14, 
      1, -14, 13, 16, -26, 31, -19, 2, 13, -4, 
      -2, 14, 2, -10, -18, 28, -4, -9, 17, -11, 
      -6, 18, -12, -6, -5, 16, 8, -4, 8, 10, 
      -14, 72, -70, -4, 10, 12, 70, -72, -4, 6, 
      -10, 12, 9, -10, 4, -16, 22, 2, 8, -4, 
      8, 9, -1, -1, -16, 12, -5, 2 };
  
  private static int $$ = 15;
  
  private static final String TAG = NWChangeReceiver.class.getSimpleName();
  
  private static int mConnectedToWifiMobile = -1;
  
  private static boolean mConnectionResetReceived = false;
  
  private static boolean mNwChangeOccuredInBg = false;
  
  private static String $(int paramInt1, int paramInt2, int paramInt3) {
    paramInt2 = 68 - paramInt2;
    int k = paramInt1 + 5;
    byte[] arrayOfByte2 = $;
    byte[] arrayOfByte1 = new byte[k];
    if (arrayOfByte2 == null) {
      paramInt1 = 0;
      i = paramInt2;
      paramInt3 = k;
      j = paramInt2;
    } else {
      i = 0;
      paramInt1 = paramInt3 + 65;
      paramInt3 = i;
      arrayOfByte1[paramInt3] = (byte)paramInt1;
      i = paramInt3 + 1;
    } 
    int j = -j;
    paramInt2 = i + 1;
    int i = j + paramInt3 + 1;
    paramInt3 = paramInt1;
    paramInt1 = i;
    arrayOfByte1[paramInt3] = (byte)paramInt1;
    i = paramInt3 + 1;
  }
  
  public static boolean handleNwChnageInBg() {
    return mNwChangeOccuredInBg;
  }
  
  private Intent makeIntent(Context paramContext, String paramString) {
    Intent intent = new Intent(paramContext, SmiIntentService.class);
    intent.setAction(paramString);
    return intent;
  }
  
  public static void setConnectionResetFlag() {
    mConnectionResetReceived = true;
  }
  
  public void init(Context paramContext) {
    NetworkInfo networkInfo = ((ConnectivityManager)paramContext.getSystemService($($$ >>> 1, 64, 34))).getActiveNetworkInfo();
    if (networkInfo != null && networkInfo.isConnected()) {
      mConnectedToWifiMobile = networkInfo.getType();
      $($$, -$[26], 45);
    } 
  }
  
  public void onReceive(Context paramContext, Intent paramIntent) {
    String str = paramIntent.getAction();
    if (str != null && str.equalsIgnoreCase($($[59], $[6] - 1, $[1]))) {
      paramContext.startService(makeIntent(paramContext, $($[23], 39, $[59])));
      return;
    } 
    NetworkInfo networkInfo = ((ConnectivityManager)paramContext.getSystemService($($$ >>> 1, 64, 34))).getActiveNetworkInfo();
    int i = $[6] - 1;
    m.d = m.b(((TelephonyManager)paramContext.getSystemService($(i, i | 0x35, $[1]))).getNetworkType());
    if (networkInfo != null && !networkInfo.isConnected() && 1 != networkInfo.getType() && !SmiSdk.isForeground()) {
      mNwChangeOccuredInBg = true;
    } else {
      mNwChangeOccuredInBg = false;
    } 
    if (!m.j && networkInfo != null && networkInfo.isConnected()) {
      if (networkInfo.getType() == 0 && (mConnectedToWifiMobile != 0 || mConnectionResetReceived)) {
        if (mConnectionResetReceived)
          mConnectionResetReceived = false; 
        m.l = f.d;
        mConnectedToWifiMobile = 0;
        paramContext.startService(makeIntent(paramContext, $($[59], 49, $[6] - 1)));
        a.a().a(false);
        return;
      } 
      if (1 == networkInfo.getType() && 1 != mConnectedToWifiMobile) {
        mConnectedToWifiMobile = 1;
        c.c(paramContext);
        paramContext.startService(makeIntent(paramContext, $($[59], 49, $[6] - 1)));
        a.a().a(true);
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\NWChangeReceiver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */