package com.ca.mdo;

import android.app.Fragment;

public class CaMDOFragmentImpl {
  static void onPause(Fragment paramFragment) {
    CAMobileDevOps.fragmentPause(paramFragment);
  }
  
  static void onResume(Fragment paramFragment) {
    CAMobileDevOps.fragmentResume(paramFragment);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\CaMDOFragmentImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */