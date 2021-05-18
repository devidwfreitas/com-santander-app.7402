package android.support.v7.widget;

import android.support.annotation.Nullable;
import android.support.v4.util.Pools;

class ViewInfoStore$InfoRecord {
  static final int FLAG_APPEAR = 2;
  
  static final int FLAG_APPEAR_AND_DISAPPEAR = 3;
  
  static final int FLAG_APPEAR_PRE_AND_POST = 14;
  
  static final int FLAG_DISAPPEARED = 1;
  
  static final int FLAG_POST = 8;
  
  static final int FLAG_PRE = 4;
  
  static final int FLAG_PRE_AND_POST = 12;
  
  static Pools.Pool<ViewInfoStore$InfoRecord> sPool = (Pools.Pool<ViewInfoStore$InfoRecord>)new Pools.SimplePool(20);
  
  int flags;
  
  @Nullable
  RecyclerView$ItemAnimator$ItemHolderInfo postInfo;
  
  @Nullable
  RecyclerView$ItemAnimator$ItemHolderInfo preInfo;
  
  static void drainCache() {
    do {
    
    } while (sPool.acquire() != null);
  }
  
  static ViewInfoStore$InfoRecord obtain() {
    ViewInfoStore$InfoRecord viewInfoStore$InfoRecord2 = (ViewInfoStore$InfoRecord)sPool.acquire();
    ViewInfoStore$InfoRecord viewInfoStore$InfoRecord1 = viewInfoStore$InfoRecord2;
    if (viewInfoStore$InfoRecord2 == null)
      viewInfoStore$InfoRecord1 = new ViewInfoStore$InfoRecord(); 
    return viewInfoStore$InfoRecord1;
  }
  
  static void recycle(ViewInfoStore$InfoRecord paramViewInfoStore$InfoRecord) {
    paramViewInfoStore$InfoRecord.flags = 0;
    paramViewInfoStore$InfoRecord.preInfo = null;
    paramViewInfoStore$InfoRecord.postInfo = null;
    sPool.release(paramViewInfoStore$InfoRecord);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ViewInfoStore$InfoRecord.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */