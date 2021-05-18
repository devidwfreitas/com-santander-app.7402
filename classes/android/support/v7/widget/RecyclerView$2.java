package android.support.v7.widget;

class RecyclerView$2 implements Runnable {
  public void run() {
    if (RecyclerView.this.mItemAnimator != null)
      RecyclerView.this.mItemAnimator.runPendingAnimations(); 
    RecyclerView.this.mPostedAnimatorRunner = false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */