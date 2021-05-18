package br.com.santander.investimentoV2.features.listagemSubproduto.view;

import ack;
import android.os.Bundle;
import android.support.annotation.Nullable;
import lc;
import vp;

public class ListagemSubprodutoActivity extends ack {
  private vp a;
  
  public void onBackPressed() {
    super.onBackPressed();
    finish();
  }
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(lc.activity_listagem_subproduto);
    this.a = new vp(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\investimentoV2\features\listagemSubproduto\view\ListagemSubprodutoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */