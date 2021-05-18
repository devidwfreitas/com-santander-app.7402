package android.support.v7.widget;

import android.view.View;
import android.widget.AdapterView;

class ListPopupWindow$3 implements AdapterView.OnItemSelectedListener {
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    if (paramInt != -1) {
      DropDownListView dropDownListView = ListPopupWindow.this.mDropDownList;
      if (dropDownListView != null)
        dropDownListView.setListSelectionHidden(false); 
    } 
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ListPopupWindow$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */