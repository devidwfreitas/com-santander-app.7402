package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Keep;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresPermission;
import android.support.annotation.Size;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import com.google.android.gms.internal.zzauq;
import csp;
import ddc;
import dlv;
import egg;
import egh;
import egi;
import egk;
import java.util.List;
import java.util.Map;

@Deprecated
public class AppMeasurement {
  private final dlv a;
  
  public AppMeasurement(dlv paramdlv) {
    csp.a(paramdlv);
    this.a = paramdlv;
  }
  
  private void b(String paramString1, String paramString2, Object paramObject) {
    this.a.l().a(paramString1, paramString2, paramObject);
  }
  
  @Deprecated
  @Keep
  @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE", "android.permission.WAKE_LOCK"})
  public static AppMeasurement getInstance(Context paramContext) {
    return dlv.a(paramContext).m();
  }
  
  public void a(long paramLong) {
    this.a.l().a(paramLong);
  }
  
  @WorkerThread
  public void a(egg paramegg) {
    this.a.l().a(paramegg);
  }
  
  public void a(egh paramegh) {
    this.a.l().a(paramegh);
  }
  
  public void a(String paramString) {
    a("app", "_id", paramString);
  }
  
  public void a(@NonNull @Size(max = 40L, min = 1L) String paramString, Bundle paramBundle) {
    Bundle bundle = paramBundle;
    if (paramBundle == null)
      bundle = new Bundle(); 
    this.a.d().V();
    if (!"_iap".equals(paramString)) {
      int i = this.a.o().b(paramString);
      if (i != 0) {
        boolean bool;
        String str = this.a.o().a(paramString, this.a.d().y(), true);
        if (paramString != null) {
          bool = paramString.length();
        } else {
          bool = false;
        } 
        this.a.o().a(i, "_ev", str, bool);
        return;
      } 
    } 
    this.a.l().a("app", paramString, bundle, true);
  }
  
  public void a(@NonNull @Size(max = 24L, min = 1L) String paramString1, @Nullable @Size(max = 36L) String paramString2) {
    int i = this.a.o().d(paramString1);
    if (i != 0) {
      boolean bool;
      paramString2 = this.a.o().a(paramString1, this.a.d().z(), true);
      if (paramString1 != null) {
        bool = paramString1.length();
      } else {
        bool = false;
      } 
      this.a.o().a(i, "_ev", paramString2, bool);
      return;
    } 
    a("app", paramString1, paramString2);
  }
  
  public void a(String paramString1, String paramString2, Bundle paramBundle, long paramLong) {
    if (paramBundle == null)
      paramBundle = new Bundle(); 
    this.a.l().a(paramString1, paramString2, paramBundle, paramLong);
  }
  
  public void a(String paramString1, String paramString2, Object paramObject) {
    b(paramString1, paramString2, paramObject);
  }
  
  @Deprecated
  public void a(boolean paramBoolean) {
    this.a.l().a(paramBoolean);
  }
  
  @WorkerThread
  public Map<String, Object> b(boolean paramBoolean) {
    List list = this.a.l().b(paramBoolean);
    ArrayMap<String, Object> arrayMap = new ArrayMap(list.size());
    for (zzauq zzauq : list)
      arrayMap.put(zzauq.b, zzauq.a()); 
    return (Map<String, Object>)arrayMap;
  }
  
  public void b(long paramLong) {
    this.a.l().b(paramLong);
  }
  
  @Keep
  public void beginAdUnitExposure(@NonNull @Size(min = 1L) String paramString) {
    this.a.B().a(paramString);
  }
  
  @Keep
  protected void clearConditionalUserProperty(@NonNull @Size(max = 24L, min = 1L) String paramString1, @Nullable String paramString2, @Nullable Bundle paramBundle) {
    this.a.l().b(paramString1, paramString2, paramBundle);
  }
  
  @Keep
  protected void clearConditionalUserPropertyAs(@NonNull @Size(min = 1L) String paramString1, @NonNull @Size(max = 24L, min = 1L) String paramString2, @Nullable String paramString3, @Nullable Bundle paramBundle) {
    this.a.l().a(paramString1, paramString2, paramString3, paramBundle);
  }
  
  @Keep
  public void endAdUnitExposure(@NonNull @Size(min = 1L) String paramString) {
    this.a.B().b(paramString);
  }
  
  @Keep
  public long generateEventId() {
    return this.a.o().x();
  }
  
  @Keep
  @Nullable
  @WorkerThread
  public String getAppInstanceId() {
    return this.a.l().a(null);
  }
  
  @Keep
  @WorkerThread
  protected List<AppMeasurement$ConditionalUserProperty> getConditionalUserProperties(@Nullable String paramString1, @Nullable @Size(max = 23L, min = 1L) String paramString2) {
    return this.a.l().a(paramString1, paramString2);
  }
  
  @Keep
  @WorkerThread
  protected List<AppMeasurement$ConditionalUserProperty> getConditionalUserPropertiesAs(@NonNull @Size(min = 1L) String paramString1, @Nullable String paramString2, @Nullable @Size(max = 23L, min = 1L) String paramString3) {
    return this.a.l().a(paramString1, paramString2, paramString3);
  }
  
  @Keep
  @Nullable
  public String getCurrentScreenName() {
    egk egk = this.a.u().y();
    return (egk != null) ? egk.b : null;
  }
  
  @Keep
  @Nullable
  public String getGmpAppId() {
    try {
      return ddc.a();
    } catch (IllegalStateException illegalStateException) {
      this.a.f().x().a("getGoogleAppId failed with exception", illegalStateException);
      return null;
    } 
  }
  
  @Keep
  @WorkerThread
  protected int getMaxUserProperties(@NonNull @Size(min = 1L) String paramString) {
    return this.a.l().b(paramString);
  }
  
  @Keep
  @WorkerThread
  protected Map<String, Object> getUserProperties(@Nullable String paramString1, @Nullable @Size(max = 24L, min = 1L) String paramString2, boolean paramBoolean) {
    return this.a.l().a(paramString1, paramString2, paramBoolean);
  }
  
  @Keep
  @WorkerThread
  protected Map<String, Object> getUserPropertiesAs(@NonNull @Size(min = 1L) String paramString1, @Nullable String paramString2, @Nullable @Size(max = 23L, min = 1L) String paramString3, boolean paramBoolean) {
    return this.a.l().a(paramString1, paramString2, paramString3, paramBoolean);
  }
  
  @Keep
  public void logEventInternal(String paramString1, String paramString2, Bundle paramBundle) {
    Bundle bundle = paramBundle;
    if (paramBundle == null)
      bundle = new Bundle(); 
    this.a.l().a(paramString1, paramString2, bundle);
  }
  
  @Keep
  public void registerOnScreenChangeCallback(@NonNull egi paramegi) {
    this.a.u().a(paramegi);
  }
  
  @Keep
  protected void setConditionalUserProperty(@NonNull AppMeasurement$ConditionalUserProperty paramAppMeasurement$ConditionalUserProperty) {
    this.a.l().a(paramAppMeasurement$ConditionalUserProperty);
  }
  
  @Keep
  protected void setConditionalUserPropertyAs(@NonNull AppMeasurement$ConditionalUserProperty paramAppMeasurement$ConditionalUserProperty) {
    this.a.l().b(paramAppMeasurement$ConditionalUserProperty);
  }
  
  @Keep
  public void unregisterOnScreenChangeCallback(@NonNull egi paramegi) {
    this.a.u().b(paramegi);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\measurement\AppMeasurement.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */