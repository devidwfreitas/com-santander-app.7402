package br.com.santander.investimentoV2.features.resgate.view;

import ack;
import android.os.Bundle;
import android.support.annotation.Nullable;
import lc;
import xq;

public class ResgateActivity extends ack {
  private xq a;
  
  public void onBackPressed() {
    finish();
  }
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(lc.activity_resgate);
    this.a = new xq(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\investimentoV2\features\resgate\view\ResgateActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */