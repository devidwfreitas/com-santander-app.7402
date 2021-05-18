package android.support.v7.util;

import android.support.annotation.UiThread;

public abstract class AsyncListUtil$ViewCallback {
  public static final int HINT_SCROLL_ASC = 2;
  
  public static final int HINT_SCROLL_DESC = 1;
  
  public static final int HINT_SCROLL_NONE = 0;
  
  @UiThread
  public void extendRangeInto(int[] paramArrayOfint1, int[] paramArrayOfint2, int paramInt) {
    int i = paramArrayOfint1[1] - paramArrayOfint1[0] + 1;
    int j = i / 2;
    int m = paramArrayOfint1[0];
    if (paramInt == 1) {
      k = i;
    } else {
      k = j;
    } 
    paramArrayOfint2[0] = m - k;
    int k = paramArrayOfint1[1];
    if (paramInt != 2)
      i = j; 
    paramArrayOfint2[1] = k + i;
  }
  
  @UiThread
  public abstract void getItemRangeInto(int[] paramArrayOfint);
  
  @UiThread
  public abstract void onDataRefresh();
  
  @UiThread
  public abstract void onItemLoaded(int paramInt);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\AsyncListUtil$ViewCallback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */