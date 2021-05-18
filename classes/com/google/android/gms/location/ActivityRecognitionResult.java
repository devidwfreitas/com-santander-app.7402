package com.google.android.gms.location;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import cse;
import csg;
import csp;
import duf;
import java.util.Collections;
import java.util.List;

public class ActivityRecognitionResult extends zza implements ReflectedParcelable {
  public static final Parcelable.Creator<ActivityRecognitionResult> CREATOR = (Parcelable.Creator<ActivityRecognitionResult>)new duf();
  
  public List<DetectedActivity> a;
  
  public long b;
  
  public long c;
  
  public int d;
  
  public Bundle e;
  
  public ActivityRecognitionResult(DetectedActivity paramDetectedActivity, long paramLong1, long paramLong2) {
    this(paramDetectedActivity, paramLong1, paramLong2, 0, (Bundle)null);
  }
  
  public ActivityRecognitionResult(DetectedActivity paramDetectedActivity, long paramLong1, long paramLong2, int paramInt, Bundle paramBundle) {
    this(Collections.singletonList(paramDetectedActivity), paramLong1, paramLong2, paramInt, paramBundle);
  }
  
  public ActivityRecognitionResult(List<DetectedActivity> paramList, long paramLong1, long paramLong2) {
    this(paramList, paramLong1, paramLong2, 0, (Bundle)null);
  }
  
  public ActivityRecognitionResult(List<DetectedActivity> paramList, long paramLong1, long paramLong2, int paramInt, Bundle paramBundle) {
    boolean bool1;
    if (paramList != null && paramList.size() > 0) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    csp.b(bool1, "Must have at least 1 detected activity");
    if (paramLong1 > 0L && paramLong2 > 0L) {
      bool1 = bool2;
    } else {
      bool1 = false;
    } 
    csp.b(bool1, "Must set times");
    this.a = paramList;
    this.b = paramLong1;
    this.c = paramLong2;
    this.d = paramInt;
    this.e = paramBundle;
  }
  
  public static boolean a(Intent paramIntent) {
    boolean bool2 = true;
    if (paramIntent == null)
      return false; 
    boolean bool1 = bool2;
    if (!e(paramIntent)) {
      List<ActivityRecognitionResult> list = d(paramIntent);
      if (list != null) {
        bool1 = bool2;
        return list.isEmpty() ? false : bool1;
      } 
      return false;
    } 
    return bool1;
  }
  
  private static boolean a(Bundle paramBundle1, Bundle paramBundle2) {
    if (paramBundle1 == null && paramBundle2 == null)
      return true; 
    if ((paramBundle1 == null && paramBundle2 != null) || (paramBundle1 != null && paramBundle2 == null))
      return false; 
    if (paramBundle1.size() != paramBundle2.size())
      return false; 
    for (String str : paramBundle1.keySet()) {
      if (!paramBundle2.containsKey(str))
        return false; 
      if (paramBundle1.get(str) == null) {
        if (paramBundle2.get(str) != null)
          return false; 
        continue;
      } 
      if (paramBundle1.get(str) instanceof Bundle) {
        if (!a(paramBundle1.getBundle(str), paramBundle2.getBundle(str)))
          return false; 
        continue;
      } 
      if (!paramBundle1.get(str).equals(paramBundle2.get(str)))
        return false; 
    } 
    return true;
  }
  
  public static ActivityRecognitionResult b(Intent paramIntent) {
    ActivityRecognitionResult activityRecognitionResult = f(paramIntent);
    if (activityRecognitionResult != null)
      return activityRecognitionResult; 
    List<ActivityRecognitionResult> list = d(paramIntent);
    return (list == null || list.isEmpty()) ? null : list.get(list.size() - 1);
  }
  
  public static boolean c(@Nullable Intent paramIntent) {
    return (paramIntent == null) ? false : paramIntent.hasExtra("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT_LIST");
  }
  
  @Nullable
  public static List<ActivityRecognitionResult> d(Intent paramIntent) {
    return !c(paramIntent) ? null : cse.b(paramIntent, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT_LIST", CREATOR);
  }
  
  private static boolean e(Intent paramIntent) {
    return (paramIntent == null) ? false : paramIntent.hasExtra("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT");
  }
  
  private static ActivityRecognitionResult f(Intent paramIntent) {
    if (!a(paramIntent))
      return null; 
    Object object = paramIntent.getExtras().get("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT");
    return (object instanceof byte[]) ? (ActivityRecognitionResult)cse.a((byte[])object, CREATOR) : ((object instanceof ActivityRecognitionResult) ? (ActivityRecognitionResult)object : null);
  }
  
  public int a(int paramInt) {
    for (DetectedActivity detectedActivity : this.a) {
      if (detectedActivity.a() == paramInt)
        return detectedActivity.b(); 
    } 
    return 0;
  }
  
  public DetectedActivity a() {
    return this.a.get(0);
  }
  
  public List<DetectedActivity> b() {
    return this.a;
  }
  
  public long c() {
    return this.b;
  }
  
  public long d() {
    return this.c;
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null || getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if (this.b != ((ActivityRecognitionResult)paramObject).b || this.c != ((ActivityRecognitionResult)paramObject).c || this.d != ((ActivityRecognitionResult)paramObject).d || !csg.a(this.a, ((ActivityRecognitionResult)paramObject).a) || !a(this.e, ((ActivityRecognitionResult)paramObject).e))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return csg.a(new Object[] { Long.valueOf(this.b), Long.valueOf(this.c), Integer.valueOf(this.d), this.a, this.e });
  }
  
  public String toString() {
    String str = String.valueOf(this.a);
    long l1 = this.b;
    long l2 = this.c;
    return (new StringBuilder(String.valueOf(str).length() + 124)).append("ActivityRecognitionResult [probableActivities=").append(str).append(", timeMillis=").append(l1).append(", elapsedRealtimeMillis=").append(l2).append("]").toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    duf.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\location\ActivityRecognitionResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */