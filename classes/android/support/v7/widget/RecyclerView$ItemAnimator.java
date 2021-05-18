package android.support.v7.widget;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import java.util.List;

public abstract class RecyclerView$ItemAnimator {
  public static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
  
  public static final int FLAG_CHANGED = 2;
  
  public static final int FLAG_INVALIDATED = 4;
  
  public static final int FLAG_MOVED = 2048;
  
  public static final int FLAG_REMOVED = 8;
  
  private long mAddDuration = 120L;
  
  private long mChangeDuration = 250L;
  
  private ArrayList<RecyclerView$ItemAnimator$ItemAnimatorFinishedListener> mFinishedListeners = new ArrayList<RecyclerView$ItemAnimator$ItemAnimatorFinishedListener>();
  
  private RecyclerView$ItemAnimator$ItemAnimatorListener mListener = null;
  
  private long mMoveDuration = 250L;
  
  private long mRemoveDuration = 120L;
  
  static int buildAdapterChangeFlagsForAnimations(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    int j = RecyclerView$ViewHolder.access$1400(paramRecyclerView$ViewHolder) & 0xE;
    if (paramRecyclerView$ViewHolder.isInvalid())
      return 4; 
    int i = j;
    if ((j & 0x4) == 0) {
      int k = paramRecyclerView$ViewHolder.getOldPosition();
      int m = paramRecyclerView$ViewHolder.getAdapterPosition();
      i = j;
      if (k != -1) {
        i = j;
        if (m != -1) {
          i = j;
          if (k != m)
            return j | 0x800; 
        } 
      } 
    } 
    return i;
  }
  
  public abstract boolean animateAppearance(@NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo1, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo2);
  
  public abstract boolean animateChange(@NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder1, @NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder2, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo1, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo2);
  
  public abstract boolean animateDisappearance(@NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo1, @Nullable RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo2);
  
  public abstract boolean animatePersistence(@NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo1, @NonNull RecyclerView$ItemAnimator$ItemHolderInfo paramRecyclerView$ItemAnimator$ItemHolderInfo2);
  
  public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    return true;
  }
  
  public boolean canReuseUpdatedViewHolder(@NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder, @NonNull List<Object> paramList) {
    return canReuseUpdatedViewHolder(paramRecyclerView$ViewHolder);
  }
  
  public final void dispatchAnimationFinished(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    onAnimationFinished(paramRecyclerView$ViewHolder);
    if (this.mListener != null)
      this.mListener.onAnimationFinished(paramRecyclerView$ViewHolder); 
  }
  
  public final void dispatchAnimationStarted(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    onAnimationStarted(paramRecyclerView$ViewHolder);
  }
  
  public final void dispatchAnimationsFinished() {
    int j = this.mFinishedListeners.size();
    for (int i = 0; i < j; i++)
      ((RecyclerView$ItemAnimator$ItemAnimatorFinishedListener)this.mFinishedListeners.get(i)).onAnimationsFinished(); 
    this.mFinishedListeners.clear();
  }
  
  public abstract void endAnimation(RecyclerView$ViewHolder paramRecyclerView$ViewHolder);
  
  public abstract void endAnimations();
  
  public long getAddDuration() {
    return this.mAddDuration;
  }
  
  public long getChangeDuration() {
    return this.mChangeDuration;
  }
  
  public long getMoveDuration() {
    return this.mMoveDuration;
  }
  
  public long getRemoveDuration() {
    return this.mRemoveDuration;
  }
  
  public abstract boolean isRunning();
  
  public final boolean isRunning(RecyclerView$ItemAnimator$ItemAnimatorFinishedListener paramRecyclerView$ItemAnimator$ItemAnimatorFinishedListener) {
    boolean bool = isRunning();
    if (paramRecyclerView$ItemAnimator$ItemAnimatorFinishedListener != null) {
      if (!bool) {
        paramRecyclerView$ItemAnimator$ItemAnimatorFinishedListener.onAnimationsFinished();
        return bool;
      } 
    } else {
      return bool;
    } 
    this.mFinishedListeners.add(paramRecyclerView$ItemAnimator$ItemAnimatorFinishedListener);
    return bool;
  }
  
  public RecyclerView$ItemAnimator$ItemHolderInfo obtainHolderInfo() {
    return new RecyclerView$ItemAnimator$ItemHolderInfo();
  }
  
  public void onAnimationFinished(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {}
  
  public void onAnimationStarted(RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {}
  
  @NonNull
  public RecyclerView$ItemAnimator$ItemHolderInfo recordPostLayoutInformation(@NonNull RecyclerView$State paramRecyclerView$State, @NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder) {
    return obtainHolderInfo().setFrom(paramRecyclerView$ViewHolder);
  }
  
  @NonNull
  public RecyclerView$ItemAnimator$ItemHolderInfo recordPreLayoutInformation(@NonNull RecyclerView$State paramRecyclerView$State, @NonNull RecyclerView$ViewHolder paramRecyclerView$ViewHolder, int paramInt, @NonNull List<Object> paramList) {
    return obtainHolderInfo().setFrom(paramRecyclerView$ViewHolder);
  }
  
  public abstract void runPendingAnimations();
  
  public void setAddDuration(long paramLong) {
    this.mAddDuration = paramLong;
  }
  
  public void setChangeDuration(long paramLong) {
    this.mChangeDuration = paramLong;
  }
  
  void setListener(RecyclerView$ItemAnimator$ItemAnimatorListener paramRecyclerView$ItemAnimator$ItemAnimatorListener) {
    this.mListener = paramRecyclerView$ItemAnimator$ItemAnimatorListener;
  }
  
  public void setMoveDuration(long paramLong) {
    this.mMoveDuration = paramLong;
  }
  
  public void setRemoveDuration(long paramLong) {
    this.mRemoveDuration = paramLong;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\RecyclerView$ItemAnimator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */