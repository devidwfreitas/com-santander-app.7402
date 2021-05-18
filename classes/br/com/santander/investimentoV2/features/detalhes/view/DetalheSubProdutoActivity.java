package br.com.santander.investimentoV2.features.detalhes.view;

import ack;
import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import lc;
import rz;

public class DetalheSubProdutoActivity extends ack {
  private rz a;
  
  public void onBackPressed() {
    super.onBackPressed();
    finish();
  }
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(lc.activity_det_subproduto);
    this.a = new rz((Activity)this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\investimentoV2\features\detalhes\view\DetalheSubProdutoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */