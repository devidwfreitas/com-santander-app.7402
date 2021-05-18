package android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

class ChildHelper {
  private static final boolean DEBUG = false;
  
  private static final String TAG = "ChildrenHelper";
  
  final ChildHelper$Bucket mBucket;
  
  final ChildHelper$Callback mCallback;
  
  final List<View> mHiddenViews;
  
  ChildHelper(ChildHelper$Callback paramChildHelper$Callback) {
    this.mCallback = paramChildHelper$Callback;
    this.mBucket = new ChildHelper$Bucket();
    this.mHiddenViews = new ArrayList<View>();
  }
  
  private int getOffset(int paramInt) {
    if (paramInt < 0)
      return -1; 
    int j = this.mCallback.getChildCount();
    for (int i = paramInt; i < j; i += k) {
      int k = paramInt - i - this.mBucket.countOnesBefore(i);
      if (k == 0)
        while (true) {
          paramInt = i;
          if (this.mBucket.get(i)) {
            i++;
            continue;
          } 
          return paramInt;
        }  
    } 
    return -1;
  }
  
  private void hideViewInternal(View paramView) {
    this.mHiddenViews.add(paramView);
    this.mCallback.onEnteredHiddenState(paramView);
  }
  
  private boolean unhideViewInternal(View paramView) {
    if (this.mHiddenViews.remove(paramView)) {
      this.mCallback.onLeftHiddenState(paramView);
      return true;
    } 
    return false;
  }
  
  void addView(View paramView, int paramInt, boolean paramBoolean) {
    if (paramInt < 0) {
      paramInt = this.mCallback.getChildCount();
    } else {
      paramInt = getOffset(paramInt);
    } 
    this.mBucket.insert(paramInt, paramBoolean);
    if (paramBoolean)
      hideViewInternal(paramView); 
    this.mCallback.addView(paramView, paramInt);
  }
  
  void addView(View paramView, boolean paramBoolean) {
    addView(paramView, -1, paramBoolean);
  }
  
  void attachViewToParent(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams, boolean paramBoolean) {
    if (paramInt < 0) {
      paramInt = this.mCallback.getChildCount();
    } else {
      paramInt = getOffset(paramInt);
    } 
    this.mBucket.insert(paramInt, paramBoolean);
    if (paramBoolean)
      hideViewInternal(paramView); 
    this.mCallback.attachViewToParent(paramView, paramInt, paramLayoutParams);
  }
  
  void detachViewFromParent(int paramInt) {
    paramInt = getOffset(paramInt);
    this.mBucket.remove(paramInt);
    this.mCallback.detachViewFromParent(paramInt);
  }
  
  View findHiddenNonRemovedView(int paramInt) {
    int j = this.mHiddenViews.size();
    for (int i = 0; i < j; i++) {
      View view = this.mHiddenViews.get(i);
      RecyclerView$ViewHolder recyclerView$ViewHolder = this.mCallback.getChildViewHolder(view);
      if (recyclerView$ViewHolder.getLayoutPosition() == paramInt && !recyclerView$ViewHolder.isInvalid() && !recyclerView$ViewHolder.isRemoved())
        return view; 
    } 
    return null;
  }
  
  View getChildAt(int paramInt) {
    paramInt = getOffset(paramInt);
    return this.mCallback.getChildAt(paramInt);
  }
  
  int getChildCount() {
    return this.mCallback.getChildCount() - this.mHiddenViews.size();
  }
  
  View getUnfilteredChildAt(int paramInt) {
    return this.mCallback.getChildAt(paramInt);
  }
  
  int getUnfilteredChildCount() {
    return this.mCallback.getChildCount();
  }
  
  void hide(View paramView) {
    int i = this.mCallback.indexOfChild(paramView);
    if (i < 0)
      throw new IllegalArgumentException("view is not a child, cannot hide " + paramView); 
    this.mBucket.set(i);
    hideViewInternal(paramView);
  }
  
  int indexOfChild(View paramView) {
    int i = this.mCallback.indexOfChild(paramView);
    return (i != -1 && !this.mBucket.get(i)) ? (i - this.mBucket.countOnesBefore(i)) : -1;
  }
  
  boolean isHidden(View paramView) {
    return this.mHiddenViews.contains(paramView);
  }
  
  void removeAllViewsUnfiltered() {
    this.mBucket.reset();
    for (int i = this.mHiddenViews.size() - 1; i >= 0; i--) {
      this.mCallback.onLeftHiddenState(this.mHiddenViews.get(i));
      this.mHiddenViews.remove(i);
    } 
    this.mCallback.removeAllViews();
  }
  
  void removeView(View paramView) {
    int i = this.mCallback.indexOfChild(paramView);
    if (i < 0)
      return; 
    if (this.mBucket.remove(i))
      unhideViewInternal(paramView); 
    this.mCallback.removeViewAt(i);
  }
  
  void removeViewAt(int paramInt) {
    paramInt = getOffset(paramInt);
    View view = this.mCallback.getChildAt(paramInt);
    if (view == null)
      return; 
    if (this.mBucket.remove(paramInt))
      unhideViewInternal(view); 
    this.mCallback.removeViewAt(paramInt);
  }
  
  boolean removeViewIfHidden(View paramView) {
    int i = this.mCallback.indexOfChild(paramView);
    if (i == -1) {
      if (unhideViewInternal(paramView));
      return true;
    } 
    if (this.mBucket.get(i)) {
      this.mBucket.remove(i);
      if (!unhideViewInternal(paramView));
      this.mCallback.removeViewAt(i);
      return true;
    } 
    return false;
  }
  
  public String toString() {
    return this.mBucket.toString() + ", hidden list:" + this.mHiddenViews.size();
  }
  
  void unhide(View paramView) {
    int i = this.mCallback.indexOfChild(paramView);
    if (i < 0)
      throw new IllegalArgumentException("view is not a child, cannot hide " + paramView); 
    if (!this.mBucket.get(i))
      throw new RuntimeException("trying to unhide a view that was not hidden" + paramView); 
    this.mBucket.clear(i);
    unhideViewInternal(paramView);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ChildHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */