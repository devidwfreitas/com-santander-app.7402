package br.com.santander.modulo.emprestimoslib.features.gestao.main.view;

import afw;
import agi;
import ahe;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;

public class CreditoMainActivity extends FragmentActivity {
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(agi.activity_credito_main);
    if (getIntent().getExtras() != null && getIntent().getExtras().getBoolean("openCP", false)) {
      afw.a().c();
      finish();
    } 
    new ahe(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\modulo\emprestimoslib\features\gestao\main\view\CreditoMainActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */