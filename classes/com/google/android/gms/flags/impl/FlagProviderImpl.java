package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import com.google.android.gms.common.util.DynamiteApi;
import cwx;
import cxo;
import cym;
import cyo;
import cyq;
import cys;
import cyu;
import dhm;

@DynamiteApi
public class FlagProviderImpl extends dhm {
  private boolean a = false;
  
  private SharedPreferences b;
  
  public boolean getBooleanFlagValue(String paramString, boolean paramBoolean, int paramInt) {
    return !this.a ? paramBoolean : cym.a(this.b, paramString, Boolean.valueOf(paramBoolean)).booleanValue();
  }
  
  public int getIntFlagValue(String paramString, int paramInt1, int paramInt2) {
    return !this.a ? paramInt1 : cyo.a(this.b, paramString, Integer.valueOf(paramInt1)).intValue();
  }
  
  public long getLongFlagValue(String paramString, long paramLong, int paramInt) {
    return !this.a ? paramLong : cyq.a(this.b, paramString, Long.valueOf(paramLong)).longValue();
  }
  
  public String getStringFlagValue(String paramString1, String paramString2, int paramInt) {
    return !this.a ? paramString2 : cys.a(this.b, paramString1, paramString2);
  }
  
  public void init(cwx paramcwx) {
    Context context = (Context)cxo.a(paramcwx);
    if (this.a)
      return; 
    try {
      this.b = cyu.a(context.createPackageContext("com.google.android.gms", 0));
      this.a = true;
      return;
    } catch (android.content.pm.PackageManager.NameNotFoundException nameNotFoundException) {
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\flags\impl\FlagProviderImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */