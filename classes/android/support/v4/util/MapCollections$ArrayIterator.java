package android.support.v4.util;

import java.util.Iterator;

final class MapCollections$ArrayIterator<T> implements Iterator<T> {
  boolean mCanRemove = false;
  
  int mIndex;
  
  final int mOffset;
  
  int mSize;
  
  MapCollections$ArrayIterator(int paramInt) {
    this.mOffset = paramInt;
    this.mSize = paramMapCollections.colGetSize();
  }
  
  public boolean hasNext() {
    return (this.mIndex < this.mSize);
  }
  
  public T next() {
    Object object = MapCollections.this.colGetEntry(this.mIndex, this.mOffset);
    this.mIndex++;
    this.mCanRemove = true;
    return (T)object;
  }
  
  public void remove() {
    if (!this.mCanRemove)
      throw new IllegalStateException(); 
    this.mIndex--;
    this.mSize--;
    this.mCanRemove = false;
    MapCollections.this.colRemoveAt(this.mIndex);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\MapCollections$ArrayIterator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */