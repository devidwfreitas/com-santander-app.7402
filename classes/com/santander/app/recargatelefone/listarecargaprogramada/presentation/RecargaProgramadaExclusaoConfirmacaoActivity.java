package com.santander.app.recargatelefone.listarecargaprogramada.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import android.widget.RadioGroup;
import android.widget.TextView;
import com.santander.app.recargatelefone.recargavalidacao.presentation.RecargaValidacaoActivity;
import gpu;
import grs;
import java.io.Serializable;
import kgj;
import kgw;
import khc;

public class RecargaProgramadaExclusaoConfirmacaoActivity extends grs implements kgw {
  private final String a = "RecargaProgramadaExclusaoConfirmacaoActivity";
  
  private Button b;
  
  private Button c;
  
  private RadioGroup d;
  
  private TextView e;
  
  public void a() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131298438));
  }
  
  public void a(String paramString) {
    this.e.setText("Sua programação será excluída, mas há uma recarga agendada para " + paramString);
  }
  
  public void a(kgj paramkgj) {
    int i = this.d.getCheckedRadioButtonId();
    View view = this.d.findViewById(i);
    if (this.d.indexOfChild(view) == 0) {
      paramkgj.m("false");
    } else {
      paramkgj.m("true");
    } 
    Intent intent = new Intent((Context)this, RecargaValidacaoActivity.class);
    intent.putExtra("data", (Serializable)paramkgj);
    intent.putExtra("tipo_recarga", 3);
    startActivity(intent);
  }
  
  public void b() {
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969424);
    a();
    khc khc = new khc(this, getIntent());
    this.b = (Button)findViewById(2131759275);
    this.c = (Button)findViewById(2131759276);
    this.d = (RadioGroup)findViewById(2131759272);
    this.e = (TextView)findViewById(2131759271);
    this.b.setOnClickListener(khc.b());
    this.c.setOnClickListener(khc.c());
    khc.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\recargatelefone\listarecargaprogramada\presentation\RecargaProgramadaExclusaoConfirmacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */