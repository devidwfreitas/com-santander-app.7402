package com.santander.app.investimentos.fundos.presentation;

import amr;
import amt;
import amy;
import anb;
import android.app.Activity;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.TextInputLayout;
import android.text.TextWatcher;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;
import com.santander.app.components.view.DateCircleButton;
import com.santander.app.components.view.ValorResgateButton;
import com.santander.app.contacorrente.domain.Conta;
import frq;
import gpu;
import grs;
import guj;
import hav;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import jdx;
import jgg;
import jgh;
import jgi;
import jgj;
import jgk;
import jgl;
import jgm;
import jgn;
import jgo;
import jgp;
import jgq;
import jgr;
import jgs;
import jin;
import jio;
import mxn;
import naj;
import nak;

public class FundosAplicacaoActivity extends grs implements jgs {
  private LinearLayout A;
  
  private LinearLayout B;
  
  private LinearLayout C;
  
  private LinearLayout D;
  
  private LinearLayout E;
  
  private LinearLayout F;
  
  private LinearLayout G;
  
  private jdx H;
  
  private Button I;
  
  private TextView J;
  
  private TextView K;
  
  private TextView L;
  
  private TextView M;
  
  private TextView N;
  
  private TextView O;
  
  private TextView P;
  
  private TextView Q;
  
  private TextView R;
  
  private TextView S;
  
  private TextView T;
  
  private TextView U;
  
  private TextView V;
  
  private TextView W;
  
  private TextInputLayout X;
  
  private TextView Y;
  
  private String Z;
  
  private SantanderDropDownView a;
  
  private Conta aa;
  
  private boolean ab;
  
  private boolean ac;
  
  private jdx ad;
  
  private ArrayList<jdx> ae;
  
  private Dialog af;
  
  private String ag;
  
  private jin b;
  
  private EditText c;
  
  private guj d;
  
  private Calendar e;
  
  private String f;
  
  private DateCircleButton g;
  
  private DateCircleButton w;
  
  private ValorResgateButton x;
  
  private ValorResgateButton y;
  
  private DatePickerDialog z;
  
  private void f() {
    this.a = (SantanderDropDownView)findViewById(2131755321);
    this.c = (EditText)findViewById(2131758156);
    this.d = new guj();
    this.ac = false;
    this.d.a(this.c);
    this.c.addTextChangedListener((TextWatcher)this.d);
    this.X = (TextInputLayout)findViewById(2131758155);
    this.g = (DateCircleButton)findViewById(2131758158);
    this.w = (DateCircleButton)findViewById(2131758159);
    this.y = (ValorResgateButton)findViewById(2131758150);
    this.x = (ValorResgateButton)findViewById(2131758149);
    this.B = (LinearLayout)findViewById(2131758148);
    this.g.a((Context)this, getResources().getDrawable(2130837641));
    this.w.a((Context)this, getResources().getDrawable(2130837644));
    this.y.a((Context)this, getResources().getDrawable(2130837641));
    this.x.a((Context)this, getResources().getDrawable(2130837644));
    this.A = (LinearLayout)findViewById(2131758147);
    this.F = (LinearLayout)findViewById(2131758152);
    this.U = (TextView)findViewById(2131758151);
    this.K = (TextView)findViewById(2131758127);
    this.Y = (TextView)findViewById(2131758129);
    this.L = (TextView)findViewById(2131758130);
    this.M = (TextView)findViewById(2131758135);
    this.N = (TextView)findViewById(2131758137);
    this.O = (TextView)findViewById(2131758139);
    this.I = (Button)findViewById(2131758160);
    this.D = (LinearLayout)findViewById(2131758128);
    this.C = (LinearLayout)findViewById(2131758140);
    this.E = (LinearLayout)findViewById(2131758125);
    this.J = (TextView)findViewById(2131758126);
    this.P = (TextView)findViewById(2131758141);
    this.Q = (TextView)findViewById(2131758142);
    this.R = (TextView)findViewById(2131758143);
    this.S = (TextView)findViewById(2131758144);
    this.T = (TextView)findViewById(2131758146);
    this.V = (TextView)findViewById(2131758132);
    this.W = (TextView)findViewById(2131758133);
    this.G = (LinearLayout)findViewById(2131758131);
    this.A.setOnClickListener((View.OnClickListener)new jgg(this));
    i();
    j();
    this.I.setOnClickListener((View.OnClickListener)new jgk(this));
    this.c.setOnClickListener((View.OnClickListener)new jgl(this));
  }
  
  private void g() {
    Intent intent = new Intent((Context)this.i, ConfirmacaoAplicacaoActivity.class);
    intent.putExtra("fundos_confirmacao", (Serializable)this.H);
    startActivity(intent);
  }
  
  private void h() {
    this.w.setPressed(true);
    this.w.setBackgroundLinear(getResources().getDrawable(2130837645));
    this.w.setTextColor(getResources().getColor(2131623972));
    this.g.setPressed(false);
    this.g.setBackgroundLinear(getResources().getDrawable(2130837641));
    this.g.setTextColor(getResources().getColor(2131624186));
    this.ab = true;
    this.Z = this.w.a();
  }
  
  private void i() {
    this.g.setPressed(true);
    this.g.setBackgroundLinear(getResources().getDrawable(2130837642));
    this.g.setTextColor(getResources().getColor(2131623972));
    this.w.setPressed(false);
    this.w.setBackgroundLinear(getResources().getDrawable(2130837644));
    this.w.setTextColor(getResources().getColor(2131624186));
    this.ab = false;
    this.Z = this.g.a();
  }
  
  private void j() {
    this.x.setPressed(true);
    this.x.setBackgroundLinear(getResources().getDrawable(2130837642));
    this.x.setTextColor(getResources().getColor(2131623972));
    this.y.setPressed(false);
    this.y.setBackgroundLinear(getResources().getDrawable(2130837644));
    this.y.setTextColor(getResources().getColor(2131624186));
    this.ac = false;
    frq.d("Investimentos_Poupanca_Resgatar_Acao", "Valor Parcial");
  }
  
  private void k() {
    this.y.setPressed(true);
    this.y.setBackgroundLinear(getResources().getDrawable(2130837645));
    this.y.setTextColor(getResources().getColor(2131623972));
    this.x.setPressed(false);
    this.x.setBackgroundLinear(getResources().getDrawable(2130837641));
    this.x.setTextColor(getResources().getColor(2131624186));
    this.ac = true;
    frq.d("Investimentos_Poupanca_Resgatar_Acao", "Valor Total");
  }
  
  public void a() {
    switch (jgj.a[this.H.t().ordinal()]) {
      default:
        this.g.setTextViewDate(nak.c());
        this.g.setOnClickListener((View.OnClickListener)new jgn(this));
        this.ab = false;
        this.Z = this.g.a();
        this.w.setTextViewInfo(getString(2131297841));
        this.w.setTextViewDate("");
        this.w.setOnClickListener((View.OnClickListener)new jgo(this));
        return;
      case 1:
      case 2:
        this.g.setTextViewInfo(getString(2131297847));
      case 3:
        break;
    } 
    this.g.setTextViewInfo(getString(2131297992));
  }
  
  public void a(String paramString) {
    hav.d((Activity)this, paramString);
  }
  
  public void a(String paramString, int paramInt) {
    boolean bool;
    String str;
    switch (paramInt) {
      default:
        findViewById(paramInt).requestFocus();
        return;
      case 2131758155:
        break;
    } 
    TextInputLayout textInputLayout2 = this.X;
    if (!"".equals(paramString)) {
      str = paramString;
    } else {
      str = "";
    } 
    textInputLayout2.setError(str);
    TextInputLayout textInputLayout1 = this.X;
    if (!"".equals(paramString)) {
      bool = true;
    } else {
      bool = false;
    } 
    textInputLayout1.setErrorEnabled(bool);
  }
  
  public void a(ArrayList<jdx> paramArrayList, jdx paramjdx) {
    this.ae = paramArrayList;
    this.ad = paramjdx;
    this.A.setVisibility(0);
  }
  
  public void a(List<anb> paramList) {
    this.a.setAdapter((amr)new amy(paramList));
    this.a.setOnItemSelectedListener((amt)new jgm(this));
  }
  
  public void a(jdx paramjdx) {
    this.K.setText(paramjdx.M());
    this.Y.setText(paramjdx.b());
    this.L.setText(paramjdx.v());
    this.W.setText(paramjdx.h());
    this.M.setText(paramjdx.N());
    this.N.setText(paramjdx.C());
    this.G.setVisibility(0);
    this.O.setText("nova");
  }
  
  public void b() {
    this.z = new DatePickerDialog((Context)this, (DatePickerDialog.OnDateSetListener)new jgp(this), Calendar.getInstance().get(1), Calendar.getInstance().get(2), Calendar.getInstance().get(5));
    Calendar calendar = Calendar.getInstance();
    calendar.add(5, 1);
    this.z.getDatePicker().setMinDate(calendar.getTimeInMillis());
    this.z.setTitle(getString(2131298013));
  }
  
  public void b(jdx paramjdx) {
    this.J.setText(paramjdx.i());
    this.K.setText(paramjdx.M());
    this.P.setText(paramjdx.Y());
    this.Q.setText(paramjdx.C());
    this.R.setText(paramjdx.d());
    this.S.setText(paramjdx.S());
    this.T.setText(paramjdx.c());
    this.B.setVisibility(0);
    this.C.setVisibility(0);
    this.E.setVisibility(0);
    this.a.setVisibility(8);
    this.U.setVisibility(8);
    this.D.setVisibility(8);
    this.x.setTextViewInfo(getString(2131296687));
    this.x.setTextViewValor("");
    this.y.setTextViewInfo(getString(2131296688));
    this.y.setTextViewValor(paramjdx.Y());
    if (this.ac)
      this.c.setText(naj.a(this.y.a())); 
    this.y.setOnClickListener((View.OnClickListener)new jgq(this));
    this.x.setOnClickListener((View.OnClickListener)new jgr(this));
  }
  
  public void c() {}
  
  public void c(jdx paramjdx) {
    this.K.setText(paramjdx.M());
    this.Y.setText(paramjdx.b());
    this.L.setText(paramjdx.v());
    this.M.setText(paramjdx.N());
    this.N.setText(paramjdx.C());
    this.O.setText(paramjdx.c());
    this.W.setText(paramjdx.h());
    this.G.setVisibility(0);
  }
  
  public void d() {
    frq.d(this.ag, "Continuar");
    this.H.h(this.c.getText().toString());
    this.H.i(this.Z);
    this.H.b(this.ab);
    this.H.j(this.aa.getCuenta());
    this.H.H(this.aa.getAgencia());
    switch (jgj.a[this.H.t().ordinal()]) {
      default:
        g();
        return;
      case 1:
        this.H.b(this.ad.c());
      case 2:
        this.H.b("000000000");
      case 3:
        break;
    } 
    if (this.ac) {
      this.H.e(getString(2131297995));
    } else {
      this.H.e(getString(2131297993));
    } 
    this.H.b(this.ad.c());
  }
  
  public void e() {
    Dialog dialog = new Dialog((Context)this.i, 2131427876);
    dialog.setContentView(2130969210);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    Button button2 = (Button)dialog.findViewById(2131755738);
    Button button1 = (Button)dialog.findViewById(2131758433);
    button2.setText(getString(2131296637));
    jgh jgh = new jgh(this, dialog);
    button1.setText(getString(2131296618));
    jgi jgi = new jgi(this, dialog);
    mxn.a(this.i, dialog, getString(2131299019), getString(2131298191), (View.OnClickListener)jgh, (View.OnClickListener)jgi);
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    gpu.b((Activity)this);
    if (paramInt2 == -1 && paramIntent.hasExtra("conta_fundo_selecionada")) {
      jdx jdx1 = (jdx)paramIntent.getSerializableExtra("conta_fundo_selecionada");
      this.b.b(jdx1);
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968682);
    this.H = (jdx)getIntent().getExtras().getSerializable("fundos_detalhes");
    switch (jgj.a[this.H.t().ordinal()]) {
      default:
        f();
        this.b = (jin)new jio(this);
        this.b.a(this.H);
        return;
      case 1:
      case 2:
        c(2131297846);
        this.ag = "Investimentos_Fundos_Aplicar_Acao";
        frq.a("Fundos_Aplicar", "Investimentos");
      case 3:
        break;
    } 
    c(2131297994);
    this.ag = "Investimentos_Fundos_Resgate_Acao";
    frq.a("Fundos_Resgatar", "Investimentos");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\investimentos\fundos\presentation\FundosAplicacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */