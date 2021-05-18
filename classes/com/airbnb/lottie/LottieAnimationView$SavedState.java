package com.airbnb.lottie;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import awn;
import awq;

public class LottieAnimationView$SavedState extends View.BaseSavedState {
  public static final Parcelable.Creator<LottieAnimationView$SavedState> CREATOR = (Parcelable.Creator<LottieAnimationView$SavedState>)new awq();
  
  String a;
  
  float b;
  
  boolean c;
  
  boolean d;
  
  String e;
  
  private LottieAnimationView$SavedState(Parcel paramParcel) {
    super(paramParcel);
    boolean bool1;
    this.a = paramParcel.readString();
    this.b = paramParcel.readFloat();
    if (paramParcel.readInt() == 1) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    this.c = bool1;
    if (paramParcel.readInt() == 1) {
      bool1 = bool2;
    } else {
      bool1 = false;
    } 
    this.d = bool1;
    this.e = paramParcel.readString();
  }
  
  LottieAnimationView$SavedState(Parcelable paramParcelable) {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    boolean bool = true;
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.a);
    paramParcel.writeFloat(this.b);
    if (this.c) {
      paramInt = 1;
    } else {
      paramInt = 0;
    } 
    paramParcel.writeInt(paramInt);
    if (this.d) {
      paramInt = bool;
    } else {
      paramInt = 0;
    } 
    paramParcel.writeInt(paramInt);
    paramParcel.writeString(this.e);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\airbnb\lottie\LottieAnimationView$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */