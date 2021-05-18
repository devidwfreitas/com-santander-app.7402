package android.support.v4.widget;

import android.graphics.Rect;
import java.util.Comparator;

class FocusStrategy$SequentialComparator<T> implements Comparator<T> {
  private final FocusStrategy$BoundsAdapter<T> mAdapter;
  
  private final boolean mIsLayoutRtl;
  
  private final Rect mTemp1 = new Rect();
  
  private final Rect mTemp2 = new Rect();
  
  FocusStrategy$SequentialComparator(boolean paramBoolean, FocusStrategy$BoundsAdapter<T> paramFocusStrategy$BoundsAdapter) {
    this.mIsLayoutRtl = paramBoolean;
    this.mAdapter = paramFocusStrategy$BoundsAdapter;
  }
  
  public int compare(T paramT1, T paramT2) {
    boolean bool = true;
    byte b = 1;
    Rect rect1 = this.mTemp1;
    Rect rect2 = this.mTemp2;
    this.mAdapter.obtainBounds(paramT1, rect1);
    this.mAdapter.obtainBounds(paramT2, rect2);
    if (rect1.top >= rect2.top) {
      if (rect1.top > rect2.top)
        return 1; 
      if (rect1.left < rect2.left) {
        if (!this.mIsLayoutRtl)
          b = -1; 
        return b;
      } 
      if (rect1.left > rect2.left)
        return !this.mIsLayoutRtl ? 1 : -1; 
      if (rect1.bottom >= rect2.bottom)
        return (rect1.bottom > rect2.bottom) ? 1 : ((rect1.right < rect2.right) ? (this.mIsLayoutRtl ? bool : -1) : ((rect1.right > rect2.right) ? (!this.mIsLayoutRtl ? 1 : -1) : 0)); 
    } 
    return -1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\FocusStrategy$SequentialComparator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */