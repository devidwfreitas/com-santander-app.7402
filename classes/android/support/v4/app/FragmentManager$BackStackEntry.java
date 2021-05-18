package android.support.v4.app;

import android.support.annotation.StringRes;

public interface FragmentManager$BackStackEntry {
  CharSequence getBreadCrumbShortTitle();
  
  @StringRes
  int getBreadCrumbShortTitleRes();
  
  CharSequence getBreadCrumbTitle();
  
  @StringRes
  int getBreadCrumbTitleRes();
  
  int getId();
  
  String getName();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\FragmentManager$BackStackEntry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */