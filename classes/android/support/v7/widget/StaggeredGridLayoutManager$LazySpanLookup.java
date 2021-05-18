package android.support.v7.widget;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

class StaggeredGridLayoutManager$LazySpanLookup {
  private static final int MIN_SIZE = 10;
  
  int[] mData;
  
  List<StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem> mFullSpanItems;
  
  private int invalidateFullSpansAfter(int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: getfield mFullSpanItems : Ljava/util/List;
    //   4: ifnonnull -> 9
    //   7: iconst_m1
    //   8: ireturn
    //   9: aload_0
    //   10: iload_1
    //   11: invokevirtual getFullSpanItem : (I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    //   14: astore #4
    //   16: aload #4
    //   18: ifnull -> 33
    //   21: aload_0
    //   22: getfield mFullSpanItems : Ljava/util/List;
    //   25: aload #4
    //   27: invokeinterface remove : (Ljava/lang/Object;)Z
    //   32: pop
    //   33: aload_0
    //   34: getfield mFullSpanItems : Ljava/util/List;
    //   37: invokeinterface size : ()I
    //   42: istore_3
    //   43: iconst_0
    //   44: istore_2
    //   45: iload_2
    //   46: iload_3
    //   47: if_icmpge -> 116
    //   50: aload_0
    //   51: getfield mFullSpanItems : Ljava/util/List;
    //   54: iload_2
    //   55: invokeinterface get : (I)Ljava/lang/Object;
    //   60: checkcast android/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem
    //   63: getfield mPosition : I
    //   66: iload_1
    //   67: if_icmplt -> 107
    //   70: iload_2
    //   71: iconst_m1
    //   72: if_icmpeq -> 114
    //   75: aload_0
    //   76: getfield mFullSpanItems : Ljava/util/List;
    //   79: iload_2
    //   80: invokeinterface get : (I)Ljava/lang/Object;
    //   85: checkcast android/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem
    //   88: astore #4
    //   90: aload_0
    //   91: getfield mFullSpanItems : Ljava/util/List;
    //   94: iload_2
    //   95: invokeinterface remove : (I)Ljava/lang/Object;
    //   100: pop
    //   101: aload #4
    //   103: getfield mPosition : I
    //   106: ireturn
    //   107: iload_2
    //   108: iconst_1
    //   109: iadd
    //   110: istore_2
    //   111: goto -> 45
    //   114: iconst_m1
    //   115: ireturn
    //   116: iconst_m1
    //   117: istore_2
    //   118: goto -> 70
  }
  
  private void offsetFullSpansForAddition(int paramInt1, int paramInt2) {
    if (this.mFullSpanItems != null) {
      int i = this.mFullSpanItems.size() - 1;
      while (true) {
        if (i >= 0) {
          StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = this.mFullSpanItems.get(i);
          if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition >= paramInt1)
            staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition += paramInt2; 
          i--;
          continue;
        } 
        return;
      } 
    } 
  }
  
  private void offsetFullSpansForRemoval(int paramInt1, int paramInt2) {
    if (this.mFullSpanItems != null) {
      int i = this.mFullSpanItems.size() - 1;
      while (true) {
        if (i >= 0) {
          StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = this.mFullSpanItems.get(i);
          if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition >= paramInt1)
            if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition < paramInt1 + paramInt2) {
              this.mFullSpanItems.remove(i);
            } else {
              staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition -= paramInt2;
            }  
          i--;
          continue;
        } 
        return;
      } 
    } 
  }
  
  public void addFullSpanItem(StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem paramStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem) {
    if (this.mFullSpanItems == null)
      this.mFullSpanItems = new ArrayList<StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem>(); 
    int j = this.mFullSpanItems.size();
    for (int i = 0; i < j; i++) {
      StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = this.mFullSpanItems.get(i);
      if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition == paramStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition)
        this.mFullSpanItems.remove(i); 
      if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition >= paramStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition) {
        this.mFullSpanItems.add(i, paramStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem);
        return;
      } 
    } 
    this.mFullSpanItems.add(paramStaggeredGridLayoutManager$LazySpanLookup$FullSpanItem);
  }
  
  void clear() {
    if (this.mData != null)
      Arrays.fill(this.mData, -1); 
    this.mFullSpanItems = null;
  }
  
  void ensureSize(int paramInt) {
    if (this.mData == null) {
      this.mData = new int[Math.max(paramInt, 10) + 1];
      Arrays.fill(this.mData, -1);
      return;
    } 
    if (paramInt >= this.mData.length) {
      int[] arrayOfInt = this.mData;
      this.mData = new int[sizeForPosition(paramInt)];
      System.arraycopy(arrayOfInt, 0, this.mData, 0, arrayOfInt.length);
      Arrays.fill(this.mData, arrayOfInt.length, this.mData.length, -1);
      return;
    } 
  }
  
  int forceInvalidateAfter(int paramInt) {
    if (this.mFullSpanItems != null)
      for (int i = this.mFullSpanItems.size() - 1; i >= 0; i--) {
        if (((StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem)this.mFullSpanItems.get(i)).mPosition >= paramInt)
          this.mFullSpanItems.remove(i); 
      }  
    return invalidateAfter(paramInt);
  }
  
  public StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem getFirstFullSpanItemInRange(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean) {
    if (this.mFullSpanItems == null)
      return null; 
    int j = this.mFullSpanItems.size();
    int i;
    for (i = 0; i < j; i++) {
      StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = this.mFullSpanItems.get(i);
      if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition >= paramInt2)
        return null; 
      if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mPosition >= paramInt1) {
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem1 = staggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
        if (paramInt3 != 0) {
          staggeredGridLayoutManager$LazySpanLookup$FullSpanItem1 = staggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
          if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mGapDir != paramInt3) {
            if (paramBoolean) {
              staggeredGridLayoutManager$LazySpanLookup$FullSpanItem1 = staggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
              if (!staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.mHasUnwantedGapAfter)
                continue; 
              return staggeredGridLayoutManager$LazySpanLookup$FullSpanItem1;
            } 
            continue;
          } 
        } 
        return staggeredGridLayoutManager$LazySpanLookup$FullSpanItem1;
      } 
      continue;
    } 
    return null;
  }
  
  public StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem getFullSpanItem(int paramInt) {
    if (this.mFullSpanItems == null)
      return null; 
    int i = this.mFullSpanItems.size() - 1;
    while (i >= 0) {
      StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem2 = this.mFullSpanItems.get(i);
      StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem1 = staggeredGridLayoutManager$LazySpanLookup$FullSpanItem2;
      if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem2.mPosition != paramInt) {
        i--;
        continue;
      } 
      return staggeredGridLayoutManager$LazySpanLookup$FullSpanItem1;
    } 
    return null;
  }
  
  int getSpan(int paramInt) {
    return (this.mData == null || paramInt >= this.mData.length) ? -1 : this.mData[paramInt];
  }
  
  int invalidateAfter(int paramInt) {
    if (this.mData != null && paramInt < this.mData.length) {
      int i = invalidateFullSpansAfter(paramInt);
      if (i == -1) {
        Arrays.fill(this.mData, paramInt, this.mData.length, -1);
        return this.mData.length;
      } 
      Arrays.fill(this.mData, paramInt, i + 1, -1);
      return i + 1;
    } 
    return -1;
  }
  
  void offsetForAddition(int paramInt1, int paramInt2) {
    if (this.mData == null || paramInt1 >= this.mData.length)
      return; 
    ensureSize(paramInt1 + paramInt2);
    System.arraycopy(this.mData, paramInt1, this.mData, paramInt1 + paramInt2, this.mData.length - paramInt1 - paramInt2);
    Arrays.fill(this.mData, paramInt1, paramInt1 + paramInt2, -1);
    offsetFullSpansForAddition(paramInt1, paramInt2);
  }
  
  void offsetForRemoval(int paramInt1, int paramInt2) {
    if (this.mData == null || paramInt1 >= this.mData.length)
      return; 
    ensureSize(paramInt1 + paramInt2);
    System.arraycopy(this.mData, paramInt1 + paramInt2, this.mData, paramInt1, this.mData.length - paramInt1 - paramInt2);
    Arrays.fill(this.mData, this.mData.length - paramInt2, this.mData.length, -1);
    offsetFullSpansForRemoval(paramInt1, paramInt2);
  }
  
  void setSpan(int paramInt, StaggeredGridLayoutManager$Span paramStaggeredGridLayoutManager$Span) {
    ensureSize(paramInt);
    this.mData[paramInt] = paramStaggeredGridLayoutManager$Span.mIndex;
  }
  
  int sizeForPosition(int paramInt) {
    int i;
    for (i = this.mData.length; i <= paramInt; i *= 2);
    return i;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\StaggeredGridLayoutManager$LazySpanLookup.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */