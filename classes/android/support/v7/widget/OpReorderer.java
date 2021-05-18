package android.support.v7.widget;

import java.util.List;

class OpReorderer {
  final OpReorderer$Callback mCallback;
  
  public OpReorderer(OpReorderer$Callback paramOpReorderer$Callback) {
    this.mCallback = paramOpReorderer$Callback;
  }
  
  private int getLastMoveOutOfOrder(List<AdapterHelper$UpdateOp> paramList) {
    boolean bool = false;
    for (int i = paramList.size() - 1; i >= 0; i--) {
      if (((AdapterHelper$UpdateOp)paramList.get(i)).cmd == 8) {
        if (bool)
          return i; 
      } else {
        bool = true;
      } 
    } 
    return -1;
  }
  
  private void swapMoveAdd(List<AdapterHelper$UpdateOp> paramList, int paramInt1, AdapterHelper$UpdateOp paramAdapterHelper$UpdateOp1, int paramInt2, AdapterHelper$UpdateOp paramAdapterHelper$UpdateOp2) {
    byte b = 0;
    if (paramAdapterHelper$UpdateOp1.itemCount < paramAdapterHelper$UpdateOp2.positionStart)
      b = -1; 
    int i = b;
    if (paramAdapterHelper$UpdateOp1.positionStart < paramAdapterHelper$UpdateOp2.positionStart)
      i = b + 1; 
    if (paramAdapterHelper$UpdateOp2.positionStart <= paramAdapterHelper$UpdateOp1.positionStart)
      paramAdapterHelper$UpdateOp1.positionStart += paramAdapterHelper$UpdateOp2.itemCount; 
    if (paramAdapterHelper$UpdateOp2.positionStart <= paramAdapterHelper$UpdateOp1.itemCount)
      paramAdapterHelper$UpdateOp1.itemCount += paramAdapterHelper$UpdateOp2.itemCount; 
    paramAdapterHelper$UpdateOp2.positionStart = i + paramAdapterHelper$UpdateOp2.positionStart;
    paramList.set(paramInt1, paramAdapterHelper$UpdateOp2);
    paramList.set(paramInt2, paramAdapterHelper$UpdateOp1);
  }
  
  private void swapMoveOp(List<AdapterHelper$UpdateOp> paramList, int paramInt1, int paramInt2) {
    AdapterHelper$UpdateOp adapterHelper$UpdateOp1 = paramList.get(paramInt1);
    AdapterHelper$UpdateOp adapterHelper$UpdateOp2 = paramList.get(paramInt2);
    switch (adapterHelper$UpdateOp2.cmd) {
      default:
        return;
      case 2:
        swapMoveRemove(paramList, paramInt1, adapterHelper$UpdateOp1, paramInt2, adapterHelper$UpdateOp2);
        return;
      case 1:
        swapMoveAdd(paramList, paramInt1, adapterHelper$UpdateOp1, paramInt2, adapterHelper$UpdateOp2);
        return;
      case 4:
        break;
    } 
    swapMoveUpdate(paramList, paramInt1, adapterHelper$UpdateOp1, paramInt2, adapterHelper$UpdateOp2);
  }
  
  void reorderOps(List<AdapterHelper$UpdateOp> paramList) {
    while (true) {
      int i = getLastMoveOutOfOrder(paramList);
      if (i != -1) {
        swapMoveOp(paramList, i, i + 1);
        continue;
      } 
      break;
    } 
  }
  
  void swapMoveRemove(List<AdapterHelper$UpdateOp> paramList, int paramInt1, AdapterHelper$UpdateOp paramAdapterHelper$UpdateOp1, int paramInt2, AdapterHelper$UpdateOp paramAdapterHelper$UpdateOp2) {
    boolean bool1;
    AdapterHelper$UpdateOp adapterHelper$UpdateOp;
    boolean bool2 = false;
    if (paramAdapterHelper$UpdateOp1.positionStart < paramAdapterHelper$UpdateOp1.itemCount) {
      if (paramAdapterHelper$UpdateOp2.positionStart == paramAdapterHelper$UpdateOp1.positionStart && paramAdapterHelper$UpdateOp2.itemCount == paramAdapterHelper$UpdateOp1.itemCount - paramAdapterHelper$UpdateOp1.positionStart) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
    } else if (paramAdapterHelper$UpdateOp2.positionStart == paramAdapterHelper$UpdateOp1.itemCount + 1 && paramAdapterHelper$UpdateOp2.itemCount == paramAdapterHelper$UpdateOp1.positionStart - paramAdapterHelper$UpdateOp1.itemCount) {
      bool2 = true;
      bool1 = true;
    } else {
      bool1 = false;
      bool2 = true;
    } 
    if (paramAdapterHelper$UpdateOp1.itemCount < paramAdapterHelper$UpdateOp2.positionStart) {
      paramAdapterHelper$UpdateOp2.positionStart--;
    } else if (paramAdapterHelper$UpdateOp1.itemCount < paramAdapterHelper$UpdateOp2.positionStart + paramAdapterHelper$UpdateOp2.itemCount) {
      paramAdapterHelper$UpdateOp2.itemCount--;
      paramAdapterHelper$UpdateOp1.cmd = 2;
      paramAdapterHelper$UpdateOp1.itemCount = 1;
      if (paramAdapterHelper$UpdateOp2.itemCount == 0) {
        paramList.remove(paramInt2);
        this.mCallback.recycleUpdateOp(paramAdapterHelper$UpdateOp2);
        return;
      } 
      return;
    } 
    if (paramAdapterHelper$UpdateOp1.positionStart <= paramAdapterHelper$UpdateOp2.positionStart) {
      paramAdapterHelper$UpdateOp2.positionStart++;
      adapterHelper$UpdateOp = null;
    } else if (paramAdapterHelper$UpdateOp1.positionStart < paramAdapterHelper$UpdateOp2.positionStart + paramAdapterHelper$UpdateOp2.itemCount) {
      int i = paramAdapterHelper$UpdateOp2.positionStart;
      int j = paramAdapterHelper$UpdateOp2.itemCount;
      int k = paramAdapterHelper$UpdateOp1.positionStart;
      adapterHelper$UpdateOp = this.mCallback.obtainUpdateOp(2, paramAdapterHelper$UpdateOp1.positionStart + 1, i + j - k, null);
      paramAdapterHelper$UpdateOp2.itemCount = paramAdapterHelper$UpdateOp1.positionStart - paramAdapterHelper$UpdateOp2.positionStart;
    } else {
      adapterHelper$UpdateOp = null;
    } 
    if (bool1) {
      paramList.set(paramInt1, paramAdapterHelper$UpdateOp2);
      paramList.remove(paramInt2);
      this.mCallback.recycleUpdateOp(paramAdapterHelper$UpdateOp1);
      return;
    } 
    if (bool2) {
      if (adapterHelper$UpdateOp != null) {
        if (paramAdapterHelper$UpdateOp1.positionStart > adapterHelper$UpdateOp.positionStart)
          paramAdapterHelper$UpdateOp1.positionStart -= adapterHelper$UpdateOp.itemCount; 
        if (paramAdapterHelper$UpdateOp1.itemCount > adapterHelper$UpdateOp.positionStart)
          paramAdapterHelper$UpdateOp1.itemCount -= adapterHelper$UpdateOp.itemCount; 
      } 
      if (paramAdapterHelper$UpdateOp1.positionStart > paramAdapterHelper$UpdateOp2.positionStart)
        paramAdapterHelper$UpdateOp1.positionStart -= paramAdapterHelper$UpdateOp2.itemCount; 
      if (paramAdapterHelper$UpdateOp1.itemCount > paramAdapterHelper$UpdateOp2.positionStart)
        paramAdapterHelper$UpdateOp1.itemCount -= paramAdapterHelper$UpdateOp2.itemCount; 
    } else {
      if (adapterHelper$UpdateOp != null) {
        if (paramAdapterHelper$UpdateOp1.positionStart >= adapterHelper$UpdateOp.positionStart)
          paramAdapterHelper$UpdateOp1.positionStart -= adapterHelper$UpdateOp.itemCount; 
        if (paramAdapterHelper$UpdateOp1.itemCount >= adapterHelper$UpdateOp.positionStart)
          paramAdapterHelper$UpdateOp1.itemCount -= adapterHelper$UpdateOp.itemCount; 
      } 
      if (paramAdapterHelper$UpdateOp1.positionStart >= paramAdapterHelper$UpdateOp2.positionStart)
        paramAdapterHelper$UpdateOp1.positionStart -= paramAdapterHelper$UpdateOp2.itemCount; 
      if (paramAdapterHelper$UpdateOp1.itemCount >= paramAdapterHelper$UpdateOp2.positionStart)
        paramAdapterHelper$UpdateOp1.itemCount -= paramAdapterHelper$UpdateOp2.itemCount; 
    } 
    paramList.set(paramInt1, paramAdapterHelper$UpdateOp2);
    if (paramAdapterHelper$UpdateOp1.positionStart != paramAdapterHelper$UpdateOp1.itemCount) {
      paramList.set(paramInt2, paramAdapterHelper$UpdateOp1);
    } else {
      paramList.remove(paramInt2);
    } 
    if (adapterHelper$UpdateOp != null) {
      paramList.add(paramInt1, adapterHelper$UpdateOp);
      return;
    } 
  }
  
  void swapMoveUpdate(List<AdapterHelper$UpdateOp> paramList, int paramInt1, AdapterHelper$UpdateOp paramAdapterHelper$UpdateOp1, int paramInt2, AdapterHelper$UpdateOp paramAdapterHelper$UpdateOp2) {
    AdapterHelper$UpdateOp adapterHelper$UpdateOp1;
    AdapterHelper$UpdateOp adapterHelper$UpdateOp2 = null;
    if (paramAdapterHelper$UpdateOp1.itemCount < paramAdapterHelper$UpdateOp2.positionStart) {
      paramAdapterHelper$UpdateOp2.positionStart--;
      adapterHelper$UpdateOp1 = null;
    } else if (paramAdapterHelper$UpdateOp1.itemCount < paramAdapterHelper$UpdateOp2.positionStart + paramAdapterHelper$UpdateOp2.itemCount) {
      paramAdapterHelper$UpdateOp2.itemCount--;
      adapterHelper$UpdateOp1 = this.mCallback.obtainUpdateOp(4, paramAdapterHelper$UpdateOp1.positionStart, 1, paramAdapterHelper$UpdateOp2.payload);
    } else {
      adapterHelper$UpdateOp1 = null;
    } 
    if (paramAdapterHelper$UpdateOp1.positionStart <= paramAdapterHelper$UpdateOp2.positionStart) {
      paramAdapterHelper$UpdateOp2.positionStart++;
    } else if (paramAdapterHelper$UpdateOp1.positionStart < paramAdapterHelper$UpdateOp2.positionStart + paramAdapterHelper$UpdateOp2.itemCount) {
      int i = paramAdapterHelper$UpdateOp2.positionStart + paramAdapterHelper$UpdateOp2.itemCount - paramAdapterHelper$UpdateOp1.positionStart;
      adapterHelper$UpdateOp2 = this.mCallback.obtainUpdateOp(4, paramAdapterHelper$UpdateOp1.positionStart + 1, i, paramAdapterHelper$UpdateOp2.payload);
      paramAdapterHelper$UpdateOp2.itemCount -= i;
    } 
    paramList.set(paramInt2, paramAdapterHelper$UpdateOp1);
    if (paramAdapterHelper$UpdateOp2.itemCount > 0) {
      paramList.set(paramInt1, paramAdapterHelper$UpdateOp2);
    } else {
      paramList.remove(paramInt1);
      this.mCallback.recycleUpdateOp(paramAdapterHelper$UpdateOp2);
    } 
    if (adapterHelper$UpdateOp1 != null)
      paramList.add(paramInt1, adapterHelper$UpdateOp1); 
    if (adapterHelper$UpdateOp2 != null)
      paramList.add(paramInt1, adapterHelper$UpdateOp2); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\OpReorderer.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */