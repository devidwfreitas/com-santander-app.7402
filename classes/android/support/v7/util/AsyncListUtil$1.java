package android.support.v7.util;

import android.util.Log;

class AsyncListUtil$1 implements ThreadUtil$MainThreadCallback<T> {
  private boolean isRequestedGeneration(int paramInt) {
    return (paramInt == AsyncListUtil.this.mRequestedGeneration);
  }
  
  private void recycleAllTiles() {
    for (int i = 0; i < AsyncListUtil.this.mTileList.size(); i++)
      AsyncListUtil.this.mBackgroundProxy.recycleTile(AsyncListUtil.this.mTileList.getAtIndex(i)); 
    AsyncListUtil.this.mTileList.clear();
  }
  
  public void addTile(int paramInt, TileList$Tile<T> paramTileList$Tile) {
    if (!isRequestedGeneration(paramInt)) {
      AsyncListUtil.this.mBackgroundProxy.recycleTile(paramTileList$Tile);
      return;
    } 
    TileList$Tile<T> tileList$Tile = AsyncListUtil.this.mTileList.addOrReplace(paramTileList$Tile);
    if (tileList$Tile != null) {
      Log.e("AsyncListUtil", "duplicate tile @" + tileList$Tile.mStartPosition);
      AsyncListUtil.this.mBackgroundProxy.recycleTile(tileList$Tile);
    } 
    int i = paramTileList$Tile.mStartPosition;
    int j = paramTileList$Tile.mItemCount;
    paramInt = 0;
    while (true) {
      if (paramInt < AsyncListUtil.this.mMissingPositions.size()) {
        int k = AsyncListUtil.this.mMissingPositions.keyAt(paramInt);
        if (paramTileList$Tile.mStartPosition <= k && k < j + i) {
          AsyncListUtil.this.mMissingPositions.removeAt(paramInt);
          AsyncListUtil.this.mViewCallback.onItemLoaded(k);
          continue;
        } 
        paramInt++;
        continue;
      } 
      return;
    } 
  }
  
  public void removeTile(int paramInt1, int paramInt2) {
    if (!isRequestedGeneration(paramInt1))
      return; 
    TileList$Tile tileList$Tile = AsyncListUtil.this.mTileList.removeAtPos(paramInt2);
    if (tileList$Tile == null) {
      Log.e("AsyncListUtil", "tile not found @" + paramInt2);
      return;
    } 
    AsyncListUtil.this.mBackgroundProxy.recycleTile(tileList$Tile);
  }
  
  public void updateItemCount(int paramInt1, int paramInt2) {
    if (!isRequestedGeneration(paramInt1))
      return; 
    AsyncListUtil.this.mItemCount = paramInt2;
    AsyncListUtil.this.mViewCallback.onDataRefresh();
    AsyncListUtil.this.mDisplayedGeneration = AsyncListUtil.this.mRequestedGeneration;
    recycleAllTiles();
    AsyncListUtil.this.mAllowScrollHints = false;
    AsyncListUtil.this.updateRange();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\AsyncListUtil$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */