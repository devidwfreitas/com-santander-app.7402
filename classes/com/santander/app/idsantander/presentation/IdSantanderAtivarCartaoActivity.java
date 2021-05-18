package com.santander.app.idsantander.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.text.TextWatcher;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import grs;
import iut;
import ixf;
import ixg;
import ixh;
import ixi;
import ixl;
import jac;
import jad;
import java.io.Serializable;
import jqj;
import myg;
import myh;
import mzq;
import mzr;
import naf;

public class IdSantanderAtivarCartaoActivity extends grs implements ixl {
  private static Activity x;
  
  private static Dialog y;
  
  private jac a;
  
  private TextView b;
  
  private TextView c;
  
  private TextView d;
  
  private PlayGifView e;
  
  private Button f;
  
  private EditText g;
  
  private EditText w;
  
  private void f() {
    getSharedPreferences("qrPreferences", 0).edit().putBoolean(mzr.n(), false).commit();
    this.v.f().y().g(Boolean.valueOf(true));
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  private TextWatcher g() {
    return (TextWatcher)new ixg(this);
  }
  
  private View.OnClickListener h() {
    return (View.OnClickListener)new ixi(this);
  }
  
  public void a() {
    this.e = (PlayGifView)findViewById(2131755820);
    this.e.setGifResource(2130838876);
    this.b = (TextView)findViewById(2131755821);
    this.b.setText(getResources().getString(2131299026));
    this.c = (TextView)findViewById(2131755822);
    this.c.setText((CharSequence)Html.fromHtml(getResources().getString(2131298610)));
    this.f = (Button)findViewById(2131755829);
    this.f.setText((CharSequence)Html.fromHtml(getResources().getString(2131296611)));
    this.f.setOnClickListener((View.OnClickListener)new ixf(this));
    this.g = (EditText)findViewById(2131755826);
    this.w = (EditText)findViewById(2131755828);
    this.w.setText(this.v.f().y().b().f());
    this.d = (TextView)findViewById(2131755819);
    this.d.setOnClickListener(h());
    this.g.addTextChangedListener(g());
  }
  
  public void a(String paramString, boolean paramBoolean) {
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
      dialog.findViewById(2131756828).setOnClickListener((View.OnClickListener)new ixh(this, dialog, paramBoolean));
      ((TextView)dialog.findViewById(2131756382)).setText(paramString);
      dialog.show();
      return;
    } catch (Exception exception) {
      Log.e("IdSantanderAtivarCartao", "Erro showLoading", exception);
      return;
    } 
  }
  
  public void a(jqj paramjqj) {
    try {
      if (this.v.f().y().b() != null) {
        this.v.f().y().b().a(true);
        this.v.f().y().b().c(paramjqj.f());
        this.v.f().y().b().b(paramjqj.g());
        this.v.f().e((new naf()).c(Base64.decode(paramjqj.l(), 0)));
      } 
      return;
    } catch (Exception exception) {
      Log.e("ERROR_ATUALIZAR_SESSAO", exception.getMessage());
      return;
    } 
  }
  
  public void b() {
    startActivity(new Intent((Context)this.i, IdSantanderDesafioCsoActivity.class));
  }
  
  public void c() {
    Intent intent = new Intent((Context)this, IdSantanderComprovanteActivity.class);
    intent.putExtra("id", (Serializable)iut.PROCESSO_INTERROMPIDO);
    intent.putExtra("content", "-1");
    startActivity(intent);
  }
  
  public void onBackPressed() {}
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getSupportActionBar().hide();
    setContentView(2130968690);
    x = (Activity)this;
    this.a = (jac)new jad(this);
    this.a.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\idsantander\presentation\IdSantanderAtivarCartaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */