package android.support.v7.util;

import android.util.Log;
import android.util.SparseBooleanArray;

class AsyncListUtil$2 implements ThreadUtil$BackgroundCallback<T> {
  private int mFirstRequiredTileStart;
  
  private int mGeneration;
  
  private int mItemCount;
  
  private int mLastRequiredTileStart;
  
  final SparseBooleanArray mLoadedTiles = new SparseBooleanArray();
  
  private TileList$Tile<T> mRecycledRoot;
  
  private TileList$Tile<T> acquireTile() {
    if (this.mRecycledRoot != null) {
      TileList$Tile<T> tileList$Tile = this.mRecycledRoot;
      this.mRecycledRoot = this.mRecycledRoot.mNext;
      return tileList$Tile;
    } 
    return new TileList$Tile<T>(AsyncListUtil.this.mTClass, AsyncListUtil.this.mTileSize);
  }
  
  private void addTile(TileList$Tile<T> paramTileList$Tile) {
    this.mLoadedTiles.put(paramTileList$Tile.mStartPosition, true);
    AsyncListUtil.this.mMainThreadProxy.addTile(this.mGeneration, paramTileList$Tile);
  }
  
  private void flushTileCache(int paramInt) {
    int i = AsyncListUtil.this.mDataCallback.getMaxCachedTiles();
    while (this.mLoadedTiles.size() >= i) {
      int j = this.mLoadedTiles.keyAt(0);
      int k = this.mLoadedTiles.keyAt(this.mLoadedTiles.size() - 1);
      int m = this.mFirstRequiredTileStart - j;
      int n = k - this.mLastRequiredTileStart;
      if (m > 0 && (m >= n || paramInt == 2)) {
        removeTile(j);
        continue;
      } 
      if (n > 0 && (m < n || paramInt == 1))
        removeTile(k); 
    } 
  }
  
  private int getTileStart(int paramInt) {
    return paramInt - paramInt % AsyncListUtil.this.mTileSize;
  }
  
  private boolean isTileLoaded(int paramInt) {
    return this.mLoadedTiles.get(paramInt);
  }
  
  private void log(String paramString, Object... paramVarArgs) {
    Log.d("AsyncListUtil", "[BKGR] " + String.format(paramString, paramVarArgs));
  }
  
  private void removeTile(int paramInt) {
    this.mLoadedTiles.delete(paramInt);
    AsyncListUtil.this.mMainThreadProxy.removeTile(this.mGeneration, paramInt);
  }
  
  private void requestTiles(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean) {
    for (int i = paramInt1; i <= paramInt2; i += AsyncListUtil.this.mTileSize) {
      int j;
      if (paramBoolean) {
        j = paramInt2 + paramInt1 - i;
      } else {
        j = i;
      } 
      AsyncListUtil.this.mBackgroundProxy.loadTile(j, paramInt3);
    } 
  }
  
  public void loadTile(int paramInt1, int paramInt2) {
    if (isTileLoaded(paramInt1))
      return; 
    TileList$Tile<T> tileList$Tile = acquireTile();
    tileList$Tile.mStartPosition = paramInt1;
    tileList$Tile.mItemCount = Math.min(AsyncListUtil.this.mTileSize, this.mItemCount - tileList$Tile.mStartPosition);
    AsyncListUtil.this.mDataCallback.fillData(tileList$Tile.mItems, tileList$Tile.mStartPosition, tileList$Tile.mItemCount);
    flushTileCache(paramInt2);
    addTile(tileList$Tile);
  }
  
  public void recycleTile(TileList$Tile<T> paramTileList$Tile) {
    AsyncListUtil.this.mDataCallback.recycleData(paramTileList$Tile.mItems, paramTileList$Tile.mItemCount);
    paramTileList$Tile.mNext = this.mRecycledRoot;
    this.mRecycledRoot = paramTileList$Tile;
  }
  
  public void refresh(int paramInt) {
    this.mGeneration = paramInt;
    this.mLoadedTiles.clear();
    this.mItemCount = AsyncListUtil.this.mDataCallback.refreshData();
    AsyncListUtil.this.mMainThreadProxy.updateItemCount(this.mGeneration, this.mItemCount);
  }
  
  public void updateRange(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5) {
    if (paramInt1 > paramInt2)
      return; 
    paramInt1 = getTileStart(paramInt1);
    paramInt2 = getTileStart(paramInt2);
    this.mFirstRequiredTileStart = getTileStart(paramInt3);
    this.mLastRequiredTileStart = getTileStart(paramInt4);
    if (paramInt5 == 1) {
      requestTiles(this.mFirstRequiredTileStart, paramInt2, paramInt5, true);
      requestTiles(AsyncListUtil.this.mTileSize + paramInt2, this.mLastRequiredTileStart, paramInt5, false);
      return;
    } 
    requestTiles(paramInt1, this.mLastRequiredTileStart, paramInt5, false);
    requestTiles(this.mFirstRequiredTileStart, paramInt1 - AsyncListUtil.this.mTileSize, paramInt5, true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\AsyncListUtil$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */