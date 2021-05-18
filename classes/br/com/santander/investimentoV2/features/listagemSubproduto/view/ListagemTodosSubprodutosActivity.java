package br.com.santander.investimentoV2.features.listagemSubproduto.view;

import ack;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.util.Log;
import eju;
import lc;
import uz;
import vv;

public class ListagemTodosSubprodutosActivity extends ack {
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(lc.activity_listagem_subprodutos_familia);
    try {
      new vv(this, (uz)(new eju()).j().a(getIntent().getExtras().getString("family"), uz.class));
      return;
    } catch (Exception exception) {
      Log.e(getClass().getSimpleName(), exception.toString());
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\investimentoV2\features\listagemSubproduto\view\ListagemTodosSubprodutosActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */