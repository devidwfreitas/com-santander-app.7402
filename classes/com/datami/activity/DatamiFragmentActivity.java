package com.datami.activity;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import com.datami.smi.SmiSdk;

public class DatamiFragmentActivity extends FragmentActivity {
  protected void onPause() {
    super.onPause();
    SmiSdk.appVisibility((Context)this, false);
  }
  
  protected void onResume() {
    super.onResume();
    SmiSdk.appVisibility((Context)this, true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\activity\DatamiFragmentActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */