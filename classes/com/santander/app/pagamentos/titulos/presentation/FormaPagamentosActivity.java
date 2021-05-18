package com.santander.app.pagamentos.titulos.presentation;

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
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;
import com.santander.app.components.view.DateCircleButton;
import frq;
import grs;
import java.io.Serializable;
import java.util.Calendar;
import java.util.List;
import jsr;
import jss;
import jul;
import jum;
import jun;
import juo;
import jup;
import juq;
import jur;
import jus;
import jut;
import juu;
import jvd;
import jwb;
import jwc;
import miq;
import mxn;
import nak;

public class FormaPagamentosActivity extends grs implements jvd {
  private DateCircleButton A;
  
  private DatePickerDialog B;
  
  private DatePickerDialog C;
  
  private String D;
  
  private String E;
  
  private String F = "N";
  
  private LinearLayout G;
  
  private SantanderDropDownView H;
  
  private jwb a;
  
  private jsr b;
  
  private TextView c;
  
  private EditText d;
  
  private Button e;
  
  private TextView f;
  
  private ImageButton g;
  
  private LinearLayout w;
  
  private LinearLayout x;
  
  private LinearLayout y;
  
  private DateCircleButton z;
  
  private void g() {
    c();
    this.d.setText(this.b.k().replace(".", ""));
    this.f.setText(nak.r(this.b.q()));
  }
  
  private void h() {
    this.G = (LinearLayout)findViewById(2131758064);
    this.G.setOnClickListener((View.OnClickListener)new jul(this));
    this.c = (TextView)findViewById(2131758062);
    this.x = (LinearLayout)findViewById(2131758067);
    this.y = (LinearLayout)findViewById(2131758065);
    this.f = (TextView)findViewById(2131758066);
    this.f.setText(nak.r(this.b.q()));
    this.g = (ImageButton)findViewById(2131757842);
    this.g.setOnClickListener((View.OnClickListener)new jun(this));
    this.d = (EditText)findViewById(2131758069);
    this.H = (SantanderDropDownView)findViewById(2131755321);
    this.w = (LinearLayout)findViewById(2131758063);
    this.e = (Button)findViewById(2131758072);
    this.e.setOnClickListener((View.OnClickListener)new juo(this));
    i();
    k();
    n();
  }
  
  private void i() {
    this.z = (DateCircleButton)findViewById(2131758070);
    this.z.a((Context)this, getResources().getDrawable(2130837641));
    this.A = (DateCircleButton)findViewById(2131758071);
    this.A.a((Context)this, getResources().getDrawable(2130837644));
    d();
    this.z.setTextViewInfo(getResources().getString(2131297969));
    this.z.setTextViewDate(nak.c());
    this.z.setEnableDateCircleButton(false);
    this.z.setTextColor(getResources().getColor(2131623972));
    this.D = this.z.a();
    this.z.setOnClickListener((View.OnClickListener)new jup(this));
    this.A.setTextViewInfo(getResources().getString(2131297841));
    this.A.setTextViewDate("");
    this.A.setEnableDateCircleButton(false);
    this.A.setOnClickListener((View.OnClickListener)new juq(this));
  }
  
  private void j() {
    frq.d("Pagamentos_Pagamento_Acao", "Continuar");
    if (!miq.C().w() || !miq.C().f().C().b("00000121")) {
      String str = this.b.e();
      jss jss = new jss();
      jss.d(str);
      jss.b(this.d.getText().toString());
      jss.f(this.F);
      jss.e(this.D);
      jss.c(this.f.getText().toString());
      this.a.a(jss);
      return;
    } 
    this.b.k(this.d.getText().toString());
    this.b.a(this.F);
    this.b.r(this.D);
    this.b.p(this.f.getText().toString());
    this.a.c(this.b);
  }
  
  private void k() {
    this.B = new DatePickerDialog((Context)this, (DatePickerDialog.OnDateSetListener)new jus(this), Calendar.getInstance().get(1), Calendar.getInstance().get(2), Calendar.getInstance().get(5));
    this.B.setOnCancelListener((DialogInterface.OnCancelListener)new jut(this));
    Calendar calendar = Calendar.getInstance();
    calendar.add(5, 1);
    this.B.getDatePicker().setMinDate(calendar.getTimeInMillis());
    this.B.setTitle("Selecione a Data");
    this.B.setOnDismissListener((DialogInterface.OnDismissListener)new juu(this));
  }
  
  private void n() {
    this.C = new DatePickerDialog((Context)this, (DatePickerDialog.OnDateSetListener)new jum(this), Calendar.getInstance().get(1), Calendar.getInstance().get(2), Calendar.getInstance().get(5));
    this.C.setTitle("Selecione a Data");
  }
  
  public void a() {
    this.x.setVisibility(8);
  }
  
  public void a(LinearLayout paramLinearLayout) {
    if (this.b == null) {
      this.w.setVisibility(8);
    } else {
      this.w.addView((View)paramLinearLayout);
    } 
    this.c.setText(this.b.g());
  }
  
  public void a(String paramString) {
    mxn.b(this.i, paramString);
  }
  
  public void a(List<anb> paramList) {
    this.H.setOnItemSelectedListener((amt)new jur(this));
    this.H.setAdapter((amr)new amy(paramList));
  }
  
  public void a(jsr paramjsr) {
    frq.d("Pagamentos_Pagamento_Confirmacao_Acao", "Continuar");
    Intent intent = new Intent((Context)this, ConfirmarPagamentoActivity.class);
    intent.putExtra("Titulos", (Serializable)paramjsr);
    startActivity(intent);
  }
  
  public void b() {
    this.y.setVisibility(8);
  }
  
  public void b(jsr paramjsr) {
    Intent intent = new Intent((Context)this, MaisInformacoesPagamentoActivity.class);
    intent.putExtra("ConsultaTitulos", (Serializable)paramjsr);
    startActivity(intent);
  }
  
  public void c() {
    this.a.a(this.d);
  }
  
  public void d() {
    this.F = "N";
    this.A.setEnableDateCircleButton(false);
    this.z.setEnableDateCircleButton(false);
    this.A.setTextViewDate("");
    this.D = this.z.a();
    this.A.setTextViewInfo(getResources().getString(2131297841));
    this.z.setPressed(true);
    this.z.setBackgroundLinear(getResources().getDrawable(2130837643));
    this.z.setTextColor(getResources().getColor(2131623972));
    this.A.setPressed(false);
    this.A.setBackgroundLinear(getResources().getDrawable(2130837644));
    this.A.setTextColor(getResources().getColor(2131624186));
  }
  
  public void e() {
    this.F = "S";
    this.A.setEnableDateCircleButton(false);
    this.z.setEnableDateCircleButton(false);
    this.A.setPressed(true);
    this.A.setBackgroundLinear(getResources().getDrawable(2130837646));
    this.A.setTextColor(getResources().getColor(2131623972));
    this.z.setPressed(false);
    this.z.setBackgroundLinear(getResources().getDrawable(2130837641));
    this.z.setTextColor(getResources().getColor(2131624186));
  }
  
  public void f() {
    this.G.setVisibility(0);
  }
  
  protected void onCreate(@Nullable Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968725);
    c(2131298956);
    this.i = (Activity)this;
    this.b = (jsr)getIntent().getExtras().getSerializable("consultaTitulos");
    this.a = (jwb)new jwc(this.i, this.b, this);
    h();
    g();
    this.a.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\pagamentos\titulos\presentation\FormaPagamentosActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */