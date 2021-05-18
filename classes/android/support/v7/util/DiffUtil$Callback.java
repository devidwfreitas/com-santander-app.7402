package android.support.v7.util;

import android.support.annotation.Nullable;

public abstract class DiffUtil$Callback {
  public abstract boolean areContentsTheSame(int paramInt1, int paramInt2);
  
  public abstract boolean areItemsTheSame(int paramInt1, int paramInt2);
  
  @Nullable
  public Object getChangePayload(int paramInt1, int paramInt2) {
    return null;
  }
  
  public abstract int getNewListSize();
  
  public abstract int getOldListSize();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v\\util\DiffUtil$Callback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */