package android.support.v7.widget;

import android.database.DataSetObserver;

class ListPopupWindow$PopupDataSetObserver extends DataSetObserver {
  public void onChanged() {
    if (ListPopupWindow.this.isShowing())
      ListPopupWindow.this.show(); 
  }
  
  public void onInvalidated() {
    ListPopupWindow.this.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ListPopupWindow$PopupDataSetObserver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */