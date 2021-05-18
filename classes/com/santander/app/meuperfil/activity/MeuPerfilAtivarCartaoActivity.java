package com.santander.app.meuperfil.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.TextWatcher;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import gpu;
import grs;
import java.text.SimpleDateFormat;
import java.util.Date;
import jph;
import jpi;
import jpj;
import jpk;
import jpl;
import jpm;
import jqc;
import jqj;
import mxn;
import myg;
import myh;
import mzq;
import naf;

public class MeuPerfilAtivarCartaoActivity extends grs implements View.OnClickListener {
  private final String a = "MeuPerfilAtivarCartaoActivity";
  
  private Dialog b;
  
  private View c;
  
  private EditText d;
  
  private EditText e;
  
  private CheckBox f;
  
  private TextView g;
  
  private Button w;
  
  private Button x;
  
  private jqc y;
  
  private TextView z;
  
  private Dialog a() {
    mzq.a(this.i, false);
    Dialog dialog = new Dialog((Context)this.i, 2131427876);
    dialog.requestWindowFeature(1);
    dialog.setOwnerActivity(this.i);
    dialog.setContentView(2130968985);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    dialog.setOnDismissListener((DialogInterface.OnDismissListener)new myg(this.i));
    dialog.setOnShowListener((DialogInterface.OnShowListener)new myh(this.i));
    dialog.findViewById(2131756830).setOnClickListener((View.OnClickListener)new jpj(this, dialog));
    dialog.findViewById(2131756584).setOnClickListener((View.OnClickListener)new jpk(this, dialog));
    try {
      dialog.show();
      return dialog;
    } catch (Exception exception) {
      Log.e("Error", "Erro showLoading", exception);
      return dialog;
    } 
  }
  
  private void a(String paramString) {
    try {
      mzq.a(this.i, false);
      Dialog dialog = new Dialog((Context)this.i, 2131427876);
      dialog.requestWindowFeature(1);
      dialog.setOwnerActivity(this.i);
      dialog.setContentView(2130968981);
      dialog.setCancelable(false);
      (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
      dialog.setOnDismissListener((DialogInterface.OnDismissListener)new myg(this.i));
      dialog.setOnShowListener((DialogInterface.OnShowListener)new myh(this.i));
      dialog.findViewById(2131756828).setOnClickListener((View.OnClickListener)new jpl(this, dialog));
      ((TextView)dialog.findViewById(2131756382)).setText(paramString);
      dialog.show();
      return;
    } catch (Exception exception) {
      Log.e("Error", "Erro showLoading", exception);
      return;
    } 
  }
  
  private void a(jqj paramjqj) {
    try {
      if (this.v.f().y().b() != null) {
        this.v.f().y().b().a(true);
        this.v.f().y().b().c(paramjqj.f());
        this.v.f().y().b().b(paramjqj.g());
        this.v.f().e((new naf()).c(Base64.decode(paramjqj.l(), 0)));
        this.v.f().y().a("14");
      } 
      return;
    } catch (Exception exception) {
      Log.e("ERROR_ATUALIZAR_SESSAO", exception.getMessage());
      return;
    } 
  }
  
  private void b() {
    this.e.clearFocus();
    this.d.requestFocus();
  }
  
  private void b(jqj paramjqj) {
    if (!this.y.i(paramjqj)) {
      if (this.y.j(paramjqj)) {
        a("Número de identificação inválido.");
        return;
      } 
      if (this.y.k(paramjqj)) {
        a("Número de identificação inválido. Você só tem mais uma tentativa antes de cancelar o seu Cartão de Segurança On-line.");
        return;
      } 
      if (this.y.l(paramjqj)) {
        a();
        return;
      } 
      a(paramjqj.c());
      return;
    } 
    Intent intent = new Intent((Context)this.i, MeuPerfilSolicitarCartaoComprovante.class);
    Bundle bundle = new Bundle();
    bundle.putString("referOper", paramjqj.k());
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy - hh:mm:ss");
    Date date = new Date();
    bundle.putString("titulo", "Cartão de Segurança On-Line");
    bundle.putString("subTitulo", "Ativado com sucesso.");
    bundle.putString("dataHora", simpleDateFormat.format(date));
    intent.putExtras(bundle);
    startActivity(intent);
  }
  
  private void c() {
    this.d.clearFocus();
    this.e.requestFocus();
  }
  
  private void d() {
    this.d.clearFocus();
    this.e.clearFocus();
    this.w.requestFocus();
  }
  
  public void onClick(View paramView) {
    if (paramView == this.w)
      mxn.a((Activity)this, 2130968986); 
    if (paramView == this.x) {
      if (!this.f.isChecked()) {
        a("Você deve aceitar as recomendações de segurança para continuar.");
        return;
      } 
    } else {
      return;
    } 
    (new jpm(this)).c((Object[])new Void[0]);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969371);
    this.d = (EditText)findViewById(2131759084);
    this.e = (EditText)findViewById(2131759085);
    this.f = (CheckBox)findViewById(2131759088);
    this.g = (TextView)findViewById(2131759086);
    this.w = (Button)findViewById(2131759087);
    this.x = (Button)findViewById(2131759089);
    this.i = (Activity)this;
    this.y = new jqc();
    this.z = (TextView)findViewById(2131759083);
    this.w.setOnClickListener(this);
    this.x.setOnClickListener(this);
    paramBundle = getIntent().getExtras();
    if (paramBundle != null)
      this.g.setText(paramBundle.getString("xxx")); 
    this.z.setText(this.z.getText().toString().replace("XXX", paramBundle.getString("xxx")));
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131298153));
    this.d.addTextChangedListener((TextWatcher)new jph(this));
    this.e.addTextChangedListener((TextWatcher)new jpi(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\meuperfil\activity\MeuPerfilAtivarCartaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */