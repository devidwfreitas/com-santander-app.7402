package android.support.v7.util;

import android.util.SparseArray;

class TileList<T> {
  TileList$Tile<T> mLastAccessedTile;
  
  final int mTileSize;
  
  private final SparseArray<TileList$Tile<T>> mTiles = new SparseArray(10);
  
  public TileList(int paramInt) {
    this.mTileSize = paramInt;
  }
  
  public TileList$Tile<T> addOrReplace(TileList$Tile<T> paramTileList$Tile) {
    int i = this.mTiles.indexOfKey(paramTileList$Tile.mStartPosition);
    if (i < 0) {
      this.mTiles.put(paramTileList$Tile.mStartPosition, paramTileList$Tile);
      return null;
    } 
    TileList$Tile<T> tileList$Tile2 = (TileList$Tile)this.mTiles.valueAt(i);
    this.mTiles.setValueAt(i, paramTileList$Tile);
    TileList$Tile<T> tileList$Tile1 = tileList$Tile2;
    if (this.mLastAccessedTile == tileList$Tile2) {
      this.mLastAccessedTile = paramTileList$Tile;
      return tileList$Tile2;
    } 
    return tileList$Tile1;
  }
  
  public void clear() {
    this.mTiles.clear();
  }
  
  public TileList$Tile<T> getAtIndex(int paramInt) {
    return (TileList$Tile<T>)this.mTiles.valueAt(paramInt);
  }
  
  public T getItemAt(int paramInt) {
    if (this.mLastAccessedTile == null || !this.mLastAccessedTile.containsPosition(paramInt)) {
      int i = this.mTileSize;
      i = this.mTiles.indexOfKey(paramInt - paramInt % i);
      if (i < 0)
        return null; 
      this.mLastAccessedTile = (TileList$Tile<T>)this.mTiles.valueAt(i);
    } 
    return this.mLastAccessedTile.getByPosition(paramInt);
  }
  
  public TileList$Tile<T> removeAtPos(int paramInt) {
    TileList$Tile<T> tileList$Tile = (TileList$Tile)this.mTiles.get(paramInt);
    if (this.mLastAccessedTile == tileList$Tile)
      this.mLastAccessedTile = null; 
    this.mTiles.delete(paramInt);
    return tileList$Tile;
  }
  
  public int size() {
    return this.mTiles.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\TileList.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */