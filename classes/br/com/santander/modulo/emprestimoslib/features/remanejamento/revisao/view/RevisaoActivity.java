package br.com.santander.modulo.emprestimoslib.features.remanejamento.revisao.view;

import agi;
import aix;
import ajw;
import aka;
import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import java.util.List;

public class RevisaoActivity extends aka {
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(agi.activity_remanejamento_revisao);
    if (getIntent().getSerializableExtra("contrato") != null) {
      new aix((Activity)this, (ajw)getIntent().getSerializableExtra("contrato"));
      return;
    } 
    if (getIntent().getSerializableExtra("contratosList") != null) {
      new aix((Activity)this, (List)getIntent().getSerializableExtra("contratosList"));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\modulo\emprestimoslib\features\remanejamento\revisao\view\RevisaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */