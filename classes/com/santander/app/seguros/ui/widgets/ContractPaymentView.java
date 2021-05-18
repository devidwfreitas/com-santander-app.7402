package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.AppCompatRadioButton;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import frq;
import java.util.ArrayList;
import java.util.List;
import kql;
import ksd;
import ksw;
import lkt;
import lkx;
import lkz;
import lla;
import lnc;
import lne;
import lnj;
import lnl;
import mbf;
import mbg;
import mbh;
import mbi;
import mbj;
import mbk;
import mbl;
import mgt;

public class ContractPaymentView extends FrameLayout implements lkz {
  private RelativeLayout a;
  
  private LinearLayout b;
  
  private SegurosTextView c;
  
  private SegurosTextView d;
  
  private FrameLayout e;
  
  private AppCompatRadioButton f;
  
  private FrameLayout g;
  
  private AppCompatRadioButton h;
  
  private RecyclerView i;
  
  private lkt j;
  
  private int k = 0;
  
  private String l;
  
  private List<kql> m;
  
  private List<ksd> n;
  
  private mbl o;
  
  private ksd p;
  
  private kql q;
  
  private FragmentManager r;
  
  public ContractPaymentView(@NonNull Context paramContext) {
    super(paramContext);
  }
  
  public ContractPaymentView(@NonNull Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    q();
  }
  
  private void n() {
    LayoutInflater.from(getContext()).inflate(2130969294, (ViewGroup)this);
  }
  
  private void o() {
    this.a.setVisibility(0);
    this.e.setOnClickListener((View.OnClickListener)new mbf(this));
    this.g.setOnClickListener((View.OnClickListener)new mbg(this));
    this.f.setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener)new mbh(this));
    this.h.setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener)new mbi(this));
  }
  
  private void p() {
    ArrayList<lkx> arrayList = new ArrayList();
    lkx lkx1 = new lkx(this.q, lla.ACCOUNT);
    lkx lkx2 = new lkx(this.p, lla.CREDITCARD);
    if (this.k <= 0) {
      this.f.setChecked(true);
      this.f.setButtonTintList(ContextCompat.getColorStateList(getContext(), 2131624409));
      this.h.setButtonTintList(ContextCompat.getColorStateList(getContext(), 2131624410));
      arrayList.add(lkx1);
      arrayList.add(lkx2);
    } else {
      this.h.setChecked(true);
      this.h.setButtonTintList(ContextCompat.getColorStateList(getContext(), 2131624409));
      this.f.setButtonTintList(ContextCompat.getColorStateList(getContext(), 2131624410));
      arrayList.add(lkx2);
      arrayList.add(lkx1);
    } 
    this.j = new lkt(arrayList);
    this.j.a(this);
    this.i.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager(getContext(), 1, false));
    this.i.setAdapter((RecyclerView.Adapter)this.j);
  }
  
  private void q() {
    n();
    this.b = (LinearLayout)findViewById(2131758823);
    this.c = (SegurosTextView)findViewById(2131755789);
    this.d = (SegurosTextView)findViewById(2131755914);
    this.e = (FrameLayout)findViewById(2131758825);
    this.f = (AppCompatRadioButton)findViewById(2131758826);
    this.g = (FrameLayout)findViewById(2131758827);
    this.h = (AppCompatRadioButton)findViewById(2131758828);
    this.i = (RecyclerView)findViewById(2131758829);
    this.a = (RelativeLayout)findViewById(2131758824);
  }
  
  private void r() {
    lnj lnj = lnj.a(this.n, true);
    lnj.a((lnl)new mbj(this));
    lnj.show(this.r, "dialog-select-credit-card");
  }
  
  private void s() {
    if (mgt.d(this.l)) {
      frq.d("Seguros_Contratacao_Vida_Resumo_Acao", "BotaoSelecionarCC");
    } else if (mgt.b(this.l)) {
      frq.d("Seguros_Contratacao_AP_Resumo_Acao", "BotaoSelecionarCC");
    } 
    lnc lnc = lnc.a(this.m);
    lnc.a((lne)new mbk(this));
    lnc.show(this.r, "select-account-dialog");
  }
  
  public int a() {
    return this.k;
  }
  
  public void a(Object paramObject, lla paramlla) {
    if (paramlla == lla.ACCOUNT) {
      s();
      return;
    } 
    r();
  }
  
  public void a(lla paramlla) {
    if (paramlla == lla.ACCOUNT) {
      s();
      return;
    } 
    r();
  }
  
  public FragmentManager b() {
    return this.r;
  }
  
  public List<ksd> c() {
    return this.n;
  }
  
  public String d() {
    return this.l;
  }
  
  public kql e() {
    return this.q;
  }
  
  public ksd f() {
    return this.p;
  }
  
  public void g() {
    this.d.setText(getResources().getString(2131299299));
    p();
    o();
  }
  
  public AppCompatRadioButton h() {
    return this.f;
  }
  
  public AppCompatRadioButton i() {
    return this.h;
  }
  
  public ksw j() {
    if (this.k <= 0) {
      String str1 = "02";
      return new ksw("01", str1);
    } 
    String str = "01";
    return new ksw("01", str);
  }
  
  public ksw k() {
    if (m()) {
      if (this.k >= 1) {
        String str1 = "02";
        return new ksw("02", str1);
      } 
      String str = "01";
      return new ksw("02", str);
    } 
    return null;
  }
  
  public boolean l() {
    return ((this.k <= 0 && this.q != null) || (this.k >= 1 && this.p != null));
  }
  
  public boolean m() {
    return (this.n != null && this.n.size() > 0);
  }
  
  public void setAccountPos(int paramInt) {
    this.k = paramInt;
  }
  
  public void setContracts(List<kql> paramList) {
    this.m = paramList;
  }
  
  public void setContractsGetDetails(kql paramkql) {
    this.q = paramkql;
  }
  
  public void setCreditCardSelected(ksd paramksd) {
    this.p = paramksd;
  }
  
  public void setCreditCards(List<ksd> paramList) {
    this.n = paramList;
  }
  
  public void setFamily(String paramString) {
    this.l = paramString;
  }
  
  public void setFragmentManager(FragmentManager paramFragmentManager) {
    this.r = paramFragmentManager;
  }
  
  public void setListener(mbl parammbl) {
    this.o = parammbl;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\ContractPaymentView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */