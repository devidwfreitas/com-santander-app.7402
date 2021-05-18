package android.support.v7.widget;

import android.util.SparseIntArray;

public abstract class GridLayoutManager$SpanSizeLookup {
  private boolean mCacheSpanIndices = false;
  
  final SparseIntArray mSpanIndexCache = new SparseIntArray();
  
  int findReferenceIndexFromCache(int paramInt) {
    int i = 0;
    for (int j = this.mSpanIndexCache.size() - 1; i <= j; j = k - 1) {
      int k = i + j >>> 1;
      if (this.mSpanIndexCache.keyAt(k) < paramInt) {
        i = k + 1;
        continue;
      } 
    } 
    paramInt = i - 1;
    return (paramInt >= 0 && paramInt < this.mSpanIndexCache.size()) ? this.mSpanIndexCache.keyAt(paramInt) : -1;
  }
  
  int getCachedSpanIndex(int paramInt1, int paramInt2) {
    if (!this.mCacheSpanIndices)
      return getSpanIndex(paramInt1, paramInt2); 
    int j = this.mSpanIndexCache.get(paramInt1, -1);
    int i = j;
    if (j == -1) {
      paramInt2 = getSpanIndex(paramInt1, paramInt2);
      this.mSpanIndexCache.put(paramInt1, paramInt2);
      return paramInt2;
    } 
    return i;
  }
  
  public int getSpanGroupIndex(int paramInt1, int paramInt2) {
    int m = getSpanSize(paramInt1);
    int k = 0;
    int i = 0;
    int j = 0;
    while (true) {
      if (k < paramInt1) {
        int n = getSpanSize(k);
        j += n;
        if (j == paramInt2) {
          j = i + 1;
          i = 0;
        } else if (j > paramInt2) {
          j = i + 1;
          i = n;
        } else {
          n = j;
          j = i;
          i = n;
        } 
        n = k + 1;
        k = i;
        i = j;
        j = k;
        k = n;
        continue;
      } 
      paramInt1 = i;
      if (j + m > paramInt2)
        paramInt1 = i + 1; 
      return paramInt1;
    } 
  }
  
  public int getSpanIndex(int paramInt1, int paramInt2) {
    // Byte code:
    //   0: aload_0
    //   1: iload_1
    //   2: invokevirtual getSpanSize : (I)I
    //   5: istore #7
    //   7: iload #7
    //   9: iload_2
    //   10: if_icmpne -> 15
    //   13: iconst_0
    //   14: ireturn
    //   15: aload_0
    //   16: getfield mCacheSpanIndices : Z
    //   19: ifeq -> 129
    //   22: aload_0
    //   23: getfield mSpanIndexCache : Landroid/util/SparseIntArray;
    //   26: invokevirtual size : ()I
    //   29: ifle -> 129
    //   32: aload_0
    //   33: iload_1
    //   34: invokevirtual findReferenceIndexFromCache : (I)I
    //   37: istore #4
    //   39: iload #4
    //   41: iflt -> 129
    //   44: aload_0
    //   45: getfield mSpanIndexCache : Landroid/util/SparseIntArray;
    //   48: iload #4
    //   50: invokevirtual get : (I)I
    //   53: aload_0
    //   54: iload #4
    //   56: invokevirtual getSpanSize : (I)I
    //   59: iadd
    //   60: istore_3
    //   61: iload #4
    //   63: iconst_1
    //   64: iadd
    //   65: istore #4
    //   67: iload #4
    //   69: iload_1
    //   70: if_icmpge -> 119
    //   73: aload_0
    //   74: iload #4
    //   76: invokevirtual getSpanSize : (I)I
    //   79: istore #5
    //   81: iload_3
    //   82: iload #5
    //   84: iadd
    //   85: istore #6
    //   87: iload #6
    //   89: iload_2
    //   90: if_icmpne -> 104
    //   93: iconst_0
    //   94: istore_3
    //   95: iload #4
    //   97: iconst_1
    //   98: iadd
    //   99: istore #4
    //   101: goto -> 67
    //   104: iload #5
    //   106: istore_3
    //   107: iload #6
    //   109: iload_2
    //   110: if_icmpgt -> 95
    //   113: iload #6
    //   115: istore_3
    //   116: goto -> 95
    //   119: iload_3
    //   120: iload #7
    //   122: iadd
    //   123: iload_2
    //   124: if_icmpgt -> 13
    //   127: iload_3
    //   128: ireturn
    //   129: iconst_0
    //   130: istore #4
    //   132: iconst_0
    //   133: istore_3
    //   134: goto -> 67
  }
  
  public abstract int getSpanSize(int paramInt);
  
  public void invalidateSpanIndexCache() {
    this.mSpanIndexCache.clear();
  }
  
  public boolean isSpanIndexCacheEnabled() {
    return this.mCacheSpanIndices;
  }
  
  public void setSpanIndexCacheEnabled(boolean paramBoolean) {
    this.mCacheSpanIndices = paramBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\GridLayoutManager$SpanSizeLookup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */