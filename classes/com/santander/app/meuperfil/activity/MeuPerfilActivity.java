package com.santander.app.meuperfil.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.Html;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import gpu;
import grs;
import jpe;
import jpf;
import jpg;
import jqc;
import jqj;
import jrm;
import jrn;
import mxn;
import myg;
import myh;
import mzq;

public class MeuPerfilActivity extends grs implements View.OnClickListener {
  private final String a = "MeuPerfilActivity";
  
  private ImageView b;
  
  private ImageView c;
  
  private ImageView d;
  
  private View e;
  
  private jqc f;
  
  private View g;
  
  private void a(jqj paramjqj) {
    Intent intent1;
    Intent intent2 = null;
    if (this.f.a(paramjqj)) {
      intent1 = new Intent((Context)this.i, MeuPerfilSolicitarCartaoNovamenteActivity.class);
    } else if (this.f.e((jqj)intent1) || this.f.f((jqj)intent1) || this.f.g((jqj)intent1)) {
      a();
      intent1 = intent2;
    } else {
      intent1 = new Intent((Context)this.i, MeuPerfilSolicitarCartaoActivity.class);
    } 
    if (intent1 != null)
      startActivity(intent1); 
  }
  
  private void b(jqj paramjqj) {
    if (this.f.f(paramjqj) || this.f.g(paramjqj)) {
      Intent intent = new Intent((Context)this.i, MeuPerfilAtivarCartaoActivity.class);
      Bundle bundle = new Bundle();
      bundle.putString("xxx", paramjqj.i());
      intent.putExtras(bundle);
      startActivity(intent);
      return;
    } 
    if (this.f.e(paramjqj)) {
      b();
      return;
    } 
    if (this.f.h(paramjqj)) {
      mxn.a((Activity)this, 2130968984);
      return;
    } 
    mxn.a((Activity)this, 2130968983);
  }
  
  public void a() {
    mzq.a((Activity)this, false);
    Dialog dialog = new Dialog((Context)this, 2131427876);
    dialog.requestWindowFeature(1);
    dialog.setOwnerActivity((Activity)this);
    dialog.setContentView(2130968992);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    dialog.setOnDismissListener((DialogInterface.OnDismissListener)new myg((Activity)this));
    dialog.setOnShowListener((DialogInterface.OnShowListener)new myh((Activity)this));
    dialog.findViewById(2131756828).setOnClickListener((View.OnClickListener)new jpf(this, dialog));
    ((TextView)dialog.findViewById(2131756996)).setText((CharSequence)Html.fromHtml(getResources().getString(2131298893)));
    try {
      dialog.show();
      return;
    } catch (Exception exception) {
      Log.e(getLocalClassName(), "Erro showLoading", exception);
      return;
    } 
  }
  
  public void b() {
    mzq.a((Activity)this, false);
    Dialog dialog = new Dialog((Context)this, 2131427876);
    dialog.requestWindowFeature(1);
    dialog.setOwnerActivity((Activity)this);
    dialog.setContentView(2130968992);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    dialog.setOnDismissListener((DialogInterface.OnDismissListener)new myg((Activity)this));
    dialog.setOnShowListener((DialogInterface.OnShowListener)new myh((Activity)this));
    dialog.findViewById(2131756828).setOnClickListener((View.OnClickListener)new jpg(this, dialog));
    ((TextView)dialog.findViewById(2131756996)).setText((CharSequence)Html.fromHtml(getResources().getString(2131298846)));
    try {
      dialog.show();
      return;
    } catch (Exception exception) {
      Log.e(getLocalClassName(), "Erro showLoading", exception);
      return;
    } 
  }
  
  public void onClick(View paramView) {
    this.e = paramView;
    if (paramView == this.b) {
      startActivity(new Intent((Context)this, MeuPerfilTrocarSenhaActivity.class));
      return;
    } 
    if (paramView == this.d || paramView == this.c) {
      (new jrm((jrn)new jpe(this), (Activity)this)).c((Object[])new Void[0]);
      return;
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969370);
    this.i = (Activity)this;
    this.f = new jqc();
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131298153));
    this.b = (ImageView)findViewById(2131759080);
    this.b.setOnClickListener(this);
    this.c = (ImageView)findViewById(2131759082);
    this.c.setOnClickListener(this);
    this.d = (ImageView)findViewById(2131759081);
    this.d.setOnClickListener(this);
    findViewById(2131756230).requestFocus();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\meuperfil\activity\MeuPerfilActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */