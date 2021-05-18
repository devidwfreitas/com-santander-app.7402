package com.santander.app.idsantander.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.TextView;
import com.santander.app.components.view.PlayGifView.PlayGifView;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import grs;
import iut;
import iyg;
import iyh;
import iyi;
import iyl;
import jaj;
import jak;
import java.io.Serializable;
import myg;
import myh;
import mzq;
import mzv;
import naz;

public class IdSantanderDesafioCsoActivity extends grs implements iyl {
  private static Dialog A;
  
  private static Activity z;
  
  private jaj a;
  
  private TextView b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private PlayGifView f;
  
  private EditText g;
  
  private EditText w;
  
  private Button[] x;
  
  private ImageButton y;
  
  private void h() {
    String str = this.v.f().y().a();
    if (naz.OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO.getValue().equals(str) || naz.OFERTAR_ID_CSO_TRANSACIONAL.getValue().equals(str) || naz.CSO_TRANSACIONAL.getValue().equals(str)) {
      this.v.f().y().a(naz.CSO_TRANSACIONAL.getValue());
    } else {
      this.v.f().y().a(naz.HOME_CONSULTIVA.getValue());
    } 
    if (naz.OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO.getValue().equals(str) || naz.OFERTAR_ID_CSO_TRANSACIONAL.getValue().equals(str))
      this.v.f().j(naz.OFERTAR_ID_CSO_TRANSACIONAL.getValue()); 
    this.v.f().y().g(Boolean.valueOf(true));
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  private View.OnClickListener i() {
    return (View.OnClickListener)new iyi(this);
  }
  
  public void a() {
    this.f = (PlayGifView)findViewById(2131755820);
    this.f.setGifResource(2130838876);
    this.b = (TextView)findViewById(2131755821);
    this.b.setText(getResources().getString(2131299026));
    this.c = (TextView)findViewById(2131755822);
    this.c.setText((CharSequence)Html.fromHtml(getResources().getString(2131298626)));
    this.d = (TextView)findViewById(2131755824);
    this.g = (EditText)findViewById(2131755834);
    this.w = (EditText)findViewById(2131755836);
    this.x = new Button[5];
    this.x[0] = (Button)findViewById(2131755838);
    this.x[1] = (Button)findViewById(2131755839);
    this.x[2] = (Button)findViewById(2131755840);
    this.x[3] = (Button)findViewById(2131755842);
    this.x[4] = (Button)findViewById(2131755843);
    this.y = (ImageButton)findViewById(2131755844);
    this.e = (TextView)findViewById(2131755819);
    this.e.setOnClickListener(i());
    this.a.b();
  }
  
  public void a(View.OnClickListener paramOnClickListener) {
    this.y.setOnClickListener(paramOnClickListener);
  }
  
  public void a(String paramString) {
    this.w.setText(paramString);
  }
  
  public void a(String paramString, boolean paramBoolean) {
    try {
      this.y.callOnClick();
      mzq.a(this.i, false);
      Dialog dialog = new Dialog((Context)this.i, 2131427876);
      dialog.requestWindowFeature(1);
      dialog.setOwnerActivity(this.i);
      dialog.setContentView(2130968981);
      dialog.setCancelable(false);
      (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
      dialog.setOnDismissListener((DialogInterface.OnDismissListener)new myg(this.i));
      dialog.setOnShowListener((DialogInterface.OnShowListener)new myh(this.i));
      dialog.findViewById(2131756828).setOnClickListener((View.OnClickListener)new iyg(this, dialog, paramBoolean));
      ((TextView)dialog.findViewById(2131756382)).setText(paramString);
      dialog.show();
      return;
    } catch (Exception exception) {
      Log.e("IdSantanderAtivarCartao", "Erro showLoading", exception);
      return;
    } 
  }
  
  public void a(String[] paramArrayOfString) {
    this.x[0].setText(paramArrayOfString[1] + " ou " + paramArrayOfString[2]);
    this.x[1].setText(paramArrayOfString[3] + " ou " + paramArrayOfString[4]);
    this.x[2].setText(paramArrayOfString[5] + " ou " + paramArrayOfString[6]);
    this.x[3].setText(paramArrayOfString[7] + " ou " + paramArrayOfString[8]);
    this.x[4].setText(paramArrayOfString[9] + " ou " + paramArrayOfString[10]);
  }
  
  public void b() {
    Intent intent = new Intent((Context)this, IdSantanderComprovanteActivity.class);
    intent.putExtra("id", (Serializable)iut.PROCESSO_INTERROMPIDO);
    intent.putExtra("content", "-1");
    startActivity(intent);
  }
  
  public void b(View.OnClickListener paramOnClickListener) {
    this.x[0].setOnClickListener(paramOnClickListener);
    this.x[1].setOnClickListener(paramOnClickListener);
    this.x[2].setOnClickListener(paramOnClickListener);
    this.x[3].setOnClickListener(paramOnClickListener);
    this.x[4].setOnClickListener(paramOnClickListener);
  }
  
  public void b(String paramString) {
    this.g.setText(paramString);
  }
  
  public void c() {
    mzv.a(this.x);
  }
  
  public void d() {
    this.a.b((View.OnClickListener)new iyh(this));
  }
  
  public void d(String paramString) {
    this.d.setText(getResources().getString(2131297932).replace("%data%", paramString));
  }
  
  public void e() {
    startActivity(new Intent((Context)this, IdSantanderHabilitacaoActivity.class));
  }
  
  public void onBackPressed() {}
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    getSupportActionBar().hide();
    setContentView(2130968691);
    z = (Activity)this;
    this.a = (jaj)new jak(this);
    this.a.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\idsantander\presentation\IdSantanderDesafioCsoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */