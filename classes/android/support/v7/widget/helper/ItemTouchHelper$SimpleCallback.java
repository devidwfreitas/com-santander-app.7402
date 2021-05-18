package android.support.v7.widget.helper;

import android.support.v7.widget.RecyclerView;

public abstract class ItemTouchHelper$SimpleCallback extends ItemTouchHelper$Callback {
  private int mDefaultDragDirs;
  
  private int mDefaultSwipeDirs;
  
  public ItemTouchHelper$SimpleCallback(int paramInt1, int paramInt2) {
    this.mDefaultSwipeDirs = paramInt2;
    this.mDefaultDragDirs = paramInt1;
  }
  
  public int getDragDirs(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder) {
    return this.mDefaultDragDirs;
  }
  
  public int getMovementFlags(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder) {
    return makeMovementFlags(getDragDirs(paramRecyclerView, paramViewHolder), getSwipeDirs(paramRecyclerView, paramViewHolder));
  }
  
  public int getSwipeDirs(RecyclerView paramRecyclerView, RecyclerView.ViewHolder paramViewHolder) {
    return this.mDefaultSwipeDirs;
  }
  
  public void setDefaultDragDirs(int paramInt) {
    this.mDefaultDragDirs = paramInt;
  }
  
  public void setDefaultSwipeDirs(int paramInt) {
    this.mDefaultSwipeDirs = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\helper\ItemTouchHelper$SimpleCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */