package br.com.santander.modulo.emprestimoslib.features.remanejamento.ajustarlimite.view;

import agi;
import aig;
import ajw;
import aka;
import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;

public class AjustarLimiteActivity extends aka {
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(agi.activity_remanejamento_ajustar_limite);
    ajw ajw1 = (ajw)getIntent().getSerializableExtra("contrato");
    ajw ajw2 = (ajw)getIntent().getSerializableExtra("compartilhado");
    if (ajw2 != null) {
      new aig((Activity)this, ajw1, ajw2);
      return;
    } 
    new aig((Activity)this, ajw1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\modulo\emprestimoslib\features\remanejamento\ajustarlimite\view\AjustarLimiteActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */