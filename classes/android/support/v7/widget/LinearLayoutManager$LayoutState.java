package android.support.v7.widget;

import android.util.Log;
import android.view.View;
import java.util.List;

class LinearLayoutManager$LayoutState {
  static final int INVALID_LAYOUT = -2147483648;
  
  static final int ITEM_DIRECTION_HEAD = -1;
  
  static final int ITEM_DIRECTION_TAIL = 1;
  
  static final int LAYOUT_END = 1;
  
  static final int LAYOUT_START = -1;
  
  static final int SCROLLING_OFFSET_NaN = -2147483648;
  
  static final String TAG = "LLM#LayoutState";
  
  int mAvailable;
  
  int mCurrentPosition;
  
  int mExtra = 0;
  
  boolean mInfinite;
  
  boolean mIsPreLayout = false;
  
  int mItemDirection;
  
  int mLastScrollDelta;
  
  int mLayoutDirection;
  
  int mOffset;
  
  boolean mRecycle = true;
  
  List<RecyclerView$ViewHolder> mScrapList = null;
  
  int mScrollingOffset;
  
  private View nextViewFromScrapList() {
    int j = this.mScrapList.size();
    for (int i = 0; i < j; i++) {
      View view = ((RecyclerView$ViewHolder)this.mScrapList.get(i)).itemView;
      RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)view.getLayoutParams();
      if (!recyclerView$LayoutParams.isItemRemoved() && this.mCurrentPosition == recyclerView$LayoutParams.getViewLayoutPosition()) {
        assignPositionFromScrapList(view);
        return view;
      } 
    } 
    return null;
  }
  
  public void assignPositionFromScrapList() {
    assignPositionFromScrapList(null);
  }
  
  public void assignPositionFromScrapList(View paramView) {
    paramView = nextViewInLimitedList(paramView);
    if (paramView == null) {
      this.mCurrentPosition = -1;
      return;
    } 
    this.mCurrentPosition = ((RecyclerView$LayoutParams)paramView.getLayoutParams()).getViewLayoutPosition();
  }
  
  boolean hasMore(RecyclerView$State paramRecyclerView$State) {
    return (this.mCurrentPosition >= 0 && this.mCurrentPosition < paramRecyclerView$State.getItemCount());
  }
  
  void log() {
    Log.d("LLM#LayoutState", "avail:" + this.mAvailable + ", ind:" + this.mCurrentPosition + ", dir:" + this.mItemDirection + ", offset:" + this.mOffset + ", layoutDir:" + this.mLayoutDirection);
  }
  
  View next(RecyclerView$Recycler paramRecyclerView$Recycler) {
    if (this.mScrapList != null)
      return nextViewFromScrapList(); 
    View view = paramRecyclerView$Recycler.getViewForPosition(this.mCurrentPosition);
    this.mCurrentPosition += this.mItemDirection;
    return view;
  }
  
  public View nextViewInLimitedList(View paramView) {
    int k = this.mScrapList.size();
    View view = null;
    int i = Integer.MAX_VALUE;
    for (int j = 0; j < k; j++) {
      View view1 = ((RecyclerView$ViewHolder)this.mScrapList.get(j)).itemView;
      RecyclerView$LayoutParams recyclerView$LayoutParams = (RecyclerView$LayoutParams)view1.getLayoutParams();
      if (view1 != paramView && !recyclerView$LayoutParams.isItemRemoved()) {
        int m = (recyclerView$LayoutParams.getViewLayoutPosition() - this.mCurrentPosition) * this.mItemDirection;
        if (m >= 0 && m < i) {
          if (m == 0)
            return view1; 
          view = view1;
          i = m;
        } 
      } 
    } 
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\LinearLayoutManager$LayoutState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */