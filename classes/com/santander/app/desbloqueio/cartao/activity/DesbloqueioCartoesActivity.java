package com.santander.app.desbloqueio.cartao.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import com.santander.app.widget.Indicator;
import foh;
import ghu;
import gon;
import gpu;
import grs;
import gul;
import hau;
import hcn;
import hco;
import hcp;
import hcq;
import hcr;
import hcs;
import hct;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import mxn;
import naf;
import nai;
import nez;

public class DesbloqueioCartoesActivity extends grs implements View.OnClickListener, nez {
  private TextView A;
  
  private TextView B;
  
  private EditText C;
  
  private List<ghu> D;
  
  private LinearLayout E;
  
  private EditText F;
  
  private gul G;
  
  public Dialog a = null;
  
  private final String b = "DesbloqueioCartoesActivity";
  
  private ViewPager c;
  
  private Indicator d;
  
  private ImageView e;
  
  private ImageView f;
  
  private gon g;
  
  private Spinner w;
  
  private Spinner x;
  
  private int y;
  
  private TextView z;
  
  private void b() {
    this.w = (Spinner)findViewById(2131756741);
    this.x = (Spinner)findViewById(2131756743);
    this.c = (ViewPager)findViewById(2131756722);
    this.d = (Indicator)findViewById(2131756725);
    this.f = (ImageView)findViewById(2131756723);
    this.e = (ImageView)findViewById(2131756724);
    this.z = (TextView)findViewById(2131756729);
    this.A = (TextView)findViewById(2131756732);
    this.B = (TextView)findViewById(2131756735);
    this.C = (EditText)findViewById(2131756749);
    this.E = (LinearLayout)findViewById(2131756744);
    this.F = (EditText)findViewById(2131756746);
    this.G = new gul();
    this.G.a(this.F);
    this.F.addTextChangedListener((TextWatcher)this.G);
    this.F.setOnFocusChangeListener((View.OnFocusChangeListener)new hcn(this));
    this.F.setOnEditorActionListener((TextView.OnEditorActionListener)new hco(this));
    ((Button)findViewById(2131755277)).setOnClickListener((View.OnClickListener)new hcp(this));
    h();
    if (getIntent().getSerializableExtra("cartaoDesloqueioModel") != null) {
      hcs hcs = (hcs)getIntent().getSerializableExtra("cartaoDesloqueioModel");
      mxn.b((Activity)this, hcs.h() + " - " + hcs.g());
    } 
    if (this.v.f().s().b() != null && this.v.f().s().b().size() > 0) {
      if (c()) {
        e();
        return;
      } 
    } else {
      return;
    } 
    d();
  }
  
  private boolean c() {
    return (this.v.f().s().b() != null && ((ghu)this.v.f().s().b().get(0)).A() == null);
  }
  
  private void d() {
    this.D = this.v.f().s().b();
    f();
    d(this.y);
  }
  
  private void d(int paramInt) {
    ghu ghu = this.D.get(paramInt);
    this.z.setText(ghu.G());
    this.A.setText(ghu.C());
    this.B.setText(ghu.J());
    if (!"TI".equalsIgnoreCase(ghu.E()) && "S".equalsIgnoreCase(ghu.K())) {
      this.E.setVisibility(0);
    } else {
      this.E.setVisibility(8);
    } 
    this.y = paramInt;
    g();
  }
  
  private void e() {
    this.a = mxn.b(this.i);
    this.v.f().t().a((foh)new hcq(this));
  }
  
  private void f() {
    int i = 0;
    this.c.setOnTouchListener((View.OnTouchListener)new hcr(this));
    this.d = (Indicator)findViewById(2131756725);
    this.f = (ImageView)findViewById(2131756723);
    this.e = (ImageView)findViewById(2131756724);
    this.f.setOnClickListener(this);
    this.e.setOnClickListener(this);
    this.g = new gon((Activity)this, this.c, this.d, this.f, this.e, 0);
    gon gon1 = this.g;
    List<ghu> list = this.D;
    if (this.y > 0)
      i = this.y; 
    gon1.a(list, i);
    this.g.a(this);
    this.y = this.g.a();
  }
  
  private void g() {
    this.w.setSelection(0);
    this.x.setSelection(0);
    this.C.setText("");
  }
  
  private void h() {
    List<CharSequence> list1 = Arrays.asList(getResources().getTextArray(2131689496));
    ArrayAdapter arrayAdapter2 = new ArrayAdapter((Context)this.i, 17367049, list1);
    this.w.setAdapter((SpinnerAdapter)arrayAdapter2);
    List<String> list = i();
    ArrayAdapter arrayAdapter1 = new ArrayAdapter((Context)this.i, 17367049, list);
    this.x.setAdapter((SpinnerAdapter)arrayAdapter1);
  }
  
  private List<String> i() {
    Calendar calendar = Calendar.getInstance();
    ArrayList<String> arrayList = new ArrayList();
    arrayList.add("Selecione");
    arrayList.add(String.valueOf(calendar.get(1)));
    for (int i = 0; i < 10; i++) {
      calendar.add(1, 1);
      arrayList.add(String.valueOf(calendar.get(1)));
    } 
    return arrayList;
  }
  
  private hct j() {
    hct hct = new hct();
    ghu ghu = this.D.get(this.y);
    hct.u(this.v.f().m());
    hct.h(ghu.B());
    hct.v(ghu.K());
    hct.n(ghu.G());
    hct.m("N");
    hct.o(ghu.H());
    hct.p(ghu.I());
    hct.q(ghu.J());
    hct.l(ghu.u());
    return hct;
  }
  
  public void a() {
    String str3 = (String)this.w.getSelectedItem();
    String str4 = (String)this.x.getSelectedItem();
    String str5 = this.C.getText().toString();
    String str2 = "";
    String str1 = str2;
    if (this.E != null) {
      str1 = str2;
      if (this.E.isShown())
        str1 = this.F.getText().toString().replace(".", "").replace("-", ""); 
    } 
    if (str3.equalsIgnoreCase("selecione")) {
      mxn.e(this.i, "Por favor, informe o mês de validade do cartão.");
      return;
    } 
    if (str4.equalsIgnoreCase("selecione")) {
      mxn.e(this.i, "Por favor, informe o ano de validade do cartão.");
      return;
    } 
    if (this.E.isShown()) {
      if (TextUtils.isEmpty(str1)) {
        mxn.e(this.i, "Por favor, informe o CPF do portador.");
        return;
      } 
      if (str1.length() < 11 || !nai.c(Long.valueOf(Long.parseLong(str1)))) {
        mxn.e(this.i, "Por favor, informe um CPF válido.");
        return;
      } 
    } 
    if (TextUtils.isEmpty(str5)) {
      mxn.e(this.i, "Por favor, informe a senha do cartão.");
      return;
    } 
    if (str5.length() < 4 || str5.length() > 4) {
      mxn.e(this.i, "Senha do cartão deve ter 4 digitos");
      return;
    } 
    hct hct = j();
    try {
      hct.s((new naf()).b(str5.getBytes("UTF-8")));
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
    } 
    hct.t(str4 + str3);
    if ("".equals(str1)) {
      str1 = this.v.f().k();
    } else {
      str1 = str1.trim();
    } 
    hct.w(str1);
    Intent intent = new Intent((Context)this.i, DesbloqueioCartaoConfirmacaoActivity.class);
    intent.putExtra("cartaoDesloqueioModel", (Serializable)hct);
    startActivity(intent);
    this.C.setText("");
    this.F.setText("");
  }
  
  public void a(int paramInt) {}
  
  public void b(int paramInt) {
    d(paramInt);
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  public void onClick(View paramView) {}
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968911);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131297131));
    this.i = (Activity)this;
    this.y = hau.a().u();
    b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\desbloqueio\cartao\activity\DesbloqueioCartoesActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */