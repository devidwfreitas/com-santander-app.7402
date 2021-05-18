package android.support.v7.widget;

import android.database.DataSetObserver;

class ActivityChooserView$1 extends DataSetObserver {
  public void onChanged() {
    super.onChanged();
    ActivityChooserView.this.mAdapter.notifyDataSetChanged();
  }
  
  public void onInvalidated() {
    super.onInvalidated();
    ActivityChooserView.this.mAdapter.notifyDataSetInvalidated();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\ActivityChooserView$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */