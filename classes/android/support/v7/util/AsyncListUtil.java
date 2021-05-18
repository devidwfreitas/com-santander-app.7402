package android.support.v7.util;

import android.util.Log;
import android.util.SparseIntArray;

public class AsyncListUtil<T> {
  static final boolean DEBUG = false;
  
  static final String TAG = "AsyncListUtil";
  
  boolean mAllowScrollHints;
  
  private final ThreadUtil$BackgroundCallback<T> mBackgroundCallback = new AsyncListUtil$2(this);
  
  final ThreadUtil$BackgroundCallback<T> mBackgroundProxy;
  
  final AsyncListUtil$DataCallback<T> mDataCallback;
  
  int mDisplayedGeneration = 0;
  
  int mItemCount = 0;
  
  private final ThreadUtil$MainThreadCallback<T> mMainThreadCallback = new AsyncListUtil$1(this);
  
  final ThreadUtil$MainThreadCallback<T> mMainThreadProxy;
  
  final SparseIntArray mMissingPositions = new SparseIntArray();
  
  final int[] mPrevRange = new int[2];
  
  int mRequestedGeneration = this.mDisplayedGeneration;
  
  private int mScrollHint = 0;
  
  final Class<T> mTClass;
  
  final TileList<T> mTileList;
  
  final int mTileSize;
  
  final int[] mTmpRange = new int[2];
  
  final int[] mTmpRangeExtended = new int[2];
  
  final AsyncListUtil$ViewCallback mViewCallback;
  
  public AsyncListUtil(Class<T> paramClass, int paramInt, AsyncListUtil$DataCallback<T> paramAsyncListUtil$DataCallback, AsyncListUtil$ViewCallback paramAsyncListUtil$ViewCallback) {
    this.mTClass = paramClass;
    this.mTileSize = paramInt;
    this.mDataCallback = paramAsyncListUtil$DataCallback;
    this.mViewCallback = paramAsyncListUtil$ViewCallback;
    this.mTileList = new TileList<T>(this.mTileSize);
    MessageThreadUtil<T> messageThreadUtil = new MessageThreadUtil();
    this.mMainThreadProxy = messageThreadUtil.getMainThreadProxy(this.mMainThreadCallback);
    this.mBackgroundProxy = messageThreadUtil.getBackgroundProxy(this.mBackgroundCallback);
    refresh();
  }
  
  private boolean isRefreshPending() {
    return (this.mRequestedGeneration != this.mDisplayedGeneration);
  }
  
  public T getItem(int paramInt) {
    if (paramInt < 0 || paramInt >= this.mItemCount)
      throw new IndexOutOfBoundsException(paramInt + " is not within 0 and " + this.mItemCount); 
    T t = this.mTileList.getItemAt(paramInt);
    if (t == null && !isRefreshPending())
      this.mMissingPositions.put(paramInt, 0); 
    return t;
  }
  
  public int getItemCount() {
    return this.mItemCount;
  }
  
  void log(String paramString, Object... paramVarArgs) {
    Log.d("AsyncListUtil", "[MAIN] " + String.format(paramString, paramVarArgs));
  }
  
  public void onRangeChanged() {
    if (isRefreshPending())
      return; 
    updateRange();
    this.mAllowScrollHints = true;
  }
  
  public void refresh() {
    this.mMissingPositions.clear();
    ThreadUtil$BackgroundCallback<T> threadUtil$BackgroundCallback = this.mBackgroundProxy;
    int i = this.mRequestedGeneration + 1;
    this.mRequestedGeneration = i;
    threadUtil$BackgroundCallback.refresh(i);
  }
  
  void updateRange() {
    this.mViewCallback.getItemRangeInto(this.mTmpRange);
    if (this.mTmpRange[0] <= this.mTmpRange[1] && this.mTmpRange[0] >= 0 && this.mTmpRange[1] < this.mItemCount) {
      if (!this.mAllowScrollHints) {
        this.mScrollHint = 0;
      } else if (this.mTmpRange[0] > this.mPrevRange[1] || this.mPrevRange[0] > this.mTmpRange[1]) {
        this.mScrollHint = 0;
      } else if (this.mTmpRange[0] < this.mPrevRange[0]) {
        this.mScrollHint = 1;
      } else if (this.mTmpRange[0] > this.mPrevRange[0]) {
        this.mScrollHint = 2;
      } 
      this.mPrevRange[0] = this.mTmpRange[0];
      this.mPrevRange[1] = this.mTmpRange[1];
      this.mViewCallback.extendRangeInto(this.mTmpRange, this.mTmpRangeExtended, this.mScrollHint);
      this.mTmpRangeExtended[0] = Math.min(this.mTmpRange[0], Math.max(this.mTmpRangeExtended[0], 0));
      this.mTmpRangeExtended[1] = Math.max(this.mTmpRange[1], Math.min(this.mTmpRangeExtended[1], this.mItemCount - 1));
      this.mBackgroundProxy.updateRange(this.mTmpRange[0], this.mTmpRange[1], this.mTmpRangeExtended[0], this.mTmpRangeExtended[1], this.mScrollHint);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\AsyncListUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */