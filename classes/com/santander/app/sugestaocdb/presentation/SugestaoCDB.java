package com.santander.app.sugestaocdb.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.RendaFixaAplicacaoActivity;
import com.santander.app.RendaFixaAplicacaoConfirmacaoActivity;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import frq;
import ftq;
import ftt;
import fuu;
import gpu;
import grs;
import gui;
import hat;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import mjb;
import mjc;
import mjt;
import mju;
import mjv;
import mjw;
import mjx;
import mjy;
import mjz;
import mka;
import mkb;
import mxn;
import myg;
import myh;
import mzq;
import naj;
import nak;
import nfe;

public class SugestaoCDB extends grs implements mjz {
  private String A;
  
  private nfe B;
  
  private Activity C;
  
  private TextView a;
  
  private EditText b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private Button f;
  
  private TextView g;
  
  private ArrayList<ftq> w;
  
  private mka x;
  
  private Dialog y;
  
  private Dialog z;
  
  public void a() {
    this.C = (Activity)this;
    this.a = (TextView)findViewById(2131758395);
    this.b = (EditText)findViewById(2131758400);
    this.c = (TextView)findViewById(2131758405);
    this.d = (TextView)findViewById(2131758408);
    this.e = (TextView)findViewById(2131758411);
    this.f = (Button)findViewById(2131758412);
    this.g = (TextView)findViewById(2131758413);
    g();
    a(this.b);
    this.f.setOnClickListener(b());
    this.g.setOnClickListener(c());
  }
  
  public void a(EditText paramEditText) {
    gui gui = new gui();
    gui.a(paramEditText);
    paramEditText.addTextChangedListener((TextWatcher)gui);
  }
  
  public void a(ftt paramftt, ftq paramftq, fuu paramfuu) {
    Intent intent = new Intent((Context)this, RendaFixaAplicacaoConfirmacaoActivity.class);
    intent.putExtra("producto", (Serializable)paramftq);
    intent.putExtra("respSimularAplicacao", (Serializable)paramftt);
    intent.putExtra("valorAplicado", paramftt.g());
    intent.putExtra("cuentaOrigen", (Serializable)paramfuu);
    intent.putExtra("prazo", naj.A(paramftt.d()));
    intent.putExtra("agendada", false);
    intent.putExtra("fecha", nak.a());
    intent.putExtra("dataAgendamento", "");
    intent.putExtra("dadoAplicacao", (Serializable)paramftq.c());
    startActivity(intent);
  }
  
  public void a(String paramString) {
    mzq.a(this.i, false);
    Dialog dialog = new Dialog((Context)this.i, 2131427876);
    dialog.setContentView(2130969436);
    ((TextView)dialog.findViewById(2131759315)).setText(paramString);
    ((CheckBox)dialog.findViewById(2131759316)).setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener)new mjw(this, dialog));
    dialog.findViewById(2131759317).setOnClickListener((View.OnClickListener)new mjx(this, dialog));
    dialog.findViewById(2131759318).setOnClickListener((View.OnClickListener)new mjy(this, dialog));
    dialog.setOnDismissListener((DialogInterface.OnDismissListener)new myg(this.i));
    dialog.setOnShowListener((DialogInterface.OnShowListener)new myh(this.i));
    dialog.show();
  }
  
  public void a(String paramString, boolean paramBoolean) {
    mxn.a((Activity)this, "Alerta", paramString, paramBoolean, "OK");
  }
  
  public void a(List<mjc> paramList, ftq paramftq) {
    this.B.b();
    ArrayList<ftq> arrayList = new ArrayList();
    for (int i = 0; i < paramList.size(); i++) {
      ftq ftq1 = new ftq();
      ftq1.b(((mjc)paramList.get(i)).b());
      ftq1.a(((mjc)paramList.get(i)).a());
      arrayList.add(ftq1);
    } 
    frq.d("Investimentos_RendaFixa_Aplicar_Acao", "AplicarIvestimento");
    Intent intent = new Intent((Context)this, RendaFixaAplicacaoActivity.class);
    intent.putExtra("listaProdutos", arrayList);
    intent.putExtra("data", (Serializable)paramftq);
    startActivity(intent);
  }
  
  public void a(mjb parammjb) {
    String str = getResources().getString(2131297762);
    View view = getLayoutInflater().inflate(2130969216, null);
    List<mjc> list = parammjb.c();
    LinearLayout linearLayout = (LinearLayout)view.findViewById(2131758448);
    for (int i = 0; i < list.size(); i++) {
      LinearLayout linearLayout1 = (LinearLayout)getLayoutInflater().inflate(2130969223, null);
      ((TextView)linearLayout1.findViewById(2131758487)).setText(((mjc)list.get(i)).b());
      if (this.v.f().i().equals("SE"))
        ((ImageView)linearLayout1.findViewById(2131756347)).setImageResource(2130837608); 
      linearLayout1.setOnClickListener((View.OnClickListener)new mjv(this, list, i));
      linearLayout.addView((View)linearLayout1);
    } 
    this.B = new nfe((Activity)this, str, view);
  }
  
  View.OnClickListener b() {
    return (View.OnClickListener)new mjt(this);
  }
  
  View.OnClickListener c() {
    return (View.OnClickListener)new mju(this);
  }
  
  public void d() {
    hat.d().a((Activity)this, null, true, true);
  }
  
  public void e() {
    this.y = mxn.b((Activity)this);
  }
  
  public void f() {
    if (this.y != null && this.y.isShowing()) {
      this.y.dismiss();
      this.y.cancel();
      this.y = null;
    } 
  }
  
  public void g() {
    this.x.a();
  }
  
  public TextView h() {
    return this.a;
  }
  
  public TextView i() {
    return this.c;
  }
  
  public TextView j() {
    return this.d;
  }
  
  public TextView k() {
    return this.e;
  }
  
  public String n() {
    return this.A;
  }
  
  public Activity o() {
    return this.C;
  }
  
  public void onBackPressed() {
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131298969));
    this.w = (ArrayList<ftq>)getIntent().getSerializableExtra("listaProdutos");
    this.A = getIntent().getStringExtra("cdb");
    this.x = (mka)new mkb(this, this.w);
    if (!getIntent().getBooleanExtra("chamarListaProdutos", false)) {
      setContentView(2130969495);
      a();
    } 
  }
  
  protected void onResume() {
    super.onResume();
    if (getIntent().getBooleanExtra("chamarListaProdutos", false))
      this.x.b(); 
  }
  
  public nfe p() {
    return this.B;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\sugestaocdb\presentation\SugestaoCDB.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */