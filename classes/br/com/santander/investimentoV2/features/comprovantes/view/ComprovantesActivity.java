package br.com.santander.investimentoV2.features.comprovantes.view;

import acg;
import ack;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import java.util.ArrayList;
import lc;
import od;
import zs;

public class ComprovantesActivity extends ack {
  private od a;
  
  public void onBackPressed() {
    acg acg = (acg)a();
    if (acg.v() != null && !acg.v().isEmpty()) {
      zs.a().e((Context)this, (acg)a());
      return;
    } 
    new ArrayList();
    zs.a().c((Context)this);
  }
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(lc.activity_comprovantes_v1_5);
    this.a = new od(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\investimentoV2\features\comprovantes\view\ComprovantesActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */