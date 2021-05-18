package com.santander.app;

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
import android.support.v4.widget.NestedScrollView;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.DatePicker;
import android.widget.LinearLayout;
import android.widget.TabHost;
import android.widget.TextView;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;
import com.santander.app.components.view.cardLayout.CardLayout;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.contacorrente.domain.ExtratoContract;
import com.santander.app.contacorrente.domain.LancamentoContract;
import com.santander.app.emprestimo.creditopessoal.presentation.CPSimulacaoActivity;
import fhc;
import fhd;
import fhe;
import fhf;
import fhg;
import frq;
import fuy;
import gmy;
import goh;
import grs;
import gwa;
import gwb;
import gwe;
import gwt;
import gww;
import hat;
import ije;
import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import jow;
import mxn;
import nak;

public class ContaMovementActivity extends grs implements DatePickerDialog.OnDateSetListener, Serializable {
  private static final long c = 1L;
  
  private Date A;
  
  private NestedScrollView B;
  
  private NestedScrollView C;
  
  private NestedScrollView D;
  
  private NestedScrollView E;
  
  private LinearLayout F;
  
  private LinearLayout G;
  
  private LinearLayout H;
  
  private LinearLayout I;
  
  private Dialog J;
  
  private ExtratoContract K;
  
  private fuy L;
  
  private CardLayout M;
  
  private CardLayout N;
  
  private CardLayout O;
  
  private gwt P;
  
  private gwa Q;
  
  private boolean R;
  
  private List<LancamentoContract> S;
  
  private List<LancamentoContract> T;
  
  private List<LancamentoContract> U;
  
  private SantanderDropDownView V;
  
  private NestedScrollView.OnScrollChangeListener W = (NestedScrollView.OnScrollChangeListener)new fhf(this);
  
  public int a;
  
  private final String b = "ContaMovementActivity";
  
  private ContaMovementActivity d;
  
  private TabHost e = null;
  
  private Dialog f = null;
  
  private Conta g;
  
  private List<Conta> w;
  
  private int x = 0;
  
  private int y = 0;
  
  private Date z;
  
  private View a(String paramString) {
    View view = getLayoutInflater().inflate(2130968906, null);
    ((TextView)view.findViewById(2131756716)).setText(paramString);
    return view;
  }
  
  private void a() {
    Conta conta;
    if (getIntent().hasExtra("conta_selected")) {
      conta = (Conta)getIntent().getSerializableExtra("conta_selected");
    } else {
      conta = null;
    } 
    List<anb> list = gmy.a(this.w);
    anb anb = null;
    int i = 0;
    while (i < this.w.size()) {
      anb anb1 = anb;
      if (conta != null) {
        anb1 = anb;
        if (conta.equals(this.w.get(i)))
          anb1 = list.get(i); 
      } 
      i++;
      anb = anb1;
    } 
    a(list, anb);
  }
  
  private void a(List<anb> paramList, anb paramanb) {
    this.V.setAdapter((amr)new amy(paramList));
    if (paramanb != null)
      this.V.setCurrentItem(paramanb); 
    this.V.setOnItemSelectedListener((amt)new fhc(this));
  }
  
  private void a(List<LancamentoContract> paramList, LinearLayout paramLinearLayout) {
    LayoutInflater layoutInflater = getLayoutInflater();
    double d1 = Long.valueOf(Long.parseLong(this.g.getValor())).longValue() / 100.0D;
    int i = 0;
    while (i < this.K.getLancamentoList().size()) {
      LancamentoContract lancamentoContract = this.K.getLancamentoList().get(i);
      double d = d1;
      if (lancamentoContract.getHistorico() != null) {
        d = d1;
        if (lancamentoContract.getHistorico().length() != 0)
          if (!lancamentoContract.getHistorico().contains("SALDO ANTERIOR")) {
            d = d1;
          } else {
            d = Double.parseDouble(lancamentoContract.getValor().replaceAll("\\.", "").replace(",", "."));
          }  
      } 
      i++;
      d1 = d;
    } 
    i = 0;
    for (double d2 = d1; i < paramList.size(); d2 = d) {
      String str1;
      String str2;
      View view = layoutInflater.inflate(2130969378, null);
      TextView textView2 = (TextView)view.findViewById(2131759043);
      TextView textView3 = (TextView)view.findViewById(2131759101);
      TextView textView4 = (TextView)view.findViewById(2131759047);
      TextView textView5 = (TextView)view.findViewById(2131759102);
      TextView textView6 = (TextView)view.findViewById(2131759100);
      TextView textView7 = (TextView)view.findViewById(2131759045);
      TextView textView8 = (TextView)view.findViewById(2131759049);
      LancamentoContract lancamentoContract = paramList.get(i);
      double d = d2;
      d1 = d2;
      try {
        if (TextUtils.isEmpty(lancamentoContract.getSaldo())) {
          d1 = d2;
          d = d2 + Double.parseDouble(lancamentoContract.getValor().replaceAll("[.]", "").replaceAll("[,]", "."));
          d1 = d;
          lancamentoContract.setSaldo(d);
        } 
      } catch (Exception exception) {
        lancamentoContract.setSaldo(0.0D);
        d = d1;
      } 
      if (lancamentoContract.getHistorico() != null) {
        str1 = lancamentoContract.getHistorico().trim();
      } else {
        str1 = "";
      } 
      if (lancamentoContract.getDocto() != null) {
        str2 = lancamentoContract.getDocto();
      } else {
        str2 = "";
      } 
      textView8.setText(str2);
      textView3.setText(str1);
      textView2.setText(lancamentoContract.getHistorico());
      goh.b(textView4, lancamentoContract.getValor().replaceAll("\\.", "").replace(",", ".").trim());
      goh.b(textView5, lancamentoContract.getValor().replaceAll("\\.", "").replace(",", ".").trim());
      textView6.setText(nak.w(lancamentoContract.getData()));
      textView7.setText(lancamentoContract.getData());
      view.setOnClickListener((View.OnClickListener)new fhe(this));
      TextView textView1 = (TextView)view.findViewById(2131759102);
      textView1.setText(textView1.getText());
      paramLinearLayout.addView(view);
      i++;
    } 
    this.a++;
    k();
  }
  
  private void a(boolean paramBoolean) {
    if (paramBoolean) {
      j();
      this.a = 0;
      this.S = new ArrayList<LancamentoContract>();
      this.T = new ArrayList<LancamentoContract>();
      this.U = new ArrayList<LancamentoContract>();
    } 
    ArrayList<LancamentoContract> arrayList1 = new ArrayList();
    ArrayList<LancamentoContract> arrayList2 = new ArrayList();
    ArrayList<LancamentoContract> arrayList3 = new ArrayList();
    if (this.K != null && this.K.getLancamentoList() != null) {
      List<LancamentoContract> list = this.K.getLancamentoList();
      for (int i = 0; i < list.size(); i++) {
        LancamentoContract lancamentoContract = list.get(i);
        if (lancamentoContract.getHistorico() == null || lancamentoContract.getHistorico().length() == 0 || !lancamentoContract.getHistorico().contains("SALDO ANTERIOR")) {
          arrayList1.add(lancamentoContract);
          if (lancamentoContract.getValor().contains("-")) {
            arrayList3.add(lancamentoContract);
          } else {
            arrayList2.add(lancamentoContract);
          } 
        } 
      } 
      a(arrayList1, this.F);
      a(arrayList3, this.G);
      a(arrayList2, this.H);
      this.S.addAll(arrayList1);
      this.T.addAll(arrayList2);
      this.U.addAll(arrayList3);
      if (this.S.size() == 0) {
        ((TextView)findViewById(2131756576)).setVisibility(0);
        return;
      } 
    } else {
      return;
    } 
    ((TextView)findViewById(2131756576)).setVisibility(8);
  }
  
  private void b() {
    this.e = (TabHost)findViewById(16908306);
    this.e.setup();
    TabHost.TabSpec tabSpec1 = this.e.newTabSpec("tab_test1");
    tabSpec1.setIndicator(a("TODOS"));
    tabSpec1.setContent(2131756573);
    TabHost.TabSpec tabSpec2 = this.e.newTabSpec("tab_test1");
    tabSpec2.setIndicator(a("DÉBITO"));
    tabSpec2.setContent(2131756577);
    TabHost.TabSpec tabSpec3 = this.e.newTabSpec("tab_test1");
    tabSpec3.setIndicator(a("CRÉDITO"));
    tabSpec3.setContent(2131756580);
    this.e.addTab(tabSpec1);
    this.e.addTab(tabSpec2);
    this.e.addTab(tabSpec3);
    if (this.x == 1) {
      this.e.setCurrentTab(2);
    } else if (this.x == 2) {
      this.e.setCurrentTab(1);
    } else {
      this.e.setCurrentTab(0);
    } 
    this.e.setOnTabChangedListener((TabHost.OnTabChangeListener)new fhd(this));
  }
  
  private void b(boolean paramBoolean) {
    e();
    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
    String str1 = simpleDateFormat.format(this.z);
    String str2 = simpleDateFormat.format(this.A);
    n();
    fhg fhg = new fhg(this, paramBoolean);
    if (this.R) {
      this.Q.a(this.g, str1, str2, this.K, (gwb)fhg);
      return;
    } 
    this.Q.a(this.g, str1, str2, (gwb)fhg);
  }
  
  private void c() {
    a(true);
  }
  
  private void d() {
    this.B.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
    this.C.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
    this.D.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
    this.B.setFillViewport(true);
    this.C.setFillViewport(true);
    this.D.setFillViewport(true);
    this.B.setOnScrollChangeListener(this.W);
    this.C.setOnScrollChangeListener(this.W);
    this.D.setOnScrollChangeListener(this.W);
  }
  
  private void e() {
    if (g())
      return; 
    this.J = mxn.b((Activity)this);
  }
  
  private void f() {
    if (g()) {
      this.J.cancel();
      this.J = null;
    } 
  }
  
  private boolean g() {
    return (this.J != null && this.J.isShowing());
  }
  
  private void h() {
    Calendar calendar = Calendar.getInstance();
    byte b = -6;
    if (this.R)
      b = -100; 
    calendar.add(5, b);
    this.z = calendar.getTime();
    this.A = Calendar.getInstance().getTime();
  }
  
  private void i() {
    this.K = null;
    j();
    b(true);
  }
  
  private void j() {
    this.B.scrollTo(0, 0);
    this.C.scrollTo(0, 0);
    this.D.scrollTo(0, 0);
    if (this.F != null)
      this.F.removeAllViews(); 
    if (this.G != null)
      this.G.removeAllViews(); 
    if (this.H != null)
      this.H.removeAllViews(); 
  }
  
  private void k() {
    this.W.onScrollChange(this.E, this.E.getScrollX(), this.E.getScrollY(), this.E.getScrollX(), this.E.getScrollY());
  }
  
  private void n() {
    if (this.y != 0) {
      SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/yyyy");
      String str1 = simpleDateFormat.format(this.z);
      String str2 = simpleDateFormat.format(this.A);
      frq.d("ContaCorrente_PeriodoExtratoDe", str1);
      frq.d("ContaCorrente_PeriodoExtratoPara", str2);
    } 
  }
  
  public void closeDetails(View paramView) {
    this.f.hide();
  }
  
  public void goEmprestimos(View paramView) {
    List<jow> list = hat.v().a();
    if (list != null && !list.isEmpty() && ((jow)list.get(5)).e() == 1) {
      Intent intent = new Intent((Context)this, CPSimulacaoActivity.class);
      intent.setFlags(67108864);
      startActivity(intent);
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968877);
    c(2131297399);
    this.Q = (gwa)new gwe();
    this.R = this.Q.a();
    this.d = this;
    this.x = 0;
    this.a = 0;
    this.w = this.v.f().q().a();
    this.V = (SantanderDropDownView)findViewById(2131755321);
    b();
    NestedScrollView nestedScrollView = (NestedScrollView)findViewById(2131756573);
    this.B = nestedScrollView;
    this.E = nestedScrollView;
    this.C = (NestedScrollView)findViewById(2131756577);
    this.D = (NestedScrollView)findViewById(2131756580);
    LinearLayout linearLayout = (LinearLayout)findViewById(2131756575);
    this.F = linearLayout;
    this.I = linearLayout;
    this.G = (LinearLayout)findViewById(2131756579);
    this.H = (LinearLayout)findViewById(2131756582);
    d();
    this.M = (CardLayout)findViewById(2131756574);
    this.N = (CardLayout)findViewById(2131756578);
    this.O = (CardLayout)findViewById(2131756581);
    this.P = new gwt((Activity)this, this.M, this.N, this.O, gww.ContaMovement);
    a();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu) {
    if (!this.R)
      getMenuInflater().inflate(2131886096, paramMenu); 
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {
    Bundle bundle;
    Calendar calendar = Calendar.getInstance();
    calendar.set(1, paramInt1);
    calendar.set(2, paramInt2);
    calendar.set(5, paramInt3);
    if (paramDatePicker.isShown()) {
      if (this.y == 0) {
        this.z = calendar.getTime();
        this.y = 1;
        ije ije = new ije();
        bundle = new Bundle();
        bundle.putSerializable("listener", this);
        bundle.putSerializable("title", "Ate");
        ije.setArguments(bundle);
        ije.show(getSupportFragmentManager(), "datePicker");
        frq.d("ContaCorrente_Acao", "SelecionarPeriodo");
        return;
      } 
    } else {
      return;
    } 
    this.A = bundle.getTime();
    i();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
    if (paramInt == 4 && this.f != null && this.f.isShowing()) {
      this.f.hide();
      return true;
    } 
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    switch (paramMenuItem.getItemId()) {
      default:
        return true;
      case 2131759631:
        break;
    } 
    this.y = 0;
    ije ije = new ije();
    Bundle bundle = new Bundle();
    bundle.putSerializable("listener", this);
    bundle.putSerializable("title", "De");
    ije.setArguments(bundle);
    ije.show(getSupportFragmentManager(), "datePicker");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\ContaMovementActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */