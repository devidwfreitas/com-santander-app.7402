package android.support.v7.widget;

class RecyclerView$1 implements Runnable {
  public void run() {
    if (!RecyclerView.this.mFirstLayoutComplete || RecyclerView.this.isLayoutRequested())
      return; 
    if (!RecyclerView.this.mIsAttached) {
      RecyclerView.this.requestLayout();
      return;
    } 
    if (RecyclerView.this.mLayoutFrozen) {
      RecyclerView.this.mLayoutRequestEaten = true;
      return;
    } 
    RecyclerView.this.consumePendingUpdateOperations();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */