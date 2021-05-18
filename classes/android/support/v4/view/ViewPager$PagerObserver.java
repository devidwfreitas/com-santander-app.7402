package android.support.v4.view;

import android.database.DataSetObserver;

class ViewPager$PagerObserver extends DataSetObserver {
  public void onChanged() {
    ViewPager.this.dataSetChanged();
  }
  
  public void onInvalidated() {
    ViewPager.this.dataSetChanged();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewPager$PagerObserver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */