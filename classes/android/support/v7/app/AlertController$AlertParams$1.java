package android.support.v7.app;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;

class AlertController$AlertParams$1 extends ArrayAdapter<CharSequence> {
  AlertController$AlertParams$1(Context paramContext, int paramInt1, int paramInt2, CharSequence[] paramArrayOfCharSequence) {
    super(paramContext, paramInt1, paramInt2, (Object[])paramArrayOfCharSequence);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    paramView = super.getView(paramInt, paramView, paramViewGroup);
    if (AlertController$AlertParams.this.mCheckedItems != null && AlertController$AlertParams.this.mCheckedItems[paramInt])
      listView.setItemChecked(paramInt, true); 
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AlertController$AlertParams$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */