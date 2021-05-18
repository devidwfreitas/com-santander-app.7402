package android.support.v7.widget;

import android.view.View;
import android.widget.AdapterView;

class AppCompatSpinner$DropdownPopup$1 implements AdapterView.OnItemClickListener {
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    this.this$1.this$0.setSelection(paramInt);
    if (this.this$1.this$0.getOnItemClickListener() != null)
      this.this$1.this$0.performItemClick(paramView, paramInt, AppCompatSpinner$DropdownPopup.this.mAdapter.getItemId(paramInt)); 
    AppCompatSpinner$DropdownPopup.this.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\AppCompatSpinner$DropdownPopup$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */