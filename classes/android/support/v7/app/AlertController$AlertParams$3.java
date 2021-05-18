package android.support.v7.app;

import android.content.DialogInterface;
import android.view.View;
import android.widget.AdapterView;

class AlertController$AlertParams$3 implements AdapterView.OnItemClickListener {
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    AlertController$AlertParams.this.mOnClickListener.onClick((DialogInterface)dialog.mDialog, paramInt);
    if (!AlertController$AlertParams.this.mIsSingleChoice)
      dialog.mDialog.dismiss(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AlertController$AlertParams$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */