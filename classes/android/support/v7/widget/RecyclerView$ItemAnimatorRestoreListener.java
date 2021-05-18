package android.support.v7.widget;

class RecyclerView$ItemAnimatorRestoreListener implements RecyclerView$ItemAnimator$ItemAnimatorListener {
  public void onAnimationFinished(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    paramRecyclerView$ViewHolder.setIsRecyclable(true);
    if (paramRecyclerView$ViewHolder.mShadowedHolder != null && paramRecyclerView$ViewHolder.mShadowingHolder == null)
      paramRecyclerView$ViewHolder.mShadowedHolder = null; 
    paramRecyclerView$ViewHolder.mShadowingHolder = null;
    if (!RecyclerView$ViewHolder.access$1300(paramRecyclerView$ViewHolder) && !RecyclerView.this.removeAnimatingView(paramRecyclerView$ViewHolder.itemView) && paramRecyclerView$ViewHolder.isTmpDetached())
      RecyclerView.this.removeDetachedView(paramRecyclerView$ViewHolder.itemView, false); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$ItemAnimatorRestoreListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */