package br.com.santander.modulo.emprestimoslib.features.gestao.contratoslist.view;

import agi;
import ago;
import ags;
import ajn;
import aka;
import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import ejm;
import java.util.List;

public class ContratosListActivity extends aka {
  private List<ajn> a;
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(agi.activity_contracts_list);
    String str = getIntent().getStringExtra("list");
    this.a = (List<ajn>)(new ejm()).a(str, (new ago(this)).getType());
    str = (String)getIntent().getSerializableExtra("titulo");
    new ags((Activity)this, this.a, str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\modulo\emprestimoslib\features\gestao\contratoslist\view\ContratosListActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */