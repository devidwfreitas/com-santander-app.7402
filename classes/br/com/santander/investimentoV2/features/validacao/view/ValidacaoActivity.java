package br.com.santander.investimentoV2.features.validacao.view;

import ack;
import android.os.Bundle;
import lc;
import zp;

public class ValidacaoActivity extends ack {
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(lc.activity_validacao);
    new zp(this, getSupportFragmentManager());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\investimentoV2\features\validacao\view\ValidacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */