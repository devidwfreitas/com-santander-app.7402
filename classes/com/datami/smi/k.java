package com.datami.smi;

import android.content.Context;
import android.util.Log;
import com.datami.smi.b.m;
import com.datami.smi.b.t;
import com.datami.smi.c.c;

final class k extends Thread {
  private static final byte[] g = new byte[] { 
      33, 109, -15, -28, 47, -25, -2, 7, 0, -15, 
      2, -5, -82, 83, -19, -3, -1, -11, -73, 63, 
      5, -11, -8, 13, -19, -6, -2, 1, -7, -73, 
      22, -30 };
  
  private static int h = 167;
  
  k(m paramm, Context paramContext, String paramString1, String paramString2, String paramString3, SmiResult paramSmiResult) {}
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int j = paramInt3 * 4 + 29;
    paramInt1 = paramInt1 * 3 + 69;
    paramInt2 = 4 - paramInt2 * 2;
    byte[] arrayOfByte2 = g;
    byte[] arrayOfByte1 = new byte[j];
    if (arrayOfByte2 == null) {
      boolean bool = false;
      i = paramInt1;
      paramInt3 = j;
      paramInt1 = paramInt2;
      paramInt2 = bool;
    } else {
      i = paramInt2;
      paramInt3 = 0;
      paramInt2 = paramInt1;
      paramInt1 = i;
      int i1 = paramInt3 + 1;
      arrayOfByte1[paramInt3] = (byte)paramInt2;
    } 
    int i = paramInt3 + i + 4;
    paramInt1++;
    paramInt3 = paramInt2;
    paramInt2 = i;
    int n = paramInt3 + 1;
    arrayOfByte1[paramInt3] = (byte)paramInt2;
  }
  
  public final void run() {
    t t = m.a(this.a);
    if (t.d == t) {
      try {
        c.a(SmiSdk.mContext);
        m.a(this.b, true);
        m m1 = m.a(this.b, this.c, this.d, this.e, false);
        if (m1.e() == 2 || m1.e() == 6) {
          t t1 = m.a(m1);
          if (t.a != t1) {
            this.f.setSdState(SdState.SD_NOT_AVAILABLE);
            this.f.setSdReason(SdReason.SD_NOT_AVAILABLE_REASON_UNKNOWN);
            return;
          } 
          this.f.setZmi(m1);
          return;
        } 
      } catch (Exception exception) {
        String str = SmiSdk.TAG;
        StringBuilder stringBuilder = new StringBuilder();
        byte b = g[8];
        Log.i(str, stringBuilder.append(a(b, b, b)).append(exception).toString());
        return;
      } 
      if (exception.e() == SdState.SD_NOT_AVAILABLE.getStatusCode()) {
        this.f.setSdState(SdState.SD_NOT_AVAILABLE);
        this.f.setSdReason(SdReason.SD_NOT_AVAILABLE_REASON_UNKNOWN);
        return;
      } 
      if (exception.e() == SdState.WIFI.getStatusCode()) {
        this.f.setSdState(SdState.WIFI);
        this.f.setSdReason(SdReason.SD_NOT_AVAILABLE_REASON_UNKNOWN);
        return;
      } 
    } else {
      if (t.a != exception) {
        this.f.setSdState(SdState.SD_NOT_AVAILABLE);
        this.f.setSdReason(SdReason.SD_NOT_AVAILABLE_REASON_UNKNOWN);
        return;
      } 
      this.f.setSdState(SdState.valueOf(this.a.e()));
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */