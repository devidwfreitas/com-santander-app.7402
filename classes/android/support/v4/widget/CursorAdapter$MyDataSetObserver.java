package android.support.v4.widget;

import android.database.DataSetObserver;

class CursorAdapter$MyDataSetObserver extends DataSetObserver {
  public void onChanged() {
    CursorAdapter.this.mDataValid = true;
    CursorAdapter.this.notifyDataSetChanged();
  }
  
  public void onInvalidated() {
    CursorAdapter.this.mDataValid = false;
    CursorAdapter.this.notifyDataSetInvalidated();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\CursorAdapter$MyDataSetObserver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */