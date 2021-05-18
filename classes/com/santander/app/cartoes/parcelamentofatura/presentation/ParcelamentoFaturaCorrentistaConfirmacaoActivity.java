package com.santander.app.cartoes.parcelamentofatura.presentation;

import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import gif;
import gig;
import giz;
import gpu;
import grs;
import java.util.Iterator;
import naf;
import naj;
import nak;

public class ParcelamentoFaturaCorrentistaConfirmacaoActivity extends grs {
  private final String a = "ParcelamentoFaturaCorrentistaConfirmacaoActivity";
  
  private gig b;
  
  private String a(String paramString) {
    naf naf = new naf();
    try {
      return naf.c(Base64.decode(paramString.trim().getBytes("UTF-8"), 0));
    } catch (Exception exception) {
      Log.e("ERRO_CRYPTO", exception.getMessage());
      return "";
    } 
  }
  
  private void a() {
    ((Button)findViewById(2131758356)).setOnClickListener((View.OnClickListener)new giz(this));
    this.b = (gig)getIntent().getExtras().getSerializable("parcelarFatura");
    String str1 = "";
    Iterator<gif> iterator = this.b.k().iterator();
    String str3 = "";
    String str2 = "";
    while (iterator.hasNext()) {
      gif gif = iterator.next();
      String str5 = str2;
      String str6 = str3;
      try {
        float f = Float.parseFloat(gif.c());
        str5 = str2;
        str6 = str3;
        Float float_ = Float.valueOf(Float.parseFloat(gif.d()) / 100.0F);
        str5 = str2;
        str6 = str3;
        str3 = Float.valueOf(f).intValue() + "";
        str5 = str2;
        str6 = str3;
        str2 = naj.f(float_.toString());
        str5 = str2;
        str6 = str3;
        String str = naj.f(float_.toString());
        str1 = str;
      } catch (Exception exception) {
        str3 = str6;
        str2 = str5;
      } 
    } 
    String str4 = str1;
    if (this.b.s() != null) {
      str4 = str1;
      if (this.b.s().length() > 0) {
        str4 = str1;
        try {
          if (Float.parseFloat(this.b.s()) > 0.0F)
            str4 = naj.s(this.b.s()); 
        } catch (Exception exception) {
          str4 = this.b.s();
        } 
      } 
    } 
    ((TextView)findViewById(2131756350)).setText(naj.E(a(this.b.m())));
    ((TextView)findViewById(2131756352)).setText(nak.m(this.b.g()));
    ((TextView)findViewById(2131759173)).setText(naj.f((Float.parseFloat(this.b.v().replace("+", "")) / 100.0F) + ""));
    ((TextView)findViewById(2131759177)).setText(str3);
    ((TextView)findViewById(2131759198)).setText(str4);
    ((TextView)findViewById(2131759200)).setText(str2);
    ((TextView)findViewById(2131759202)).setText(naj.f((Float.parseFloat(this.b.u().replace("+", "")) / 100.0F) + ""));
    ((TextView)findViewById(2131759204)).setText(naj.f((Float.parseFloat(this.b.r().replace("+", "")) / 100.0F) + ""));
    ((TextView)findViewById(2131759206)).setText(naj.F(this.b.o()));
    ((TextView)findViewById(2131759208)).setText(naj.F(this.b.f().replace("+", "")));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969405);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131298342));
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\cartoes\parcelamentofatura\presentation\ParcelamentoFaturaCorrentistaConfirmacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */