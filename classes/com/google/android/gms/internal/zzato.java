package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zza;
import dkk;
import dkl;
import java.util.Iterator;

public class zzato extends zza implements Iterable<String> {
  public static final Parcelable.Creator<zzato> CREATOR = (Parcelable.Creator<zzato>)new dkl();
  
  private final Bundle a;
  
  public zzato(Bundle paramBundle) {
    this.a = paramBundle;
  }
  
  public int a() {
    return this.a.size();
  }
  
  public Object a(String paramString) {
    return this.a.get(paramString);
  }
  
  public Bundle b() {
    return new Bundle(this.a);
  }
  
  public Iterator<String> iterator() {
    return (Iterator<String>)new dkk(this);
  }
  
  public String toString() {
    return this.a.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dkl.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzato.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */