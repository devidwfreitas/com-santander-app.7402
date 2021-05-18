package com.santander.app.cadastrodebitoautomatico.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import com.santander.app.components.view.ClickToSelectEditText;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import com.santander.app.widget.Indicator;
import frq;
import fzp;
import fzq;
import fzr;
import fzs;
import fzt;
import fzu;
import fzv;
import fzw;
import fzy;
import gac;
import gad;
import gae;
import gaf;
import gag;
import goo;
import gpd;
import gpm;
import gpu;
import grs;
import hat;
import java.util.ArrayList;
import java.util.List;
import nez;

public class CadastrarDebitoAutomaticoActivity extends grs implements nez {
  private EditText A;
  
  private CheckBox B;
  
  private EditText C;
  
  private LinearLayout D;
  
  private EditText E;
  
  private CheckBox F;
  
  private Button G;
  
  private TextView H;
  
  private LinearLayout I;
  
  private int J = 0;
  
  private gac K;
  
  private gad L;
  
  private Dialog M;
  
  private int N = 1;
  
  private int O = 1;
  
  private int P = 0;
  
  private List<gaf> Q;
  
  private List<gae> R;
  
  private ArrayAdapter<gae> S;
  
  private List<gae> T;
  
  private LinearLayout U;
  
  private final String a = "CadastrarDebitoAutomaticoActivity";
  
  private goo b;
  
  private Indicator c;
  
  private ViewPager d;
  
  private ImageView e;
  
  private ImageView f;
  
  private Conta g;
  
  private List<Conta> w;
  
  private int x = 0;
  
  private Spinner y;
  
  private ClickToSelectEditText z;
  
  private void a(gad paramgad) {
    this.R = new ArrayList<gae>();
    this.R.addAll(paramgad.a());
    this.T = new ArrayList<gae>(this.R);
    this.z.setItems(this.T);
    a(false);
  }
  
  private void a(gag paramgag) {
    this.Q = new ArrayList<gaf>();
    this.Q.add(new gaf("Selecione"));
    for (gaf gaf : paramgag.a()) {
      if (gaf != null)
        this.Q.add(gaf); 
    } 
    ArrayAdapter arrayAdapter = new ArrayAdapter((Context)this, 2130969469, this.Q);
    this.y.setAdapter((SpinnerAdapter)arrayAdapter);
  }
  
  private void b() {
    if (this.A.getText() != null && !this.A.getText().toString().equals("")) {
      String str = this.A.getText().toString();
      this.K.o(str);
    } else {
      this.K.o("");
    } 
    if (this.E.getText() != null && !this.E.getText().toString().equals("")) {
      String str = this.E.getText().toString();
      this.K.B(str.replaceAll("[^A-Za-z_0-9\\s]", ""));
    } else {
      this.K.B("");
    } 
    if (this.C.getText() != null && !this.C.getText().toString().equals("")) {
      String str = this.C.getText().toString();
      this.K.C(str);
      frq.a("Pagamentos_Pagamento_CadastroEmDebitoAutomatico_ValorLimiteMaximoParaDebitoAutomatico", Double.parseDouble(str.replace(".", "").replaceAll(",", ".")));
    } else {
      this.K.C("");
    } 
    if (this.N == 0) {
      frq.d("Pagamentos_Pagamento_CadastroEmDebitoAutomatico_LimiteMaximoParaDebitoAutomatico", "Sim");
      this.K.m("S");
    } else {
      frq.d("Pagamentos_Pagamento_CadastroEmDebitoAutomatico_LimiteMaximoParaDebitoAutomatico", "Nao");
      this.K.m("N");
    } 
    if (this.O == 0) {
      this.K.n("S");
      frq.d("Pagamentos_Pagamento_CadastroEmDebitoAutomatico_AvisoPeloCorreio", "Sim");
    } else {
      this.K.n("N");
      frq.d("Pagamentos_Pagamento_CadastroEmDebitoAutomatico_AvisoPeloCorreio", "Nao");
    } 
    if (this.y.getSelectedItem() != null && !this.y.getSelectedItem().toString().equals(""))
      this.K.k(this.y.getSelectedItem().toString()); 
    if (this.z.a() != null && !"".equals(this.z.a().toString()))
      this.K.j(this.z.a().toString()); 
  }
  
  private void c() {
    this.d = (ViewPager)findViewById(2131756231);
    this.d.setOnTouchListener((View.OnTouchListener)new fzu(this));
    this.c = (Indicator)findViewById(2131756234);
    this.f = (ImageView)findViewById(2131756232);
    this.e = (ImageView)findViewById(2131756233);
    this.b = new goo((Activity)this, this.d, this.c, this.f, this.e);
    this.b.a(this);
    int j = this.w.indexOf(this.g);
    int i = j;
    if (j < 0)
      i = 0; 
    this.b.a(this.w, i);
    this.f.setOnClickListener((View.OnClickListener)new fzv(this));
    this.e.setOnClickListener((View.OnClickListener)new fzw(this));
  }
  
  private boolean d() {
    if (this.y.getSelectedItemPosition() == 0) {
      hat.d().a(this.i, "Por favor, selecione o Tipo de conta");
      return false;
    } 
    if (this.A.getText().toString().trim().isEmpty()) {
      hat.d().a(this.i, "Por favor, preencha o Cód. débito automático");
      return false;
    } 
    e();
    if (this.N == 0) {
      String str;
      if (this.C.getText() != null) {
        str = this.C.getText().toString();
      } else {
        str = "0,00";
      } 
      if (str.equals("0,00")) {
        hat.d().a(this.i, "Por favor, informe o Valor máximo");
        return false;
      } 
      if (str.length() == 0) {
        hat.d().a(this.i, "Por favor, informe o Valor máximo");
        return false;
      } 
    } 
    return true;
  }
  
  private void e() {
    String str = this.A.getText().toString().trim();
    int i = this.A.getText().length();
    if (i < this.P) {
      while (i < this.P) {
        str = "0" + str;
        i++;
      } 
      this.A.setText(str);
    } 
  }
  
  void a() {
    this.K = new gac();
    if (this.w.size() > 0)
      this.g = this.w.get(0); 
    this.y = (Spinner)findViewById(2131756360);
    this.z = (ClickToSelectEditText)findViewById(2131756364);
    this.A = (EditText)findViewById(2131756367);
    this.B = (CheckBox)findViewById(2131756369);
    this.C = (EditText)findViewById(2131756372);
    this.D = (LinearLayout)findViewById(2131756371);
    this.E = (EditText)findViewById(2131756374);
    this.F = (CheckBox)findViewById(2131756377);
    this.U = (LinearLayout)findViewById(2131756376);
    this.G = (Button)findViewById(2131756380);
    this.H = (TextView)findViewById(2131756366);
    this.I = (LinearLayout)findViewById(2131756365);
    this.A.setText("");
    this.A.setClickable(false);
    this.A.setFilters(new InputFilter[] { (InputFilter)new InputFilter.LengthFilter(0) });
    this.A.setFocusableInTouchMode(false);
    this.B.setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener)new fzp(this));
    this.F.setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener)new fzq(this));
    this.U.setVisibility(8);
    this.G.setOnClickListener((View.OnClickListener)new fzr(this));
    this.y.setOnItemSelectedListener((AdapterView.OnItemSelectedListener)new fzs(this));
    (new fzy(this)).execute((Object[])new Void[0]);
    this.z.setOnItemSelectedListener((gpd)new fzt(this));
  }
  
  public void a(int paramInt) {}
  
  public void a(boolean paramBoolean) {
    if (paramBoolean)
      this.y.setSelection(0); 
    this.z.setText("");
    this.z.setSearch(true);
    this.z.setHint("Selecione: ");
    if (this.A != null) {
      this.A.setText("");
      this.A.setFilters(new InputFilter[] { (InputFilter)new InputFilter.LengthFilter(0) });
    } 
    this.C.setText("0,00");
    this.E.setText("");
    if (this.F.isChecked())
      this.F.setChecked(false); 
    if (this.B.isChecked())
      this.B.setChecked(false); 
  }
  
  public void b(int paramInt) {
    gpm.a(this.d, this.e, this.f, this.c, paramInt, this.i);
    if (paramInt != this.J)
      frq.d("Pagamentos_Pagamento_CadastroEmDebitoAutomatico_Acao", "SelecionarContaOrigem"); 
    this.J = paramInt;
    a(true);
  }
  
  public void onBackPressed() {
    Intent intent = new Intent((Context)this, HomeLogadaActivity.class);
    intent.addFlags(67108864);
    startActivity(intent);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968824);
    this.w = this.v.f().q().a();
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    ((TextView)((LayoutInflater)getSystemService("layout_inflater")).inflate(2130969499, null).findViewById(2131755121)).setText("Débito Automático");
    gpu.a((Activity)this, actionBar, "Débito Automático");
    a();
    c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\cadastrodebitoautomatico\activity\CadastrarDebitoAutomaticoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */