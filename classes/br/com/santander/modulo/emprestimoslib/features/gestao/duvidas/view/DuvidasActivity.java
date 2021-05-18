package br.com.santander.modulo.emprestimoslib.features.gestao.duvidas.view;

import agi;
import agv;
import aka;
import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;

public class DuvidasActivity extends aka {
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(agi.activity_duvidas_categoria);
    new agv((Activity)this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\modulo\emprestimoslib\features\gestao\duvidas\view\DuvidasActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */