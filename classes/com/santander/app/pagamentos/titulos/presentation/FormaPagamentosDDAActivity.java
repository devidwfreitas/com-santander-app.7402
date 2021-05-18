package com.santander.app.pagamentos.titulos.presentation;

import alz;
import amr;
import amt;
import amy;
import anb;
import android.app.Activity;
import android.app.DatePickerDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import aoa;
import aoj;
import br.com.santander.uisdk.SantanderSwitch;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;
import com.santander.app.components.view.DateCircleButton;
import frq;
import gku;
import grs;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.List;
import jsp;
import jsr;
import jss;
import juv;
import juw;
import jux;
import juy;
import juz;
import jva;
import jvb;
import jvc;
import jvq;
import jvz;
import jwa;
import mxn;
import nak;

public class FormaPagamentosDDAActivity extends grs implements jvc {
  private SantanderDropDownView A;
  
  private aoa B;
  
  private SantanderSwitch C;
  
  private EditText D;
  
  private EditText E;
  
  private jvz a;
  
  private jsr b;
  
  private Button c;
  
  private RecyclerView d;
  
  private LinearLayout e;
  
  private LinearLayout f;
  
  private DateCircleButton g;
  
  private DateCircleButton w;
  
  private DatePickerDialog x;
  
  private String y;
  
  private String z = "N";
  
  private String b(jsr paramjsr) {
    for (gku gku : paramjsr.m()) {
      if (gku.b() != null && gku.b().equals("Valor a receber "))
        return gku.c(); 
    } 
    return null;
  }
  
  private void g() {
    a();
  }
  
  private void h() {
    this.A = (SantanderDropDownView)findViewById(2131755321);
    this.d = (RecyclerView)findViewById(2131758073);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this);
    this.d.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.d.setAdapter((RecyclerView.Adapter)new jvq(this, Arrays.asList(new jsr[] { this.b })));
    this.e = (LinearLayout)findViewById(2131757669);
    this.f = (LinearLayout)findViewById(2131757671);
    this.C = (SantanderSwitch)findViewById(2131757670);
    this.C.setOnCheckedChangeListener((alz)new juv(this));
    this.D = (EditText)findViewById(2131757673);
    this.E = (EditText)findViewById(2131757675);
    this.c = (Button)findViewById(2131758072);
    this.c.setOnClickListener((View.OnClickListener)new juw(this));
    j();
    n();
  }
  
  private aoa i() {
    return (new aoj((View)this.w, 2131427668)).a("Você pode agendar seu pagamento de boleto com recorrência aqui.").i(48).a(getResources().getColor(2131624101)).l(getResources().getColor(2131623972)).n(8388611).a();
  }
  
  private void j() {
    this.g = (DateCircleButton)findViewById(2131758070);
    this.g.a((Context)this, getResources().getDrawable(2130837641));
    this.w = (DateCircleButton)findViewById(2131758071);
    this.w.a((Context)this, getResources().getDrawable(2130837644));
    b();
    this.g.setTextViewInfo(getResources().getString(2131297969));
    this.g.setTextViewDate(nak.c());
    this.g.setEnableDateCircleButton(false);
    this.g.setTextColor(getResources().getColor(2131623972));
    this.y = this.g.a();
    this.g.setOnClickListener((View.OnClickListener)new jux(this));
    this.w.setTextViewInfo(getResources().getString(2131297841));
    this.w.setTextViewDate("");
    this.w.setEnableDateCircleButton(false);
    this.w.setOnClickListener((View.OnClickListener)new juy(this));
  }
  
  private void k() {
    frq.d("Pagamentos_DDA_Acao", "Continuar");
    if (this.z.equals("S") && this.C.a()) {
      String str1 = this.a.a(this.b, this.D.getText().toString(), this.E.getText().toString(), this.w.a());
      if (str1 != null) {
        a(str1);
        return;
      } 
      frq.d("Pagamentos_DDA_AgendamentoRecorrente", this.D.getText().toString());
      frq.d("Pagamentos_DDA_AgendamentoRecorrente", this.w.a().replace("/", ""));
      frq.d("Pagamentos_DDA_AgendamentoRecorrente", this.E.getText().toString().replace("R$ ", "").replace(".", "").replace(",", "."));
    } 
    String str = this.b.e();
    jss jss = new jss();
    jss.d(str);
    jss.b(b(this.b));
    jss.f(this.z);
    jss.e(this.y);
    jss.c(this.b.q());
    this.a.a(jss);
  }
  
  private void n() {
    this.x = new DatePickerDialog((Context)this, (DatePickerDialog.OnDateSetListener)new jva(this), Calendar.getInstance().get(1), Calendar.getInstance().get(2), Calendar.getInstance().get(5));
    this.x.setOnCancelListener((DialogInterface.OnCancelListener)new jvb(this));
    Calendar calendar = Calendar.getInstance();
    calendar.add(5, 1);
    this.x.getDatePicker().setMinDate(calendar.getTimeInMillis());
    this.x.setTitle("Selecione a Data");
  }
  
  public void a() {
    this.a.a(this.E);
  }
  
  public void a(String paramString) {
    mxn.b(this.i, paramString);
  }
  
  public void a(List<anb> paramList) {
    this.A.setOnItemSelectedListener((amt)new juz(this));
    this.A.setAdapter((amr)new amy(paramList));
  }
  
  public void a(jsr paramjsr) {
    Object object;
    if (f()) {
      String str2 = this.D.getText().toString();
      String str3 = this.E.getText().toString();
      String str1 = this.w.a();
      int i = Integer.parseInt(str2);
      double d = Double.parseDouble(str3.replace("R$ ", "").replace(".", "").replace(",", "."));
      Calendar calendar = Calendar.getInstance();
      calendar.setTime(nak.a(str1, "dd/MM/yyyy"));
      jsp jsp = new jsp(i, d, calendar);
      Intent intent1 = new Intent((Context)this, ConfirmarPagamentoDDAActivity.class);
      intent1.putExtra("Titulos", (Serializable)paramjsr);
      intent1.putExtra("AgendamentoRecorrente", (Serializable)jsp);
      object = this.a.e();
      if (object instanceof and) {
        object = object;
      } else {
        object = object;
      } 
      ConfirmarPagamentoDDAActivity.a = Arrays.asList(new anb[] { (anb)object });
      startActivity(intent1);
      return;
    } 
    Intent intent = new Intent((Context)this, ConfirmarPagamentoActivity.class);
    intent.putExtra("Titulos", (Serializable)object);
    startActivity(intent);
  }
  
  public void b() {
    this.z = "N";
    this.w.setEnableDateCircleButton(false);
    this.g.setEnableDateCircleButton(false);
    this.w.setTextViewDate("");
    this.y = this.g.a();
    this.g.setPressed(true);
    this.g.setBackgroundLinear(getResources().getDrawable(2130837643));
    this.g.setTextColor(getResources().getColor(2131623972));
    this.w.setTextViewInfo(getResources().getString(2131297841));
    this.w.setPressed(false);
    this.w.setBackgroundLinear(getResources().getDrawable(2130837644));
    this.w.setTextColor(getResources().getColor(2131624186));
    this.C.setChecked(false);
    this.e.setVisibility(8);
    ((LinearLayout.LayoutParams)this.d.getLayoutParams()).weight = 0.4F;
    ((jvq)this.d.getAdapter()).a();
    if (this.B != null)
      this.B.c(); 
  }
  
  public void c() {
    this.z = "S";
    this.w.setEnableDateCircleButton(false);
    this.g.setEnableDateCircleButton(false);
    this.w.setPressed(true);
    this.w.setBackgroundLinear(getResources().getDrawable(2130837646));
    this.w.setTextColor(getResources().getColor(2131623972));
    this.g.setPressed(false);
    this.g.setBackgroundLinear(getResources().getDrawable(2130837641));
    this.g.setTextColor(getResources().getColor(2131624186));
    ((jvq)this.d.getAdapter()).a();
    if (this.B != null)
      this.B.c(); 
  }
  
  public void d() {
    this.B = i();
    this.B.b();
  }
  
  public void e() {
    if (this.b.f().equals("N"))
      d(); 
  }
  
  public boolean f() {
    return (this.z.equals("S") && this.C.a());
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    ((jvq)this.d.getAdapter()).a();
    if (this.B != null)
      this.B.c(); 
  }
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968726);
    c(2131298956);
    this.i = (Activity)this;
    this.b = (jsr)getIntent().getExtras().getSerializable("consultaTitulos");
    this.a = (jvz)new jwa(this.i, this.b, this);
    h();
    g();
    this.a.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\pagamentos\titulos\presentation\FormaPagamentosDDAActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */