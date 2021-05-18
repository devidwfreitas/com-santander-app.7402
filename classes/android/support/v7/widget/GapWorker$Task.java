package android.support.v7.widget;

class GapWorker$Task {
  public int distanceToItem;
  
  public boolean immediate;
  
  public int position;
  
  public RecyclerView view;
  
  public int viewVelocity;
  
  public void clear() {
    this.immediate = false;
    this.viewVelocity = 0;
    this.distanceToItem = 0;
    this.view = null;
    this.position = 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GapWorker$Task.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */