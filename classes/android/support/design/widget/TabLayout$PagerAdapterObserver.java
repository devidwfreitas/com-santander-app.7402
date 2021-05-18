package android.support.design.widget;

import android.database.DataSetObserver;

class TabLayout$PagerAdapterObserver extends DataSetObserver {
  public void onChanged() {
    TabLayout.this.populateFromPagerAdapter();
  }
  
  public void onInvalidated() {
    TabLayout.this.populateFromPagerAdapter();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\TabLayout$PagerAdapterObserver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */