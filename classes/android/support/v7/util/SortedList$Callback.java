package android.support.v7.util;

import java.util.Comparator;

public abstract class SortedList$Callback<T2> implements ListUpdateCallback, Comparator<T2> {
  public abstract boolean areContentsTheSame(T2 paramT21, T2 paramT22);
  
  public abstract boolean areItemsTheSame(T2 paramT21, T2 paramT22);
  
  public abstract int compare(T2 paramT21, T2 paramT22);
  
  public abstract void onChanged(int paramInt1, int paramInt2);
  
  public void onChanged(int paramInt1, int paramInt2, Object paramObject) {
    onChanged(paramInt1, paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\SortedList$Callback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */