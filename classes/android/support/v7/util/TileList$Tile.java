package android.support.v7.util;

import java.lang.reflect.Array;

public class TileList$Tile<T> {
  public int mItemCount;
  
  public final T[] mItems;
  
  TileList$Tile<T> mNext;
  
  public int mStartPosition;
  
  public TileList$Tile(Class<T> paramClass, int paramInt) {
    this.mItems = (T[])Array.newInstance(paramClass, paramInt);
  }
  
  boolean containsPosition(int paramInt) {
    return (this.mStartPosition <= paramInt && paramInt < this.mStartPosition + this.mItemCount);
  }
  
  T getByPosition(int paramInt) {
    return this.mItems[paramInt - this.mStartPosition];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\TileList$Tile.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */