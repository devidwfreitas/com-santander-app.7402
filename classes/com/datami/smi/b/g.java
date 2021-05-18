package com.datami.smi.b;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import com.datami.smi.SdReason;
import com.datami.smi.SdState;
import com.datami.smi.SdStateChangeListener;
import com.datami.smi.SmiIntentService;
import com.datami.smi.SmiResult;
import java.util.List;

public final class g extends Thread {
  private static final String g = "[dmi]AuthThread";
  
  private static final byte[] h = new byte[] { 
      16, -122, 111, -110, 9, -4, 7, 10, 2, 14, 
      78, -64, 9, -8, 58, -40, 7, 36, 22, 10, 
      -45, 8, 19, 71, 6, 16, -63, 12, -1, 4, 
      14, 8, 49, 33, 14, 2, 5, 12, 7, 8, 
      4, 5, 22, 8, 75, -58, -6, 17, -7, 10, 
      13, 12, 75, -79, 24, -6, 6, 17, 1, 8, 
      -2, -2, 11, 19, 35, -45, 8, 19, 27, -13, 
      -3, 20, 11, 4 };
  
  private static int i = 43;
  
  Context a;
  
  String b;
  
  String c;
  
  int d = -1;
  
  boolean e;
  
  List f;
  
  public g(String paramString1, Context paramContext, String paramString2, int paramInt, boolean paramBoolean, List paramList) {
    this.b = paramString1;
    this.a = paramContext;
    this.c = paramString2;
    this.d = paramInt;
    this.e = paramBoolean;
    this.f = paramList;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    byte b;
    paramInt1 = 60 - paramInt1 * 2;
    int j = 31 - paramInt3 * 4;
    paramInt3 = paramInt2 * 2 + 91;
    byte[] arrayOfByte1 = h;
    byte[] arrayOfByte2 = new byte[j];
    if (arrayOfByte1 == null) {
      paramInt2 = 0;
      b = paramInt1;
      i = paramInt1;
    } else {
      b = 0;
      paramInt2 = paramInt3;
      paramInt3 = b;
      arrayOfByte2[paramInt3] = (byte)paramInt2;
    } 
    int i = -paramInt3 + i + 7;
    paramInt1 = b + 1;
    paramInt3 = paramInt2;
    paramInt2 = i;
    arrayOfByte2[paramInt3] = (byte)paramInt2;
  }
  
  public final void run() {
    if (Build.VERSION.SDK_INT < 14) {
      if (this.a instanceof SdStateChangeListener) {
        SmiResult smiResult = new SmiResult();
        smiResult.setSdState(SdState.SD_NOT_AVAILABLE);
        smiResult.setSdReason(SdReason.SD_NOT_AVAILABLE_ANDROID_VERSION_NOT_SUPPORTED);
        ((SdStateChangeListener)this.a).onChange(smiResult);
      } 
      int i = h[58] - 1;
      String str = a(i, i, h[29]);
      i = h[50];
      Log.i(str, a(i, i, h[58]));
      return;
    } 
    try {
      SmiIntentService.init(this.b, this.c, this.a, this.d, this.e, this.f);
      m.b(this.a, this.c);
      return;
    } catch (Exception exception) {
      m.v();
      int i = h[58] - 1;
      a(i, i, h[29]);
      i = h[68];
      byte b = h[29];
      a(i + 1, b, b - 4);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\b\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */