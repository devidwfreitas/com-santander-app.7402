package com.facebook.share.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.Nullable;
import cbb;
import java.util.ArrayList;
import java.util.Set;

public abstract class ShareOpenGraphValueContainer<P extends ShareOpenGraphValueContainer, E extends cbb> implements ShareModel {
  private final Bundle a;
  
  ShareOpenGraphValueContainer(Parcel paramParcel) {
    this.a = paramParcel.readBundle(cbb.class.getClassLoader());
  }
  
  protected ShareOpenGraphValueContainer(cbb<P, E> paramcbb) {
    this.a = (Bundle)cbb.a(paramcbb).clone();
  }
  
  public double a(String paramString, double paramDouble) {
    return this.a.getDouble(paramString, paramDouble);
  }
  
  public int a(String paramString, int paramInt) {
    return this.a.getInt(paramString, paramInt);
  }
  
  public long a(String paramString, long paramLong) {
    return this.a.getLong(paramString, paramLong);
  }
  
  @Nullable
  public Object a(String paramString) {
    return this.a.get(paramString);
  }
  
  public boolean a(String paramString, boolean paramBoolean) {
    return this.a.getBoolean(paramString, paramBoolean);
  }
  
  public Bundle b() {
    return (Bundle)this.a.clone();
  }
  
  @Nullable
  public boolean[] b(String paramString) {
    return this.a.getBooleanArray(paramString);
  }
  
  public Set<String> c() {
    return this.a.keySet();
  }
  
  @Nullable
  public double[] c(String paramString) {
    return this.a.getDoubleArray(paramString);
  }
  
  @Nullable
  public int[] d(String paramString) {
    return this.a.getIntArray(paramString);
  }
  
  public int describeContents() {
    return 0;
  }
  
  @Nullable
  public long[] e(String paramString) {
    return this.a.getLongArray(paramString);
  }
  
  public ShareOpenGraphObject f(String paramString) {
    Object object = this.a.get(paramString);
    return (object instanceof ShareOpenGraphObject) ? (ShareOpenGraphObject)object : null;
  }
  
  @Nullable
  public ArrayList<ShareOpenGraphObject> g(String paramString) {
    ArrayList arrayList1 = this.a.getParcelableArrayList(paramString);
    if (arrayList1 == null)
      return null; 
    ArrayList<ShareOpenGraphObject> arrayList = new ArrayList();
    for (Parcelable parcelable : arrayList1) {
      if (parcelable instanceof ShareOpenGraphObject)
        arrayList.add((ShareOpenGraphObject)parcelable); 
    } 
    return arrayList;
  }
  
  @Nullable
  public SharePhoto h(String paramString) {
    Parcelable parcelable = this.a.getParcelable(paramString);
    return (parcelable instanceof SharePhoto) ? (SharePhoto)parcelable : null;
  }
  
  @Nullable
  public ArrayList<SharePhoto> i(String paramString) {
    ArrayList arrayList1 = this.a.getParcelableArrayList(paramString);
    if (arrayList1 == null)
      return null; 
    ArrayList<SharePhoto> arrayList = new ArrayList();
    for (Parcelable parcelable : arrayList1) {
      if (parcelable instanceof SharePhoto)
        arrayList.add((SharePhoto)parcelable); 
    } 
    return arrayList;
  }
  
  @Nullable
  public String j(String paramString) {
    return this.a.getString(paramString);
  }
  
  @Nullable
  public ArrayList<String> k(String paramString) {
    return this.a.getStringArrayList(paramString);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeBundle(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\facebook\share\model\ShareOpenGraphValueContainer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */