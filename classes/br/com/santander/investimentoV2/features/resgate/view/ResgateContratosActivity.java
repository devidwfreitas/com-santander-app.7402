package br.com.santander.investimentoV2.features.resgate.view;

import ack;
import android.os.Bundle;
import android.support.annotation.Nullable;
import eju;
import lc;
import sy;
import xn;

public class ResgateContratosActivity extends ack {
  private xn a;
  
  public void onBackPressed() {
    finish();
  }
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(lc.activity_resgate_contrato);
    paramBundle = getIntent().getExtras();
    this.a = new xn(this, (sy)(new eju()).j().a(paramBundle.getString("family"), sy.class));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\investimentoV2\features\resgate\view\ResgateContratosActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */