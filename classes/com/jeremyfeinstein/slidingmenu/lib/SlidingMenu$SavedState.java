package com.jeremyfeinstein.slidingmenu.lib;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import fbz;
import fcg;

public class SlidingMenu$SavedState extends View.BaseSavedState {
  public static final Parcelable.Creator<SlidingMenu$SavedState> CREATOR = (Parcelable.Creator<SlidingMenu$SavedState>)new fcg();
  
  private final int a;
  
  private SlidingMenu$SavedState(Parcel paramParcel) {
    super(paramParcel);
    this.a = paramParcel.readInt();
  }
  
  public SlidingMenu$SavedState(Parcelable paramParcelable, int paramInt) {
    super(paramParcelable);
    this.a = paramInt;
  }
  
  public int a() {
    return this.a;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\jeremyfeinstein\slidingmenu\lib\SlidingMenu$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */