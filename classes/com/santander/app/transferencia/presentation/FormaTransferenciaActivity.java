package com.santander.app.transferencia.presentation;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.santander.app.components.view.DateCircleButton;
import com.santander.app.contacorrente.domain.Conta;
import gpu;
import grs;
import java.io.Serializable;
import java.util.Calendar;
import java.util.Date;
import mkx;
import mlo;
import mnx;
import moa;
import mob;
import moc;
import mod;
import moe;
import mof;
import mog;
import moh;
import moi;
import moj;
import mok;
import mpw;
import mpx;
import mxn;
import naj;
import nak;
import naq;

public class FormaTransferenciaActivity extends grs implements mok {
  private static final String a = "FormaTransferenciaActivity";
  
  private static final String b = "TED";
  
  private static final String c = "DOC";
  
  private static final String d = "TEF";
  
  private static final String e = "0033";
  
  private TextView A;
  
  private TextView B;
  
  private ImageButton C;
  
  private Button D;
  
  private Button E;
  
  private CheckBox F;
  
  private DateCircleButton G;
  
  private DateCircleButton H;
  
  private Spinner I;
  
  private Button J;
  
  private LinearLayout K;
  
  private LinearLayout L;
  
  private mpw M;
  
  private mlo N;
  
  private DatePickerDialog O;
  
  private String P;
  
  private String Q;
  
  private String R;
  
  private Double S;
  
  private AlertDialog T = null;
  
  private Calendar U;
  
  private Activity f = (Activity)this;
  
  private ScrollView g;
  
  private TextView w;
  
  private TextView x;
  
  private TextView y;
  
  private TextView z;
  
  private void h() {
    this.N = (mlo)getIntent().getSerializableExtra("transferencia");
    this.S = Double.valueOf(Double.parseDouble(naj.m(this.N.d())));
    this.x = (TextView)findViewById(2131758078);
    this.w = (TextView)findViewById(2131758080);
    this.y = (TextView)findViewById(2131758083);
    this.z = (TextView)findViewById(2131758084);
    this.A = (TextView)findViewById(2131758085);
    this.B = (TextView)findViewById(2131758087);
    this.C = (ImageButton)findViewById(2131757824);
    this.D = (Button)findViewById(2131758093);
    this.E = (Button)findViewById(2131758094);
    this.K = (LinearLayout)findViewById(2131758099);
    this.F = (CheckBox)findViewById(2131758098);
    this.I = (Spinner)findViewById(2131758100);
    this.J = (Button)findViewById(2131758101);
    this.g = (ScrollView)findViewById(2131758074);
    this.L = (LinearLayout)findViewById(2131758097);
    this.G = (DateCircleButton)findViewById(2131758095);
    this.H = (DateCircleButton)findViewById(2131758096);
    this.G.a((Context)this, getResources().getDrawable(2130837641));
    this.H.a((Context)this, getResources().getDrawable(2130837644));
    ArrayAdapter arrayAdapter = new ArrayAdapter((Context)this, 2130969503, (Object[])getResources().getTextArray(2131689498));
    this.I.setAdapter((SpinnerAdapter)arrayAdapter);
    p();
    this.F.setOnClickListener((View.OnClickListener)new mnx(this));
    this.D.setOnClickListener((View.OnClickListener)new moc(this));
    this.E.setOnClickListener((View.OnClickListener)new mod(this));
    this.C.setOnClickListener((View.OnClickListener)new moe(this));
    this.J.setOnClickListener((View.OnClickListener)new mof(this));
    this.M = (mpw)new mpx(this.f, this, this.N.a());
    k();
  }
  
  private void i() {
    if (this.N.i()) {
      String str;
      this.N.e("M");
      mlo mlo1 = this.N;
      if (this.I.getSelectedItem().toString() == null || this.I.getSelectedItem().toString().equals("")) {
        str = null;
      } else {
        str = this.I.getSelectedItem().toString();
      } 
      mlo1.f(str);
    } 
  }
  
  private boolean j() {
    return (this.U != null && this.U.get(7) != 7 && this.U.get(7) != 1);
  }
  
  private void k() {
    this.L.setVisibility(8);
    this.G.setPressed(true);
    this.G.setBackgroundLinear(getResources().getDrawable(2130837643));
    this.G.setTextColor(getResources().getColor(2131623972));
    this.H.setPressed(false);
    this.H.setBackgroundLinear(getResources().getDrawable(2130837644));
    this.H.setTextColor(getResources().getColor(2131624186));
    Date date = nak.a(this.G.a(), "dd/MM/yyyy");
    this.N.d(nak.a(date, "yyyyMMdd"));
    this.N.a(false);
  }
  
  private void n() {
    this.L.setVisibility(0);
    this.H.setPressed(true);
    this.H.setBackgroundLinear(getResources().getDrawable(2130837646));
    this.H.setTextColor(getResources().getColor(2131623972));
    this.G.setPressed(false);
    this.G.setBackgroundLinear(getResources().getDrawable(2130837641));
    this.G.setTextColor(getResources().getColor(2131624186));
    Date date = nak.a(this.H.a(), "dd/MM/yyyy");
    this.N.d(nak.a(date, "yyyyMMdd"));
    if (this.N.i()) {
      this.N.a(false);
      return;
    } 
    this.N.a(true);
  }
  
  private void o() {
    this.D.setPressed(true);
    this.D.setBackground(getResources().getDrawable(2130837643));
    this.D.setTextColor(getResources().getColor(2131623972));
    this.E.setPressed(false);
    this.E.setBackground(getResources().getDrawable(2130837644));
    this.E.setTextColor(getResources().getColor(2131624186));
    this.N.c("DOC");
  }
  
  private void p() {
    this.E.setPressed(true);
    this.E.setBackground(getResources().getDrawable(2130837646));
    this.E.setTextColor(getResources().getColor(2131623972));
    this.D.setPressed(false);
    this.D.setBackground(getResources().getDrawable(2130837641));
    this.D.setTextColor(getResources().getColor(2131624186));
    this.N.c("TED");
  }
  
  public void a() {
    this.G.setTextViewInfo("Transferir hoje");
    this.G.setTextViewDate(nak.c());
    this.G.setOnClickListener((View.OnClickListener)new mog(this));
    this.H.setTextViewInfo("Agendar");
    this.H.setTextViewDate("");
    this.H.setOnClickListener((View.OnClickListener)new moh(this));
  }
  
  public void a(String paramString) {
    mxn.b((Activity)this, paramString);
  }
  
  public void a(mkx parammkx) {
    String str;
    if (this.N.b() != null) {
      str = this.N.b().g();
    } else {
      str = this.N.c().c();
    } 
    this.Q = "Limite de até " + naj.f(parammkx.a()) + "\nEnviado no dia útil seguinte à solicitação.";
    this.R = "A partir de " + naj.f(parammkx.d()) + "\nEnviado no  mesmo dia útil da solicitação, se realizado até as 17h00.";
    if (str.contains("0033")) {
      this.N.c("TEF");
      return;
    } 
    Double double_ = Double.valueOf(parammkx.a());
    if (this.S.doubleValue() > double_.doubleValue()) {
      ((LinearLayout)findViewById(2131758092)).setVisibility(8);
      ((TextView)findViewById(2131758091)).setVisibility(0);
      this.D.setEnabled(false);
      p();
      return;
    } 
  }
  
  public void b() {
    this.O = new DatePickerDialog((Context)this, (DatePickerDialog.OnDateSetListener)new moi(this), Calendar.getInstance().get(1), Calendar.getInstance().get(2), Calendar.getInstance().get(5));
    Calendar calendar = Calendar.getInstance();
    calendar.add(5, 1);
    this.O.getDatePicker().setMinDate(calendar.getTimeInMillis());
    this.O.setTitle("Selecione a Data");
  }
  
  public void c() {
    Dialog dialog = new Dialog((Context)this, 2131427876);
    dialog.setContentView(2130968954);
    dialog.setCancelable(true);
    Window window = dialog.getWindow();
    WindowManager.LayoutParams layoutParams = window.getAttributes();
    layoutParams.gravity = 17;
    layoutParams.width = -1;
    layoutParams.height = -2;
    window.setAttributes(layoutParams);
    ((TextView)dialog.findViewById(2131756887)).setText(this.Q);
    ((TextView)dialog.findViewById(2131756889)).setText(this.R);
    dialog.findViewById(2131756890).setOnClickListener((View.OnClickListener)new moj(this, dialog));
    dialog.show();
  }
  
  public void d() {
    String str1;
    String str2;
    String str4;
    String str5;
    String str6;
    Conta conta = this.N.a();
    if (this.N.b() != null) {
      str3 = this.N.b().e();
    } else {
      str3 = this.N.c().h();
    } 
    if (this.N.b() != null) {
      str2 = this.N.b().g();
    } else {
      str2 = this.N.c().c();
    } 
    if (this.N.b() != null) {
      str4 = this.N.b().i();
    } else {
      str4 = this.N.c().l();
    } 
    if (this.N.b() != null) {
      str5 = this.N.b().h();
    } else {
      str5 = this.N.c().d();
    } 
    if (this.N.b() != null) {
      str1 = this.N.b().k();
    } else {
      str1 = this.N.c().e() + this.N.c().j();
    } 
    String str7 = this.N.d();
    if (str2.contains("0033")) {
      str6 = "Conta Santander ";
    } else {
      str6 = "";
    } 
    this.x.setText(str6 + naq.c(conta.getAgencia(), conta.getCuenta()));
    this.w.setText(naj.f(conta.getExtractoHome().u()));
    this.B.setText(naj.Q(str7));
    if (str3 != null && !"".equals(str3)) {
      this.y.setText(str3);
    } else {
      this.y.setText("");
      this.y.setVisibility(8);
    } 
    this.z.setText(str4);
    TextView textView = this.A;
    StringBuilder stringBuilder = (new StringBuilder()).append("ag: ").append(str5).append(" - conta: ");
    String str3 = str1;
    if (naq.l(str2) == 33.0D)
      str3 = naq.h(str1); 
    textView.setText(stringBuilder.append(str3).toString());
    if (!str2.contains("0033")) {
      ((LinearLayout)findViewById(2131758088)).setVisibility(0);
    } else {
      ((LinearLayout)findViewById(2131758088)).setVisibility(8);
      this.N.c("TEF");
    } 
    this.J.setEnabled(true);
  }
  
  public void e() {
    AlertDialog.Builder builder = new AlertDialog.Builder((Context)this);
    builder.setCancelable(false).setMessage(getResources().getString(2131297940)).setNegativeButton(2131296654, (DialogInterface.OnClickListener)new mob(this)).setPositiveButton(2131296656, (DialogInterface.OnClickListener)new moa(this));
    this.T = builder.create();
    this.T.show();
  }
  
  public mlo f() {
    return this.N;
  }
  
  public void g() {
    Intent intent = new Intent((Context)this.f, ConfirmacaoTransferenciaActivity.class);
    intent.putExtra("transferencia", (Serializable)this.N);
    startActivity(intent);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968680);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131299085));
    h();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\transferencia\presentation\FormaTransferenciaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */