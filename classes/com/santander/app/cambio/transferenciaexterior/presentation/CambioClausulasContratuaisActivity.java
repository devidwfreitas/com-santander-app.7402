package com.santander.app.cambio.transferenciaexterior.presentation;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.CompoundButton;
import com.santander.app.components.view.SantanderButtonView;
import com.santander.app.components.view.SantanderCheckBox;
import frq;
import gaq;
import gcc;
import gdg;
import gdh;
import gpu;
import grs;
import java.io.Serializable;

public class CambioClausulasContratuaisActivity extends grs implements View.OnClickListener, CompoundButton.OnCheckedChangeListener, gcc {
  private SantanderCheckBox a;
  
  private SantanderButtonView b;
  
  private gdg c;
  
  private gaq d;
  
  private void b() {
    this.d = (gaq)getIntent().getExtras().getSerializable("cambio_dados");
    this.b = (SantanderButtonView)findViewById(2131757742);
    this.b.setOnClickListener(this);
    this.a = (SantanderCheckBox)findViewById(2131757741);
    this.a.setOnCheckedChangeListener(this);
    this.c = (gdg)new gdh(this);
  }
  
  public void a() {
    setResult(-1);
    Intent intent = new Intent((Context)this, CambioConfirmacaoActivity.class);
    intent.putExtra("cambio_dados", (Serializable)this.d);
    startActivity(intent);
  }
  
  public void onBackPressed() {
    setResult(0);
    super.onBackPressed();
  }
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
    String str;
    if (paramBoolean) {
      this.b.setVisibility(0);
    } else {
      this.b.setVisibility(8);
    } 
    if (paramBoolean) {
      str = "Sim";
    } else {
      str = "Nao";
    } 
    frq.d("ServicosInternacionais_Cambio_ClausulasContratuais_LiEConcordoComAsClausulasContratuais_Acao", str);
  }
  
  public void onClick(View paramView) {
    switch (paramView.getId()) {
      default:
        return;
      case 2131757742:
        break;
    } 
    frq.d("ServicosInternacionais_Cambio_ClausulasContratuais_Acao", "Confirmar");
    this.c.a();
  }
  
  public void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968620);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131296767));
    b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\cambio\transferenciaexterior\presentation\CambioClausulasContratuaisActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */