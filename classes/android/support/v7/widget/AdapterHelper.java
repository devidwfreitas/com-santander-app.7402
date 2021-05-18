package android.support.v7.widget;

import android.support.v4.util.Pools;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

class AdapterHelper implements OpReorderer$Callback {
  private static final boolean DEBUG = false;
  
  static final int POSITION_TYPE_INVISIBLE = 0;
  
  static final int POSITION_TYPE_NEW_OR_LAID_OUT = 1;
  
  private static final String TAG = "AHT";
  
  final AdapterHelper$Callback mCallback;
  
  final boolean mDisableRecycler;
  
  private int mExistingUpdateTypes = 0;
  
  Runnable mOnItemProcessedCallback;
  
  final OpReorderer mOpReorderer;
  
  final ArrayList<AdapterHelper$UpdateOp> mPendingUpdates = new ArrayList<AdapterHelper$UpdateOp>();
  
  final ArrayList<AdapterHelper$UpdateOp> mPostponedList = new ArrayList<AdapterHelper$UpdateOp>();
  
  private Pools.Pool<AdapterHelper$UpdateOp> mUpdateOpPool = (Pools.Pool<AdapterHelper$UpdateOp>)new Pools.SimplePool(30);
  
  AdapterHelper(AdapterHelper$Callback paramAdapterHelper$Callback) {
    this(paramAdapterHelper$Callback, false);
  }
  
  AdapterHelper(AdapterHelper$Callback paramAdapterHelper$Callback, boolean paramBoolean) {
    this.mCallback = paramAdapterHelper$Callback;
    this.mDisableRecycler = paramBoolean;
    this.mOpReorderer = new OpReorderer(this);
  }
  
  private void applyAdd(AdapterHelper$UpdateOp paramAdapterHelper$UpdateOp) {
    postponeAndUpdateViewHolders(paramAdapterHelper$UpdateOp);
  }
  
  private void applyMove(AdapterHelper$UpdateOp paramAdapterHelper$UpdateOp) {
    postponeAndUpdateViewHolders(paramAdapterHelper$UpdateOp);
  }
  
  private void applyRemove(AdapterHelper$UpdateOp paramAdapterHelper$UpdateOp) {
    int m = paramAdapterHelper$UpdateOp.positionStart;
    int j = paramAdapterHelper$UpdateOp.positionStart + paramAdapterHelper$UpdateOp.itemCount;
    byte b = -1;
    int i = paramAdapterHelper$UpdateOp.positionStart;
    int k = 0;
    while (true) {
      if (i < j) {
        int n;
        if (this.mCallback.findViewHolder(i) != null || canFindInPreLayout(i)) {
          if (b == 0) {
            dispatchAndUpdateViewHolders(obtainUpdateOp(2, m, k, null));
            n = 1;
          } else {
            n = 0;
          } 
          b = 1;
        } else {
          if (b == 1) {
            postponeAndUpdateViewHolders(obtainUpdateOp(2, m, k, null));
            b = 1;
          } else {
            b = 0;
          } 
          boolean bool = false;
          n = b;
          b = bool;
        } 
        if (n != 0) {
          n = i - k;
          i = j - k;
          j = 1;
        } else {
          k++;
          n = i;
          i = j;
          j = k;
        } 
        k = j;
        j = i;
        i = n + 1;
        continue;
      } 
      AdapterHelper$UpdateOp adapterHelper$UpdateOp = paramAdapterHelper$UpdateOp;
      if (k != paramAdapterHelper$UpdateOp.itemCount) {
        recycleUpdateOp(paramAdapterHelper$UpdateOp);
        adapterHelper$UpdateOp = obtainUpdateOp(2, m, k, null);
      } 
      if (b == 0) {
        dispatchAndUpdateViewHolders(adapterHelper$UpdateOp);
        return;
      } 
      postponeAndUpdateViewHolders(adapterHelper$UpdateOp);
      return;
    } 
  }
  
  private void applyUpdate(AdapterHelper$UpdateOp paramAdapterHelper$UpdateOp) {
    int k = paramAdapterHelper$UpdateOp.positionStart;
    int n = paramAdapterHelper$UpdateOp.positionStart;
    int i1 = paramAdapterHelper$UpdateOp.itemCount;
    int i = paramAdapterHelper$UpdateOp.positionStart;
    int m = -1;
    int j;
    for (j = 0; i < n + i1; j = i2) {
      int i2;
      if (this.mCallback.findViewHolder(i) != null || canFindInPreLayout(i)) {
        i2 = j;
        int i3 = k;
        if (m == 0) {
          dispatchAndUpdateViewHolders(obtainUpdateOp(4, k, j, paramAdapterHelper$UpdateOp.payload));
          i2 = 0;
          i3 = i;
        } 
        k = i3;
        j = 1;
      } else {
        i2 = j;
        int i3 = k;
        if (m == 1) {
          postponeAndUpdateViewHolders(obtainUpdateOp(4, k, j, paramAdapterHelper$UpdateOp.payload));
          i2 = 0;
          i3 = i;
        } 
        k = i3;
        j = 0;
      } 
      i++;
      i2++;
      m = j;
    } 
    Object object = paramAdapterHelper$UpdateOp;
    if (j != paramAdapterHelper$UpdateOp.itemCount) {
      object = paramAdapterHelper$UpdateOp.payload;
      recycleUpdateOp(paramAdapterHelper$UpdateOp);
      object = obtainUpdateOp(4, k, j, object);
    } 
    if (m == 0) {
      dispatchAndUpdateViewHolders((AdapterHelper$UpdateOp)object);
      return;
    } 
    postponeAndUpdateViewHolders((AdapterHelper$UpdateOp)object);
  }
  
  private boolean canFindInPreLayout(int paramInt) {
    int j = this.mPostponedList.size();
    for (int i = 0; i < j; i++) {
      AdapterHelper$UpdateOp adapterHelper$UpdateOp = this.mPostponedList.get(i);
      if (adapterHelper$UpdateOp.cmd == 8) {
        if (findPositionOffset(adapterHelper$UpdateOp.itemCount, i + 1) == paramInt)
          return true; 
      } else if (adapterHelper$UpdateOp.cmd == 1) {
        int m = adapterHelper$UpdateOp.positionStart;
        int n = adapterHelper$UpdateOp.itemCount;
        for (int k = adapterHelper$UpdateOp.positionStart; k < m + n; k++) {
          if (findPositionOffset(k, i + 1) == paramInt)
            return true; 
        } 
      } 
    } 
    return false;
  }
  
  private void dispatchAndUpdateViewHolders(AdapterHelper$UpdateOp paramAdapterHelper$UpdateOp) {
    // Byte code:
    //   0: aload_1
    //   1: getfield cmd : I
    //   4: iconst_1
    //   5: if_icmpeq -> 17
    //   8: aload_1
    //   9: getfield cmd : I
    //   12: bipush #8
    //   14: if_icmpne -> 27
    //   17: new java/lang/IllegalArgumentException
    //   20: dup
    //   21: ldc 'should not dispatch add or move for pre layout'
    //   23: invokespecial <init> : (Ljava/lang/String;)V
    //   26: athrow
    //   27: aload_0
    //   28: aload_1
    //   29: getfield positionStart : I
    //   32: aload_1
    //   33: getfield cmd : I
    //   36: invokespecial updatePositionWithPostponed : (II)I
    //   39: istore #7
    //   41: aload_1
    //   42: getfield positionStart : I
    //   45: istore_3
    //   46: aload_1
    //   47: getfield cmd : I
    //   50: tableswitch default -> 76, 2 -> 195, 3 -> 76, 4 -> 103
    //   76: new java/lang/IllegalArgumentException
    //   79: dup
    //   80: new java/lang/StringBuilder
    //   83: dup
    //   84: invokespecial <init> : ()V
    //   87: ldc 'op should be remove or update.'
    //   89: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: aload_1
    //   93: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   96: invokevirtual toString : ()Ljava/lang/String;
    //   99: invokespecial <init> : (Ljava/lang/String;)V
    //   102: athrow
    //   103: iconst_1
    //   104: istore #4
    //   106: iconst_1
    //   107: istore #6
    //   109: iconst_1
    //   110: istore #5
    //   112: iload #5
    //   114: aload_1
    //   115: getfield itemCount : I
    //   118: if_icmpge -> 298
    //   121: aload_0
    //   122: aload_1
    //   123: getfield positionStart : I
    //   126: iload #4
    //   128: iload #5
    //   130: imul
    //   131: iadd
    //   132: aload_1
    //   133: getfield cmd : I
    //   136: invokespecial updatePositionWithPostponed : (II)I
    //   139: istore #8
    //   141: aload_1
    //   142: getfield cmd : I
    //   145: tableswitch default -> 172, 2 -> 220, 3 -> 172, 4 -> 201
    //   172: iconst_0
    //   173: istore_2
    //   174: iload_2
    //   175: ifeq -> 237
    //   178: iload #6
    //   180: iconst_1
    //   181: iadd
    //   182: istore_2
    //   183: iload #5
    //   185: iconst_1
    //   186: iadd
    //   187: istore #5
    //   189: iload_2
    //   190: istore #6
    //   192: goto -> 112
    //   195: iconst_0
    //   196: istore #4
    //   198: goto -> 106
    //   201: iload #8
    //   203: iload #7
    //   205: iconst_1
    //   206: iadd
    //   207: if_icmpne -> 215
    //   210: iconst_1
    //   211: istore_2
    //   212: goto -> 174
    //   215: iconst_0
    //   216: istore_2
    //   217: goto -> 174
    //   220: iload #8
    //   222: iload #7
    //   224: if_icmpne -> 232
    //   227: iconst_1
    //   228: istore_2
    //   229: goto -> 174
    //   232: iconst_0
    //   233: istore_2
    //   234: goto -> 174
    //   237: aload_0
    //   238: aload_1
    //   239: getfield cmd : I
    //   242: iload #7
    //   244: iload #6
    //   246: aload_1
    //   247: getfield payload : Ljava/lang/Object;
    //   250: invokevirtual obtainUpdateOp : (IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    //   253: astore #9
    //   255: aload_0
    //   256: aload #9
    //   258: iload_3
    //   259: invokevirtual dispatchFirstPassAndUpdateViewHolders : (Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V
    //   262: aload_0
    //   263: aload #9
    //   265: invokevirtual recycleUpdateOp : (Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    //   268: iload_3
    //   269: istore_2
    //   270: aload_1
    //   271: getfield cmd : I
    //   274: iconst_4
    //   275: if_icmpne -> 283
    //   278: iload_3
    //   279: iload #6
    //   281: iadd
    //   282: istore_2
    //   283: iconst_1
    //   284: istore #6
    //   286: iload #8
    //   288: istore #7
    //   290: iload_2
    //   291: istore_3
    //   292: iload #6
    //   294: istore_2
    //   295: goto -> 183
    //   298: aload_1
    //   299: getfield payload : Ljava/lang/Object;
    //   302: astore #9
    //   304: aload_0
    //   305: aload_1
    //   306: invokevirtual recycleUpdateOp : (Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    //   309: iload #6
    //   311: ifle -> 340
    //   314: aload_0
    //   315: aload_1
    //   316: getfield cmd : I
    //   319: iload #7
    //   321: iload #6
    //   323: aload #9
    //   325: invokevirtual obtainUpdateOp : (IIILjava/lang/Object;)Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    //   328: astore_1
    //   329: aload_0
    //   330: aload_1
    //   331: iload_3
    //   332: invokevirtual dispatchFirstPassAndUpdateViewHolders : (Landroid/support/v7/widget/AdapterHelper$UpdateOp;I)V
    //   335: aload_0
    //   336: aload_1
    //   337: invokevirtual recycleUpdateOp : (Landroid/support/v7/widget/AdapterHelper$UpdateOp;)V
    //   340: return
  }
  
  private void postponeAndUpdateViewHolders(AdapterHelper$UpdateOp paramAdapterHelper$UpdateOp) {
    this.mPostponedList.add(paramAdapterHelper$UpdateOp);
    switch (paramAdapterHelper$UpdateOp.cmd) {
      default:
        throw new IllegalArgumentException("Unknown update op type for " + paramAdapterHelper$UpdateOp);
      case 1:
        this.mCallback.offsetPositionsForAdd(paramAdapterHelper$UpdateOp.positionStart, paramAdapterHelper$UpdateOp.itemCount);
        return;
      case 8:
        this.mCallback.offsetPositionsForMove(paramAdapterHelper$UpdateOp.positionStart, paramAdapterHelper$UpdateOp.itemCount);
        return;
      case 2:
        this.mCallback.offsetPositionsForRemovingLaidOutOrNewView(paramAdapterHelper$UpdateOp.positionStart, paramAdapterHelper$UpdateOp.itemCount);
        return;
      case 4:
        break;
    } 
    this.mCallback.markViewHoldersUpdated(paramAdapterHelper$UpdateOp.positionStart, paramAdapterHelper$UpdateOp.itemCount, paramAdapterHelper$UpdateOp.payload);
  }
  
  private int updatePositionWithPostponed(int paramInt1, int paramInt2) {
    int i = this.mPostponedList.size() - 1;
    while (i >= 0) {
      int j;
      AdapterHelper$UpdateOp adapterHelper$UpdateOp = this.mPostponedList.get(i);
      if (adapterHelper$UpdateOp.cmd == 8) {
        int k;
        if (adapterHelper$UpdateOp.positionStart < adapterHelper$UpdateOp.itemCount) {
          k = adapterHelper$UpdateOp.positionStart;
          j = adapterHelper$UpdateOp.itemCount;
        } else {
          k = adapterHelper$UpdateOp.itemCount;
          j = adapterHelper$UpdateOp.positionStart;
        } 
        if (paramInt1 >= k && paramInt1 <= j) {
          if (k == adapterHelper$UpdateOp.positionStart) {
            if (paramInt2 == 1) {
              adapterHelper$UpdateOp.itemCount++;
            } else if (paramInt2 == 2) {
              adapterHelper$UpdateOp.itemCount--;
            } 
            paramInt1++;
          } else {
            if (paramInt2 == 1) {
              adapterHelper$UpdateOp.positionStart++;
            } else if (paramInt2 == 2) {
              adapterHelper$UpdateOp.positionStart--;
            } 
            paramInt1--;
          } 
        } else if (paramInt1 < adapterHelper$UpdateOp.positionStart) {
          if (paramInt2 == 1) {
            adapterHelper$UpdateOp.positionStart++;
            adapterHelper$UpdateOp.itemCount++;
          } else if (paramInt2 == 2) {
            adapterHelper$UpdateOp.positionStart--;
            adapterHelper$UpdateOp.itemCount--;
          } 
        } 
        j = paramInt1;
      } else if (adapterHelper$UpdateOp.positionStart <= paramInt1) {
        if (adapterHelper$UpdateOp.cmd == 1) {
          j = paramInt1 - adapterHelper$UpdateOp.itemCount;
        } else {
          j = paramInt1;
          if (adapterHelper$UpdateOp.cmd == 2)
            j = paramInt1 + adapterHelper$UpdateOp.itemCount; 
        } 
      } else if (paramInt2 == 1) {
        adapterHelper$UpdateOp.positionStart++;
        j = paramInt1;
      } else {
        j = paramInt1;
        if (paramInt2 == 2) {
          adapterHelper$UpdateOp.positionStart--;
          j = paramInt1;
        } 
      } 
      i--;
      paramInt1 = j;
    } 
    for (paramInt2 = this.mPostponedList.size() - 1; paramInt2 >= 0; paramInt2--) {
      AdapterHelper$UpdateOp adapterHelper$UpdateOp = this.mPostponedList.get(paramInt2);
      if (adapterHelper$UpdateOp.cmd == 8) {
        if (adapterHelper$UpdateOp.itemCount == adapterHelper$UpdateOp.positionStart || adapterHelper$UpdateOp.itemCount < 0) {
          this.mPostponedList.remove(paramInt2);
          recycleUpdateOp(adapterHelper$UpdateOp);
        } 
      } else if (adapterHelper$UpdateOp.itemCount <= 0) {
        this.mPostponedList.remove(paramInt2);
        recycleUpdateOp(adapterHelper$UpdateOp);
      } 
    } 
    return paramInt1;
  }
  
  AdapterHelper addUpdateOp(AdapterHelper$UpdateOp... paramVarArgs) {
    Collections.addAll(this.mPendingUpdates, paramVarArgs);
    return this;
  }
  
  public int applyPendingUpdatesToPosition(int paramInt) {
    int k = this.mPendingUpdates.size();
    int j = 0;
    int i = paramInt;
    while (true) {
      paramInt = i;
      if (j < k) {
        AdapterHelper$UpdateOp adapterHelper$UpdateOp = this.mPendingUpdates.get(j);
        switch (adapterHelper$UpdateOp.cmd) {
          case 1:
            paramInt = i;
            if (adapterHelper$UpdateOp.positionStart <= i)
              paramInt = i + adapterHelper$UpdateOp.itemCount; 
            j++;
            i = paramInt;
            break;
          case 2:
            paramInt = i;
            if (adapterHelper$UpdateOp.positionStart <= i) {
              if (adapterHelper$UpdateOp.positionStart + adapterHelper$UpdateOp.itemCount > i)
                return -1; 
              paramInt = i - adapterHelper$UpdateOp.itemCount;
            } 
            j++;
            i = paramInt;
            break;
          case 8:
            if (adapterHelper$UpdateOp.positionStart == i) {
              paramInt = adapterHelper$UpdateOp.itemCount;
            } else {
              int m = i;
              if (adapterHelper$UpdateOp.positionStart < i)
                m = i - 1; 
              paramInt = m;
              if (adapterHelper$UpdateOp.itemCount <= m)
                paramInt = m + 1; 
            } 
            j++;
            i = paramInt;
            break;
        } 
        continue;
      } 
      return paramInt;
    } 
  }
  
  void consumePostponedUpdates() {
    int j = this.mPostponedList.size();
    for (int i = 0; i < j; i++)
      this.mCallback.onDispatchSecondPass(this.mPostponedList.get(i)); 
    recycleUpdateOpsAndClearList(this.mPostponedList);
    this.mExistingUpdateTypes = 0;
  }
  
  void consumeUpdatesInOnePass() {
    consumePostponedUpdates();
    int j = this.mPendingUpdates.size();
    int i = 0;
    while (i < j) {
      AdapterHelper$UpdateOp adapterHelper$UpdateOp = this.mPendingUpdates.get(i);
      switch (adapterHelper$UpdateOp.cmd) {
        case 1:
          this.mCallback.onDispatchSecondPass(adapterHelper$UpdateOp);
          this.mCallback.offsetPositionsForAdd(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
          if (this.mOnItemProcessedCallback != null)
            this.mOnItemProcessedCallback.run(); 
          i++;
          break;
        case 2:
          this.mCallback.onDispatchSecondPass(adapterHelper$UpdateOp);
          this.mCallback.offsetPositionsForRemovingInvisible(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
          if (this.mOnItemProcessedCallback != null)
            this.mOnItemProcessedCallback.run(); 
          i++;
          break;
        case 4:
          this.mCallback.onDispatchSecondPass(adapterHelper$UpdateOp);
          this.mCallback.markViewHoldersUpdated(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount, adapterHelper$UpdateOp.payload);
          if (this.mOnItemProcessedCallback != null)
            this.mOnItemProcessedCallback.run(); 
          i++;
          break;
        case 8:
          this.mCallback.onDispatchSecondPass(adapterHelper$UpdateOp);
          this.mCallback.offsetPositionsForMove(adapterHelper$UpdateOp.positionStart, adapterHelper$UpdateOp.itemCount);
          if (this.mOnItemProcessedCallback != null)
            this.mOnItemProcessedCallback.run(); 
          i++;
          break;
      } 
    } 
    recycleUpdateOpsAndClearList(this.mPendingUpdates);
    this.mExistingUpdateTypes = 0;
  }
  
  void dispatchFirstPassAndUpdateViewHolders(AdapterHelper$UpdateOp paramAdapterHelper$UpdateOp, int paramInt) {
    this.mCallback.onDispatchFirstPass(paramAdapterHelper$UpdateOp);
    switch (paramAdapterHelper$UpdateOp.cmd) {
      default:
        throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
      case 2:
        this.mCallback.offsetPositionsForRemovingInvisible(paramInt, paramAdapterHelper$UpdateOp.itemCount);
        return;
      case 4:
        break;
    } 
    this.mCallback.markViewHoldersUpdated(paramInt, paramAdapterHelper$UpdateOp.itemCount, paramAdapterHelper$UpdateOp.payload);
  }
  
  int findPositionOffset(int paramInt) {
    return findPositionOffset(paramInt, 0);
  }
  
  int findPositionOffset(int paramInt1, int paramInt2) {
    int j = this.mPostponedList.size();
    int i = paramInt2;
    paramInt2 = paramInt1;
    while (true) {
      paramInt1 = paramInt2;
      if (i < j) {
        AdapterHelper$UpdateOp adapterHelper$UpdateOp = this.mPostponedList.get(i);
        if (adapterHelper$UpdateOp.cmd == 8) {
          if (adapterHelper$UpdateOp.positionStart == paramInt2) {
            paramInt1 = adapterHelper$UpdateOp.itemCount;
          } else {
            int k = paramInt2;
            if (adapterHelper$UpdateOp.positionStart < paramInt2)
              k = paramInt2 - 1; 
            paramInt1 = k;
            if (adapterHelper$UpdateOp.itemCount <= k)
              paramInt1 = k + 1; 
          } 
        } else {
          paramInt1 = paramInt2;
          if (adapterHelper$UpdateOp.positionStart <= paramInt2)
            if (adapterHelper$UpdateOp.cmd == 2) {
              if (paramInt2 < adapterHelper$UpdateOp.positionStart + adapterHelper$UpdateOp.itemCount)
                return -1; 
              paramInt1 = paramInt2 - adapterHelper$UpdateOp.itemCount;
            } else {
              paramInt1 = paramInt2;
              if (adapterHelper$UpdateOp.cmd == 1)
                paramInt1 = paramInt2 + adapterHelper$UpdateOp.itemCount; 
            }  
        } 
        i++;
        paramInt2 = paramInt1;
        continue;
      } 
      return paramInt1;
    } 
  }
  
  boolean hasAnyUpdateTypes(int paramInt) {
    return ((this.mExistingUpdateTypes & paramInt) != 0);
  }
  
  boolean hasPendingUpdates() {
    return (this.mPendingUpdates.size() > 0);
  }
  
  boolean hasUpdates() {
    return (!this.mPostponedList.isEmpty() && !this.mPendingUpdates.isEmpty());
  }
  
  public AdapterHelper$UpdateOp obtainUpdateOp(int paramInt1, int paramInt2, int paramInt3, Object paramObject) {
    AdapterHelper$UpdateOp adapterHelper$UpdateOp = (AdapterHelper$UpdateOp)this.mUpdateOpPool.acquire();
    if (adapterHelper$UpdateOp == null)
      return new AdapterHelper$UpdateOp(paramInt1, paramInt2, paramInt3, paramObject); 
    adapterHelper$UpdateOp.cmd = paramInt1;
    adapterHelper$UpdateOp.positionStart = paramInt2;
    adapterHelper$UpdateOp.itemCount = paramInt3;
    adapterHelper$UpdateOp.payload = paramObject;
    return adapterHelper$UpdateOp;
  }
  
  boolean onItemRangeChanged(int paramInt1, int paramInt2, Object paramObject) {
    boolean bool = true;
    if (paramInt2 < 1)
      return false; 
    this.mPendingUpdates.add(obtainUpdateOp(4, paramInt1, paramInt2, paramObject));
    this.mExistingUpdateTypes |= 0x4;
    if (this.mPendingUpdates.size() != 1)
      bool = false; 
    return bool;
  }
  
  boolean onItemRangeInserted(int paramInt1, int paramInt2) {
    boolean bool = true;
    if (paramInt2 < 1)
      return false; 
    this.mPendingUpdates.add(obtainUpdateOp(1, paramInt1, paramInt2, null));
    this.mExistingUpdateTypes |= 0x1;
    if (this.mPendingUpdates.size() != 1)
      bool = false; 
    return bool;
  }
  
  boolean onItemRangeMoved(int paramInt1, int paramInt2, int paramInt3) {
    boolean bool = true;
    if (paramInt1 == paramInt2)
      return false; 
    if (paramInt3 != 1)
      throw new IllegalArgumentException("Moving more than 1 item is not supported yet"); 
    this.mPendingUpdates.add(obtainUpdateOp(8, paramInt1, paramInt2, null));
    this.mExistingUpdateTypes |= 0x8;
    if (this.mPendingUpdates.size() != 1)
      bool = false; 
    return bool;
  }
  
  boolean onItemRangeRemoved(int paramInt1, int paramInt2) {
    boolean bool = true;
    if (paramInt2 < 1)
      return false; 
    this.mPendingUpdates.add(obtainUpdateOp(2, paramInt1, paramInt2, null));
    this.mExistingUpdateTypes |= 0x2;
    if (this.mPendingUpdates.size() != 1)
      bool = false; 
    return bool;
  }
  
  void preProcess() {
    this.mOpReorderer.reorderOps(this.mPendingUpdates);
    int j = this.mPendingUpdates.size();
    int i = 0;
    while (i < j) {
      AdapterHelper$UpdateOp adapterHelper$UpdateOp = this.mPendingUpdates.get(i);
      switch (adapterHelper$UpdateOp.cmd) {
        case 1:
          applyAdd(adapterHelper$UpdateOp);
          if (this.mOnItemProcessedCallback != null)
            this.mOnItemProcessedCallback.run(); 
          i++;
          break;
        case 2:
          applyRemove(adapterHelper$UpdateOp);
          if (this.mOnItemProcessedCallback != null)
            this.mOnItemProcessedCallback.run(); 
          i++;
          break;
        case 4:
          applyUpdate(adapterHelper$UpdateOp);
          if (this.mOnItemProcessedCallback != null)
            this.mOnItemProcessedCallback.run(); 
          i++;
          break;
        case 8:
          applyMove(adapterHelper$UpdateOp);
          if (this.mOnItemProcessedCallback != null)
            this.mOnItemProcessedCallback.run(); 
          i++;
          break;
      } 
    } 
    this.mPendingUpdates.clear();
  }
  
  public void recycleUpdateOp(AdapterHelper$UpdateOp paramAdapterHelper$UpdateOp) {
    if (!this.mDisableRecycler) {
      paramAdapterHelper$UpdateOp.payload = null;
      this.mUpdateOpPool.release(paramAdapterHelper$UpdateOp);
    } 
  }
  
  void recycleUpdateOpsAndClearList(List<AdapterHelper$UpdateOp> paramList) {
    int j = paramList.size();
    for (int i = 0; i < j; i++)
      recycleUpdateOp(paramList.get(i)); 
    paramList.clear();
  }
  
  void reset() {
    recycleUpdateOpsAndClearList(this.mPendingUpdates);
    recycleUpdateOpsAndClearList(this.mPostponedList);
    this.mExistingUpdateTypes = 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\AdapterHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */