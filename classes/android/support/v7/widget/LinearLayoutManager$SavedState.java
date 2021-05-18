package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class LinearLayoutManager$SavedState implements Parcelable {
  public static final Parcelable.Creator<LinearLayoutManager$SavedState> CREATOR = new LinearLayoutManager$SavedState$1();
  
  boolean mAnchorLayoutFromEnd;
  
  int mAnchorOffset;
  
  int mAnchorPosition;
  
  public LinearLayoutManager$SavedState() {}
  
  LinearLayoutManager$SavedState(Parcel paramParcel) {
    this.mAnchorPosition = paramParcel.readInt();
    this.mAnchorOffset = paramParcel.readInt();
    if (paramParcel.readInt() != 1)
      bool = false; 
    this.mAnchorLayoutFromEnd = bool;
  }
  
  public LinearLayoutManager$SavedState(LinearLayoutManager$SavedState paramLinearLayoutManager$SavedState) {
    this.mAnchorPosition = paramLinearLayoutManager$SavedState.mAnchorPosition;
    this.mAnchorOffset = paramLinearLayoutManager$SavedState.mAnchorOffset;
    this.mAnchorLayoutFromEnd = paramLinearLayoutManager$SavedState.mAnchorLayoutFromEnd;
  }
  
  public int describeContents() {
    return 0;
  }
  
  boolean hasValidAnchor() {
    return (this.mAnchorPosition >= 0);
  }
  
  void invalidateAnchor() {
    this.mAnchorPosition = -1;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    paramParcel.writeInt(this.mAnchorPosition);
    paramParcel.writeInt(this.mAnchorOffset);
    if (this.mAnchorLayoutFromEnd) {
      paramInt = 1;
    } else {
      paramInt = 0;
    } 
    paramParcel.writeInt(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\LinearLayoutManager$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */