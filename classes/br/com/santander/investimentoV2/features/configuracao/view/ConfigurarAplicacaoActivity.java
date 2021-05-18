package br.com.santander.investimentoV2.features.configuracao.view;

import ack;
import android.os.Bundle;
import android.support.annotation.Nullable;
import lc;
import pc;

public class ConfigurarAplicacaoActivity extends ack {
  private pc a;
  
  public void onBackPressed() {
    this.a.d();
  }
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(lc.activity_configurar_aplicacao);
    getWindow().setSoftInputMode(2);
    this.a = new pc(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\investimentoV2\features\configuracao\view\ConfigurarAplicacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */