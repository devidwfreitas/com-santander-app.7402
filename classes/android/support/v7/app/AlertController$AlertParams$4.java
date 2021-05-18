package android.support.v7.app;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;

class AlertController$AlertParams$4 implements AdapterView.OnItemClickListener {
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    if (AlertController$AlertParams.this.mCheckedItems != null)
      AlertController$AlertParams.this.mCheckedItems[paramInt] = listView.isItemChecked(paramInt); 
    AlertController$AlertParams.this.mOnCheckboxClickListener.onClick((DialogInterface)dialog.mDialog, paramInt, listView.isItemChecked(paramInt));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AlertController$AlertParams$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */