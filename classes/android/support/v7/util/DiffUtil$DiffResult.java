package android.support.v7.util;

import android.support.annotation.VisibleForTesting;
import android.support.v7.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class DiffUtil$DiffResult {
  private static final int FLAG_CHANGED = 2;
  
  private static final int FLAG_IGNORE = 16;
  
  private static final int FLAG_MASK = 31;
  
  private static final int FLAG_MOVED_CHANGED = 4;
  
  private static final int FLAG_MOVED_NOT_CHANGED = 8;
  
  private static final int FLAG_NOT_CHANGED = 1;
  
  private static final int FLAG_OFFSET = 5;
  
  private final DiffUtil$Callback mCallback;
  
  private final boolean mDetectMoves;
  
  private final int[] mNewItemStatuses;
  
  private final int mNewListSize;
  
  private final int[] mOldItemStatuses;
  
  private final int mOldListSize;
  
  private final List<DiffUtil$Snake> mSnakes;
  
  DiffUtil$DiffResult(DiffUtil$Callback paramDiffUtil$Callback, List<DiffUtil$Snake> paramList, int[] paramArrayOfint1, int[] paramArrayOfint2, boolean paramBoolean) {
    this.mSnakes = paramList;
    this.mOldItemStatuses = paramArrayOfint1;
    this.mNewItemStatuses = paramArrayOfint2;
    Arrays.fill(this.mOldItemStatuses, 0);
    Arrays.fill(this.mNewItemStatuses, 0);
    this.mCallback = paramDiffUtil$Callback;
    this.mOldListSize = paramDiffUtil$Callback.getOldListSize();
    this.mNewListSize = paramDiffUtil$Callback.getNewListSize();
    this.mDetectMoves = paramBoolean;
    addRootSnake();
    findMatchingItems();
  }
  
  private void addRootSnake() {
    DiffUtil$Snake diffUtil$Snake;
    if (this.mSnakes.isEmpty()) {
      diffUtil$Snake = null;
    } else {
      diffUtil$Snake = this.mSnakes.get(0);
    } 
    if (diffUtil$Snake == null || diffUtil$Snake.x != 0 || diffUtil$Snake.y != 0) {
      diffUtil$Snake = new DiffUtil$Snake();
      diffUtil$Snake.x = 0;
      diffUtil$Snake.y = 0;
      diffUtil$Snake.removal = false;
      diffUtil$Snake.size = 0;
      diffUtil$Snake.reverse = false;
      this.mSnakes.add(0, diffUtil$Snake);
    } 
  }
  
  private void dispatchAdditions(List<DiffUtil$PostponedUpdate> paramList, ListUpdateCallback paramListUpdateCallback, int paramInt1, int paramInt2, int paramInt3) {
    if (!this.mDetectMoves) {
      paramListUpdateCallback.onInserted(paramInt1, paramInt2);
      return;
    } 
    paramInt2--;
    while (true) {
      if (paramInt2 >= 0) {
        int j;
        int i = this.mNewItemStatuses[paramInt3 + paramInt2] & 0x1F;
        switch (i) {
          case 0:
            paramListUpdateCallback.onInserted(paramInt1, 1);
            for (DiffUtil$PostponedUpdate diffUtil$PostponedUpdate : paramList)
              diffUtil$PostponedUpdate.currentPos++; 
            paramInt2--;
            break;
          case 4:
          case 8:
            j = this.mNewItemStatuses[paramInt3 + paramInt2] >> 5;
            paramListUpdateCallback.onMoved((removePostponedUpdate(paramList, j, true)).currentPos, paramInt1);
            if (i == 4)
              paramListUpdateCallback.onChanged(paramInt1, 1, this.mCallback.getChangePayload(j, paramInt3 + paramInt2)); 
            paramInt2--;
            break;
          case 16:
            paramList.add(new DiffUtil$PostponedUpdate(paramInt3 + paramInt2, paramInt1, false));
            paramInt2--;
            break;
        } 
        continue;
      } 
      return;
    } 
  }
  
  private void dispatchRemovals(List<DiffUtil$PostponedUpdate> paramList, ListUpdateCallback paramListUpdateCallback, int paramInt1, int paramInt2, int paramInt3) {
    if (!this.mDetectMoves) {
      paramListUpdateCallback.onRemoved(paramInt1, paramInt2);
      return;
    } 
    paramInt2--;
    while (true) {
      if (paramInt2 >= 0) {
        int j;
        DiffUtil$PostponedUpdate diffUtil$PostponedUpdate;
        int i = this.mOldItemStatuses[paramInt3 + paramInt2] & 0x1F;
        switch (i) {
          case 0:
            paramListUpdateCallback.onRemoved(paramInt1 + paramInt2, 1);
            for (DiffUtil$PostponedUpdate diffUtil$PostponedUpdate1 : paramList)
              diffUtil$PostponedUpdate1.currentPos--; 
            paramInt2--;
            break;
          case 4:
          case 8:
            j = this.mOldItemStatuses[paramInt3 + paramInt2] >> 5;
            diffUtil$PostponedUpdate = removePostponedUpdate(paramList, j, false);
            paramListUpdateCallback.onMoved(paramInt1 + paramInt2, diffUtil$PostponedUpdate.currentPos - 1);
            if (i == 4)
              paramListUpdateCallback.onChanged(diffUtil$PostponedUpdate.currentPos - 1, 1, this.mCallback.getChangePayload(paramInt3 + paramInt2, j)); 
            paramInt2--;
            break;
          case 16:
            paramList.add(new DiffUtil$PostponedUpdate(paramInt3 + paramInt2, paramInt1 + paramInt2, true));
            paramInt2--;
            break;
        } 
        continue;
      } 
      return;
    } 
  }
  
  private void findAddition(int paramInt1, int paramInt2, int paramInt3) {
    if (this.mOldItemStatuses[paramInt1 - 1] != 0)
      return; 
    findMatchingItem(paramInt1, paramInt2, paramInt3, false);
  }
  
  private boolean findMatchingItem(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean) {
    int j;
    byte b = 8;
    if (paramBoolean) {
      j = paramInt2 - 1;
      int m = paramInt2 - 1;
      i = paramInt1;
      paramInt2 = j;
      j = m;
    } else {
      j = paramInt1 - 1;
      i = paramInt1 - 1;
    } 
    int k = i;
    int i = paramInt2;
    paramInt2 = k;
    while (paramInt3 >= 0) {
      DiffUtil$Snake diffUtil$Snake = this.mSnakes.get(paramInt3);
      k = diffUtil$Snake.x;
      int m = diffUtil$Snake.size;
      int n = diffUtil$Snake.y;
      int i1 = diffUtil$Snake.size;
      if (paramBoolean) {
        while (--paramInt2 >= k + m) {
          if (this.mCallback.areItemsTheSame(paramInt2, j)) {
            if (this.mCallback.areContentsTheSame(paramInt2, j)) {
              paramInt1 = 8;
              this.mNewItemStatuses[j] = paramInt2 << 5 | 0x10;
              this.mOldItemStatuses[paramInt2] = paramInt1 | j << 5;
              return true;
            } 
            paramInt1 = 4;
            this.mNewItemStatuses[j] = paramInt2 << 5 | 0x10;
            this.mOldItemStatuses[paramInt2] = paramInt1 | j << 5;
            return true;
          } 
          paramInt2--;
        } 
      } else {
        for (paramInt2 = i - 1; paramInt2 >= n + i1; paramInt2--) {
          if (this.mCallback.areItemsTheSame(j, paramInt2)) {
            if (this.mCallback.areContentsTheSame(j, paramInt2)) {
              paramInt3 = b;
              this.mOldItemStatuses[paramInt1 - 1] = paramInt2 << 5 | 0x10;
              this.mNewItemStatuses[paramInt2] = paramInt1 - 1 << 5 | paramInt3;
              return true;
            } 
            paramInt3 = 4;
            this.mOldItemStatuses[paramInt1 - 1] = paramInt2 << 5 | 0x10;
            this.mNewItemStatuses[paramInt2] = paramInt1 - 1 << 5 | paramInt3;
            return true;
          } 
        } 
      } 
      paramInt2 = diffUtil$Snake.x;
      i = diffUtil$Snake.y;
      paramInt3--;
    } 
    return false;
  }
  
  private void findMatchingItems() {
    int j = this.mOldListSize;
    int i = this.mNewListSize;
    for (int k = this.mSnakes.size() - 1; k >= 0; k--) {
      DiffUtil$Snake diffUtil$Snake = this.mSnakes.get(k);
      int i1 = diffUtil$Snake.x;
      int i2 = diffUtil$Snake.size;
      int m = diffUtil$Snake.y;
      int n = diffUtil$Snake.size;
      if (this.mDetectMoves) {
        int i3;
        while (true) {
          i3 = i;
          if (j > i1 + i2) {
            findAddition(j, i, k);
            j--;
            continue;
          } 
          break;
        } 
        while (i3 > m + n) {
          findRemoval(j, i3, k);
          i3--;
        } 
      } 
      for (i = 0; i < diffUtil$Snake.size; i++) {
        int i3 = diffUtil$Snake.x + i;
        m = diffUtil$Snake.y + i;
        if (this.mCallback.areContentsTheSame(i3, m)) {
          j = 1;
        } else {
          j = 2;
        } 
        this.mOldItemStatuses[i3] = m << 5 | j;
        this.mNewItemStatuses[m] = j | i3 << 5;
      } 
      j = diffUtil$Snake.x;
      i = diffUtil$Snake.y;
    } 
  }
  
  private void findRemoval(int paramInt1, int paramInt2, int paramInt3) {
    if (this.mNewItemStatuses[paramInt2 - 1] != 0)
      return; 
    findMatchingItem(paramInt1, paramInt2, paramInt3, true);
  }
  
  private static DiffUtil$PostponedUpdate removePostponedUpdate(List<DiffUtil$PostponedUpdate> paramList, int paramInt, boolean paramBoolean) {
    // Byte code:
    //   0: aload_0
    //   1: invokeinterface size : ()I
    //   6: iconst_1
    //   7: isub
    //   8: istore_3
    //   9: iload_3
    //   10: iflt -> 120
    //   13: aload_0
    //   14: iload_3
    //   15: invokeinterface get : (I)Ljava/lang/Object;
    //   20: checkcast android/support/v7/util/DiffUtil$PostponedUpdate
    //   23: astore #6
    //   25: aload #6
    //   27: getfield posInOwnerList : I
    //   30: iload_1
    //   31: if_icmpne -> 113
    //   34: aload #6
    //   36: getfield removal : Z
    //   39: iload_2
    //   40: if_icmpne -> 113
    //   43: aload_0
    //   44: iload_3
    //   45: invokeinterface remove : (I)Ljava/lang/Object;
    //   50: pop
    //   51: iload_3
    //   52: istore_1
    //   53: aload #6
    //   55: astore #5
    //   57: iload_1
    //   58: aload_0
    //   59: invokeinterface size : ()I
    //   64: if_icmpge -> 123
    //   67: aload_0
    //   68: iload_1
    //   69: invokeinterface get : (I)Ljava/lang/Object;
    //   74: checkcast android/support/v7/util/DiffUtil$PostponedUpdate
    //   77: astore #5
    //   79: aload #5
    //   81: getfield currentPos : I
    //   84: istore #4
    //   86: iload_2
    //   87: ifeq -> 108
    //   90: iconst_1
    //   91: istore_3
    //   92: aload #5
    //   94: iload_3
    //   95: iload #4
    //   97: iadd
    //   98: putfield currentPos : I
    //   101: iload_1
    //   102: iconst_1
    //   103: iadd
    //   104: istore_1
    //   105: goto -> 53
    //   108: iconst_m1
    //   109: istore_3
    //   110: goto -> 92
    //   113: iload_3
    //   114: iconst_1
    //   115: isub
    //   116: istore_3
    //   117: goto -> 9
    //   120: aconst_null
    //   121: astore #5
    //   123: aload #5
    //   125: areturn
  }
  
  public void dispatchUpdatesTo(ListUpdateCallback paramListUpdateCallback) {
    if (paramListUpdateCallback instanceof BatchingListUpdateCallback) {
      paramListUpdateCallback = paramListUpdateCallback;
    } else {
      paramListUpdateCallback = new BatchingListUpdateCallback(paramListUpdateCallback);
    } 
    ArrayList<DiffUtil$PostponedUpdate> arrayList = new ArrayList();
    int j = this.mOldListSize;
    int k = this.mNewListSize;
    for (int i = this.mSnakes.size() - 1; i >= 0; i--) {
      DiffUtil$Snake diffUtil$Snake = this.mSnakes.get(i);
      int m = diffUtil$Snake.size;
      int n = diffUtil$Snake.x + m;
      int i1 = diffUtil$Snake.y + m;
      if (n < j)
        dispatchRemovals(arrayList, paramListUpdateCallback, n, j - n, n); 
      if (i1 < k)
        dispatchAdditions(arrayList, paramListUpdateCallback, n, k - i1, i1); 
      for (j = m - 1; j >= 0; j--) {
        if ((this.mOldItemStatuses[diffUtil$Snake.x + j] & 0x1F) == 2)
          paramListUpdateCallback.onChanged(diffUtil$Snake.x + j, 1, this.mCallback.getChangePayload(diffUtil$Snake.x + j, diffUtil$Snake.y + j)); 
      } 
      j = diffUtil$Snake.x;
      k = diffUtil$Snake.y;
    } 
    paramListUpdateCallback.dispatchLastEvent();
  }
  
  public void dispatchUpdatesTo(RecyclerView.Adapter paramAdapter) {
    dispatchUpdatesTo(new DiffUtil$DiffResult$1(this, paramAdapter));
  }
  
  @VisibleForTesting
  List<DiffUtil$Snake> getSnakes() {
    return this.mSnakes;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\DiffUtil$DiffResult.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */