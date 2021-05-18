package com.santander.app.meuperfil.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import goj;
import gpu;
import myj;

public class MeuPerfilSolicitarCartaoComprovante extends goj implements View.OnClickListener {
  private TextView a;
  
  private TextView b;
  
  private TextView c;
  
  private TextView f;
  
  private Button g;
  
  private Button w;
  
  private View x;
  
  public String a() {
    return a(2131756230);
  }
  
  public void onClick(View paramView) {
    if (paramView == this.g) {
      myj.a((Activity)this, "Solicitação do Cartão de Segurança", "", a());
      return;
    } 
    if (paramView == this.w) {
      startActivity(new Intent((Context)this, MeuPerfilActivity.class));
      return;
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969373);
    this.a = (TextView)findViewById(2131756829);
    this.b = (TextView)findViewById(2131759090);
    this.c = (TextView)findViewById(2131757283);
    this.f = (TextView)findViewById(2131759091);
    this.g = (Button)findViewById(2131756354);
    this.w = (Button)findViewById(2131759092);
    this.g.setOnClickListener(this);
    this.w.setOnClickListener(this);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131298153));
    Bundle bundle = getIntent().getExtras();
    if (bundle != null) {
      if (bundle.getString("titulo") != null)
        this.a.setText(bundle.getString("titulo")); 
      if (bundle.getString("subTitulo") != null)
        this.b.setText(bundle.getString("subTitulo")); 
      if (bundle.getString("referOper") != null)
        this.c.setText(bundle.getString("referOper")); 
      if (bundle.getString("dataHora") != null)
        this.f.setText(bundle.getString("dataHora")); 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\meuperfil\activity\MeuPerfilSolicitarCartaoComprovante.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */