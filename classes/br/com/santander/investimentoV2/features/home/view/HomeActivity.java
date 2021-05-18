package br.com.santander.investimentoV2.features.home.view;

import ack;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import la;
import lc;
import ts;

public class HomeActivity extends ack {
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(lc.activity_home);
    FragmentManager fragmentManager = getSupportFragmentManager();
    if (fragmentManager.findFragmentById(la.inv2_home_activity) == null) {
      ts ts = new ts();
      FragmentTransaction fragmentTransaction = fragmentManager.beginTransaction();
      fragmentTransaction.add(la.inv2_home_activity, (Fragment)ts);
      fragmentTransaction.commit();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\investimentoV2\features\home\view\HomeActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */