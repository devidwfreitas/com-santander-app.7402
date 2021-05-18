package android.support.v7.widget;

import android.util.SparseArray;

public class RecyclerView$State {
  static final int STEP_ANIMATIONS = 4;
  
  static final int STEP_LAYOUT = 2;
  
  static final int STEP_START = 1;
  
  private SparseArray<Object> mData;
  
  int mDeletedInvisibleItemCountSincePreviousLayout = 0;
  
  long mFocusedItemId;
  
  int mFocusedItemPosition;
  
  int mFocusedSubChildId;
  
  boolean mInPreLayout = false;
  
  boolean mIsMeasuring = false;
  
  int mItemCount = 0;
  
  int mLayoutStep = 1;
  
  int mPreviousLayoutItemCount = 0;
  
  boolean mRunPredictiveAnimations = false;
  
  boolean mRunSimpleAnimations = false;
  
  boolean mStructureChanged = false;
  
  private int mTargetPosition = -1;
  
  boolean mTrackOldChangeHolders = false;
  
  void assertLayoutStep(int paramInt) {
    if ((this.mLayoutStep & paramInt) == 0)
      throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(paramInt) + " but it is " + Integer.toBinaryString(this.mLayoutStep)); 
  }
  
  public boolean didStructureChange() {
    return this.mStructureChanged;
  }
  
  public <T> T get(int paramInt) {
    return (T)((this.mData == null) ? null : this.mData.get(paramInt));
  }
  
  public int getItemCount() {
    return this.mInPreLayout ? (this.mPreviousLayoutItemCount - this.mDeletedInvisibleItemCountSincePreviousLayout) : this.mItemCount;
  }
  
  public int getTargetScrollPosition() {
    return this.mTargetPosition;
  }
  
  public boolean hasTargetScrollPosition() {
    return (this.mTargetPosition != -1);
  }
  
  public boolean isMeasuring() {
    return this.mIsMeasuring;
  }
  
  public boolean isPreLayout() {
    return this.mInPreLayout;
  }
  
  void prepareForNestedPrefetch(RecyclerView$Adapter paramRecyclerView$Adapter) {
    this.mLayoutStep = 1;
    this.mItemCount = paramRecyclerView$Adapter.getItemCount();
    this.mStructureChanged = false;
    this.mInPreLayout = false;
    this.mTrackOldChangeHolders = false;
    this.mIsMeasuring = false;
  }
  
  public void put(int paramInt, Object paramObject) {
    if (this.mData == null)
      this.mData = new SparseArray(); 
    this.mData.put(paramInt, paramObject);
  }
  
  public void remove(int paramInt) {
    if (this.mData == null)
      return; 
    this.mData.remove(paramInt);
  }
  
  RecyclerView$State reset() {
    this.mTargetPosition = -1;
    if (this.mData != null)
      this.mData.clear(); 
    this.mItemCount = 0;
    this.mStructureChanged = false;
    this.mIsMeasuring = false;
    return this;
  }
  
  public String toString() {
    return "State{mTargetPosition=" + this.mTargetPosition + ", mData=" + this.mData + ", mItemCount=" + this.mItemCount + ", mPreviousLayoutItemCount=" + this.mPreviousLayoutItemCount + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.mDeletedInvisibleItemCountSincePreviousLayout + ", mStructureChanged=" + this.mStructureChanged + ", mInPreLayout=" + this.mInPreLayout + ", mRunSimpleAnimations=" + this.mRunSimpleAnimations + ", mRunPredictiveAnimations=" + this.mRunPredictiveAnimations + '}';
  }
  
  public boolean willRunPredictiveAnimations() {
    return this.mRunPredictiveAnimations;
  }
  
  public boolean willRunSimpleAnimations() {
    return this.mRunSimpleAnimations;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$State.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */