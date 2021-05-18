package br.com.santander.modulo.emprestimoslib.features.gestao.detalhescontrato.view;

import agi;
import agu;
import ajn;
import aka;
import android.os.Bundle;
import android.support.annotation.Nullable;

public class DetalhesContratoActivity extends aka {
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(agi.activity_detalhe_contrato);
    new agu(this, (ajn)getIntent().getSerializableExtra("contrato"));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\modulo\emprestimoslib\features\gestao\detalhescontrato\view\DetalhesContratoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */