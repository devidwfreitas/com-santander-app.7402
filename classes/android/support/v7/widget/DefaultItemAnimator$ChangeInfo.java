package android.support.v7.widget;

class DefaultItemAnimator$ChangeInfo {
  public int fromX;
  
  public int fromY;
  
  public RecyclerView$ViewHolder newHolder;
  
  public RecyclerView$ViewHolder oldHolder;
  
  public int toX;
  
  public int toY;
  
  private DefaultItemAnimator$ChangeInfo(RecyclerView$ViewHolder paramRecyclerView$ViewHolder1, RecyclerView$ViewHolder paramRecyclerView$ViewHolder2) {
    this.oldHolder = paramRecyclerView$ViewHolder1;
    this.newHolder = paramRecyclerView$ViewHolder2;
  }
  
  DefaultItemAnimator$ChangeInfo(RecyclerView$ViewHolder paramRecyclerView$ViewHolder1, RecyclerView$ViewHolder paramRecyclerView$ViewHolder2, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this(paramRecyclerView$ViewHolder1, paramRecyclerView$ViewHolder2);
    this.fromX = paramInt1;
    this.fromY = paramInt2;
    this.toX = paramInt3;
    this.toY = paramInt4;
  }
  
  public String toString() {
    return "ChangeInfo{oldHolder=" + this.oldHolder + ", newHolder=" + this.newHolder + ", fromX=" + this.fromX + ", fromY=" + this.fromY + ", toX=" + this.toX + ", toY=" + this.toY + '}';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\DefaultItemAnimator$ChangeInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */