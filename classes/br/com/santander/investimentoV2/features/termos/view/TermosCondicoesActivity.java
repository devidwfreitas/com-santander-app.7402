package br.com.santander.investimentoV2.features.termos.view;

import ace;
import ack;
import android.os.Bundle;
import android.support.annotation.Nullable;
import eju;
import lc;
import yi;

public class TermosCondicoesActivity extends ack {
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(lc.activity_termo_aceite);
    String str = getIntent().getExtras().getString("aplicacaoEntity");
    new yi(this, (ace)(new eju()).j().a(str, ace.class));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\investimentoV2\features\termos\view\TermosCondicoesActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */