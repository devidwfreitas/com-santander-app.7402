package android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup;

class RecyclerView$5 implements ChildHelper$Callback {
  public void addView(View paramView, int paramInt) {
    RecyclerView.this.addView(paramView, paramInt);
    RecyclerView.this.dispatchChildAttached(paramView);
  }
  
  public void attachViewToParent(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams) {
    RecyclerView$ViewHolder recyclerView$ViewHolder = RecyclerView.getChildViewHolderInt(paramView);
    if (recyclerView$ViewHolder != null) {
      if (!recyclerView$ViewHolder.isTmpDetached() && !recyclerView$ViewHolder.shouldIgnore())
        throw new IllegalArgumentException("Called attach on a child which is not detached: " + recyclerView$ViewHolder); 
      recyclerView$ViewHolder.clearTmpDetachFlag();
    } 
    RecyclerView.access$000(RecyclerView.this, paramView, paramInt, paramLayoutParams);
  }
  
  public void detachViewFromParent(int paramInt) {
    View view = getChildAt(paramInt);
    if (view != null) {
      RecyclerView$ViewHolder recyclerView$ViewHolder = RecyclerView.getChildViewHolderInt(view);
      if (recyclerView$ViewHolder != null) {
        if (recyclerView$ViewHolder.isTmpDetached() && !recyclerView$ViewHolder.shouldIgnore())
          throw new IllegalArgumentException("called detach on an already detached child " + recyclerView$ViewHolder); 
        recyclerView$ViewHolder.addFlags(256);
      } 
    } 
    RecyclerView.access$100(RecyclerView.this, paramInt);
  }
  
  public View getChildAt(int paramInt) {
    return RecyclerView.this.getChildAt(paramInt);
  }
  
  public int getChildCount() {
    return RecyclerView.this.getChildCount();
  }
  
  public RecyclerView$ViewHolder getChildViewHolder(View paramView) {
    return RecyclerView.getChildViewHolderInt(paramView);
  }
  
  public int indexOfChild(View paramView) {
    return RecyclerView.this.indexOfChild(paramView);
  }
  
  public void onEnteredHiddenState(View paramView) {
    RecyclerView$ViewHolder recyclerView$ViewHolder = RecyclerView.getChildViewHolderInt(paramView);
    if (recyclerView$ViewHolder != null)
      RecyclerView$ViewHolder.access$200(recyclerView$ViewHolder, RecyclerView.this); 
  }
  
  public void onLeftHiddenState(View paramView) {
    RecyclerView$ViewHolder recyclerView$ViewHolder = RecyclerView.getChildViewHolderInt(paramView);
    if (recyclerView$ViewHolder != null)
      RecyclerView$ViewHolder.access$300(recyclerView$ViewHolder, RecyclerView.this); 
  }
  
  public void removeAllViews() {
    int j = getChildCount();
    for (int i = 0; i < j; i++)
      RecyclerView.this.dispatchChildDetached(getChildAt(i)); 
    RecyclerView.this.removeAllViews();
  }
  
  public void removeViewAt(int paramInt) {
    View view = RecyclerView.this.getChildAt(paramInt);
    if (view != null)
      RecyclerView.this.dispatchChildDetached(view); 
    RecyclerView.this.removeViewAt(paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$5.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */