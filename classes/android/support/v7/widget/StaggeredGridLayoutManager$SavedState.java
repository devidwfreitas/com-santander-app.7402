package android.support.v7.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RestrictTo;
import java.util.List;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class StaggeredGridLayoutManager$SavedState implements Parcelable {
  public static final Parcelable.Creator<StaggeredGridLayoutManager$SavedState> CREATOR = new StaggeredGridLayoutManager$SavedState$1();
  
  boolean mAnchorLayoutFromEnd;
  
  int mAnchorPosition;
  
  List<StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> mFullSpanItems;
  
  boolean mLastLayoutRTL;
  
  boolean mReverseLayout;
  
  int[] mSpanLookup;
  
  int mSpanLookupSize;
  
  int[] mSpanOffsets;
  
  int mSpanOffsetsSize;
  
  int mVisibleAnchorPosition;
  
  public StaggeredGridLayoutManager$SavedState() {}
  
  StaggeredGridLayoutManager$SavedState(Parcel paramParcel) {
    boolean bool1;
    this.mAnchorPosition = paramParcel.readInt();
    this.mVisibleAnchorPosition = paramParcel.readInt();
    this.mSpanOffsetsSize = paramParcel.readInt();
    if (this.mSpanOffsetsSize > 0) {
      this.mSpanOffsets = new int[this.mSpanOffsetsSize];
      paramParcel.readIntArray(this.mSpanOffsets);
    } 
    this.mSpanLookupSize = paramParcel.readInt();
    if (this.mSpanLookupSize > 0) {
      this.mSpanLookup = new int[this.mSpanLookupSize];
      paramParcel.readIntArray(this.mSpanLookup);
    } 
    if (paramParcel.readInt() == 1) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    this.mReverseLayout = bool1;
    if (paramParcel.readInt() == 1) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    this.mAnchorLayoutFromEnd = bool1;
    if (paramParcel.readInt() == 1) {
      bool1 = bool2;
    } else {
      bool1 = false;
    } 
    this.mLastLayoutRTL = bool1;
    this.mFullSpanItems = paramParcel.readArrayList(StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.class.getClassLoader());
  }
  
  public StaggeredGridLayoutManager$SavedState(StaggeredGridLayoutManager$SavedState paramStaggeredGridLayoutManager$SavedState) {
    this.mSpanOffsetsSize = paramStaggeredGridLayoutManager$SavedState.mSpanOffsetsSize;
    this.mAnchorPosition = paramStaggeredGridLayoutManager$SavedState.mAnchorPosition;
    this.mVisibleAnchorPosition = paramStaggeredGridLayoutManager$SavedState.mVisibleAnchorPosition;
    this.mSpanOffsets = paramStaggeredGridLayoutManager$SavedState.mSpanOffsets;
    this.mSpanLookupSize = paramStaggeredGridLayoutManager$SavedState.mSpanLookupSize;
    this.mSpanLookup = paramStaggeredGridLayoutManager$SavedState.mSpanLookup;
    this.mReverseLayout = paramStaggeredGridLayoutManager$SavedState.mReverseLayout;
    this.mAnchorLayoutFromEnd = paramStaggeredGridLayoutManager$SavedState.mAnchorLayoutFromEnd;
    this.mLastLayoutRTL = paramStaggeredGridLayoutManager$SavedState.mLastLayoutRTL;
    this.mFullSpanItems = paramStaggeredGridLayoutManager$SavedState.mFullSpanItems;
  }
  
  public int describeContents() {
    return 0;
  }
  
  void invalidateAnchorPositionInfo() {
    this.mSpanOffsets = null;
    this.mSpanOffsetsSize = 0;
    this.mAnchorPosition = -1;
    this.mVisibleAnchorPosition = -1;
  }
  
  void invalidateSpanInfo() {
    this.mSpanOffsets = null;
    this.mSpanOffsetsSize = 0;
    this.mSpanLookupSize = 0;
    this.mSpanLookup = null;
    this.mFullSpanItems = null;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    boolean bool = true;
    paramParcel.writeInt(this.mAnchorPosition);
    paramParcel.writeInt(this.mVisibleAnchorPosition);
    paramParcel.writeInt(this.mSpanOffsetsSize);
    if (this.mSpanOffsetsSize > 0)
      paramParcel.writeIntArray(this.mSpanOffsets); 
    paramParcel.writeInt(this.mSpanLookupSize);
    if (this.mSpanLookupSize > 0)
      paramParcel.writeIntArray(this.mSpanLookup); 
    if (this.mReverseLayout) {
      paramInt = 1;
    } else {
      paramInt = 0;
    } 
    paramParcel.writeInt(paramInt);
    if (this.mAnchorLayoutFromEnd) {
      paramInt = 1;
    } else {
      paramInt = 0;
    } 
    paramParcel.writeInt(paramInt);
    if (this.mLastLayoutRTL) {
      paramInt = bool;
    } else {
      paramInt = 0;
    } 
    paramParcel.writeInt(paramInt);
    paramParcel.writeList(this.mFullSpanItems);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\StaggeredGridLayoutManager$SavedState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */