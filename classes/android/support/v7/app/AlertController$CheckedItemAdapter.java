package android.support.v7.app;

import android.content.Context;
import android.widget.ArrayAdapter;

class AlertController$CheckedItemAdapter extends ArrayAdapter<CharSequence> {
  public AlertController$CheckedItemAdapter(Context paramContext, int paramInt1, int paramInt2, CharSequence[] paramArrayOfCharSequence) {
    super(paramContext, paramInt1, paramInt2, (Object[])paramArrayOfCharSequence);
  }
  
  public long getItemId(int paramInt) {
    return paramInt;
  }
  
  public boolean hasStableIds() {
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AlertController$CheckedItemAdapter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */