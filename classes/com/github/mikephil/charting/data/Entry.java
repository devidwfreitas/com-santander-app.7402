package com.github.mikephil.charting.data;

import android.os.Parcel;
import android.os.ParcelFormatException;
import android.os.Parcelable;
import cgj;
import cgs;
import clg;

public class Entry extends cgj implements Parcelable {
  public static final Parcelable.Creator<Entry> CREATOR = (Parcelable.Creator<Entry>)new cgs();
  
  private float a = 0.0F;
  
  public Entry() {}
  
  public Entry(float paramFloat1, float paramFloat2) {
    super(paramFloat2);
    this.a = paramFloat1;
  }
  
  public Entry(float paramFloat1, float paramFloat2, Object paramObject) {
    super(paramFloat2, paramObject);
    this.a = paramFloat1;
  }
  
  public Entry(Parcel paramParcel) {
    this.a = paramParcel.readFloat();
    a(paramParcel.readFloat());
    if (paramParcel.readInt() == 1)
      a(paramParcel.readParcelable(Object.class.getClassLoader())); 
  }
  
  public boolean a(Entry paramEntry) {
    return (paramEntry != null && paramEntry.j() == j() && Math.abs(paramEntry.a - this.a) <= clg.d && Math.abs(paramEntry.c() - c()) <= clg.d);
  }
  
  public int describeContents() {
    return 0;
  }
  
  public void f(float paramFloat) {
    this.a = paramFloat;
  }
  
  public Entry i() {
    return new Entry(this.a, c(), j());
  }
  
  public float k() {
    return this.a;
  }
  
  public String toString() {
    return "Entry, x: " + this.a + " y: " + c();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeFloat(this.a);
    paramParcel.writeFloat(c());
    if (j() != null) {
      if (j() instanceof Parcelable) {
        paramParcel.writeInt(1);
        paramParcel.writeParcelable((Parcelable)j(), paramInt);
        return;
      } 
      throw new ParcelFormatException("Cannot parcel an Entry with non-parcelable data");
    } 
    paramParcel.writeInt(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\github\mikephil\charting\data\Entry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */