package br.com.santander.investimentoV2.features.carrinho.view;

import ack;
import android.os.Bundle;
import android.support.annotation.Nullable;
import lc;
import mr;

public class CarrinhoActivity extends ack {
  private mr a;
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(lc.activity_carrinho);
    this.a = new mr(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\investimentoV2\features\carrinho\view\CarrinhoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */