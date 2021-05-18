package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

class StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem implements Parcelable {
  public static final Parcelable.Creator<StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> CREATOR = new StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem$1();
  
  int mGapDir;
  
  int[] mGapPerSpan;
  
  boolean mHasUnwantedGapAfter;
  
  int mPosition;
  
  public StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem() {}
  
  public StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem(Parcel paramParcel) {
    this.mPosition = paramParcel.readInt();
    this.mGapDir = paramParcel.readInt();
    if (paramParcel.readInt() != 1)
      bool = false; 
    this.mHasUnwantedGapAfter = bool;
    int i = paramParcel.readInt();
    if (i > 0) {
      this.mGapPerSpan = new int[i];
      paramParcel.readIntArray(this.mGapPerSpan);
    } 
  }
  
  public int describeContents() {
    return 0;
  }
  
  int getGapForSpan(int paramInt) {
    return (this.mGapPerSpan == null) ? 0 : this.mGapPerSpan[paramInt];
  }
  
  public String toString() {
    return "FullSpanItem{mPosition=" + this.mPosition + ", mGapDir=" + this.mGapDir + ", mHasUnwantedGapAfter=" + this.mHasUnwantedGapAfter + ", mGapPerSpan=" + Arrays.toString(this.mGapPerSpan) + '}';
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeInt(this.mPosition);
    paramParcel.writeInt(this.mGapDir);
    if (this.mHasUnwantedGapAfter) {
      paramInt = 1;
    } else {
      paramInt = 0;
    } 
    paramParcel.writeInt(paramInt);
    if (this.mGapPerSpan != null && this.mGapPerSpan.length > 0) {
      paramParcel.writeInt(this.mGapPerSpan.length);
      paramParcel.writeIntArray(this.mGapPerSpan);
      return;
    } 
    paramParcel.writeInt(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */