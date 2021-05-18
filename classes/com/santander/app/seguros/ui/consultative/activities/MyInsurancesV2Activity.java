package com.santander.app.seguros.ui.consultative.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.GridLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import aor;
import br.com.zup.multistatelayout.MultiStateLayout;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import com.santander.app.seguros.ui.cancellation.activities.CancellationLifeActivity;
import com.santander.app.seguros.ui.cancellation.activities.CancellationResidenceActivity;
import com.santander.app.seguros.ui.sinister.activities.SinisterActivity;
import com.santander.app.seguros.ui.widgets.MultiViewPager;
import com.santander.app.seguros.ui.widgets.ValidityCharV2;
import ejm;
import frq;
import gpu;
import grs;
import ipi;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;
import knz;
import koa;
import kpv;
import kpw;
import krf;
import krg;
import kro;
import ktp;
import ktr;
import kud;
import kue;
import kui;
import kxl;
import kxv;
import kxw;
import kyf;
import kze;
import kzf;
import lgu;
import lgv;
import lgw;
import lgx;
import lgy;
import lgz;
import lha;
import lhb;
import lhc;
import lhd;
import lhe;
import lhf;
import lhg;
import lhh;
import lhi;
import lhj;
import lhk;
import lhl;
import lhy;
import lig;
import lij;
import lis;
import liw;
import mgv;
import mhj;
import mhy;
import miq;
import mys;
import mzr;

public class MyInsurancesV2Activity extends grs implements lij {
  public static String a = "insurance-family";
  
  public static final String b = "true";
  
  public static final String c = "false";
  
  private Button A;
  
  private LinearLayout B;
  
  private TextView C;
  
  private LinearLayout D;
  
  private TextView E;
  
  private TextView F;
  
  private LinearLayout G;
  
  private LinearLayout H;
  
  private LinearLayout I;
  
  private TextView J;
  
  private TextView K;
  
  private TextView L;
  
  private Button M;
  
  private RecyclerView N;
  
  private MultiStateLayout O;
  
  private ValidityCharV2 P;
  
  private MultiStateLayout Q;
  
  private TextView R;
  
  private TextView S;
  
  private TextView T;
  
  private TextView U;
  
  private Button V;
  
  private LinearLayout W;
  
  private TextView X;
  
  private TextView Y;
  
  private mgv Z;
  
  private kpv aa;
  
  private kze ab;
  
  private kxv ac;
  
  private ktp ad;
  
  private List<kue> ae;
  
  private int af = 0;
  
  private kud ag;
  
  private krg ah;
  
  private List<kpw> ai = new ArrayList<kpw>();
  
  private String d = "yyyy-MM-dd";
  
  private MultiStateLayout e;
  
  private ScrollView f;
  
  private TextView g;
  
  private TextView w;
  
  private View x;
  
  private View y;
  
  private MultiViewPager z;
  
  private void a(int paramInt) {
    if (this.ae.size() <= 0)
      return; 
    this.aa = null;
    this.ah = null;
    this.ag = ((kue)this.ae.get(paramInt)).a();
    kud kud1 = this.ag;
    o();
    if (paramInt <= 0) {
      this.x.setVisibility(4);
    } else {
      this.x.setVisibility(0);
    } 
    if (paramInt >= this.ae.size() - 1) {
      this.y.setVisibility(4);
    } else {
      this.y.setVisibility(0);
    } 
    this.w.setText(kud1.d().k());
    if (kud1.d().g()) {
      this.O.setState(aor.CONTENT);
      this.y.setBackgroundColor(ContextCompat.getColor((Context)this.i, 2131624053));
      this.x.setBackgroundColor(ContextCompat.getColor((Context)this.i, 2131624053));
      this.f.smoothScrollTo(0, 0);
      this.g.setText(mhj.r(kud1.g().b()));
      if (c(kud1)) {
        a(lhl.PROCESSING);
        if (e(kud1)) {
          this.V.setVisibility(0);
        } else {
          this.V.setVisibility(8);
        } 
        this.X.setVisibility(0);
        this.X.setText(getResources().getString(2131297612));
        if (kui.a(kud1.b().d())) {
          this.R.setVisibility(8);
          this.S.setText(getResources().getString(2131297655));
        } else if (kui.b(kud1.b().d())) {
          this.R.setVisibility(8);
          this.S.setText(getResources().getString(2131297655));
        } 
        this.T.setText(kud1.i());
        try {
          Date date1 = mhj.a(kud1.e().a(), this.d);
          Date date2 = mhj.a(kud1.e().c(), this.d);
          this.U.setText(String.format("%s - %s", new Object[] { mhj.a(date1), mhj.a(date2) }));
        } catch (Exception exception) {
          exception.printStackTrace();
        } 
        a(kud1, paramInt);
        return;
      } 
      b(kud1, paramInt);
      return;
    } 
    a(lhl.SAIBA_MAIS);
    this.y.setBackgroundColor(ContextCompat.getColor((Context)this.i, 2131624056));
    this.x.setBackgroundColor(ContextCompat.getColor((Context)this.i, 2131624056));
    this.g.setText(kud1.d().e());
    this.E.setText(kud1.d().m());
    this.F.setText((CharSequence)mhj.a((Context)this, Integer.valueOf(ContextCompat.getColor((Context)this.i, 2131624056)), kud1.d().l(), new String[] { getResources().getString(2131296703) }));
    if (kud1.d().n()) {
      this.G.setVisibility(0);
    } else {
      this.G.setVisibility(8);
    } 
    b(kud1);
  }
  
  private void a(String paramString) {
    try {
      this.e.setState(aor.ERROR);
      TextView textView = (TextView)this.e.findViewById(2131757215);
      if (TextUtils.isEmpty(paramString))
        paramString = getResources().getString(2131297122); 
      textView.setText(paramString);
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void a(String paramString, int paramInt) {
    if (u())
      d(); 
    this.C.setText("...");
    this.O.setState(aor.LOADING);
    kud kud1 = this.ag;
    this.ab.b(paramString, (kxl)new lgy(this, paramInt, kud1), (kxl)new lgz(this, paramInt));
  }
  
  private void a(Date paramDate1, Date paramDate2) {
    try {
      Date date = new Date();
      if (paramDate2.after(date)) {
        int i;
        if (paramDate1.after(date)) {
          this.P.setDayText(mhj.a(date, paramDate2));
          this.P.setProgress(0);
          return;
        } 
        this.P.setDayText(mhj.a(date, paramDate2));
        double d = (mhj.a(paramDate1, date) * 100) / mhj.a(paramDate1, paramDate2);
        if (d < 1.0D && d > 0.0D) {
          i = 1;
        } else {
          i = (int)d;
        } 
        this.P.setProgress(i);
        return;
      } 
    } catch (Exception exception) {
      this.P.setDayText(-1);
      this.P.setProgress(0);
      return;
    } 
    this.P.setDayText(0);
    this.P.setProgress(100);
  }
  
  private void a(List<kue> paramList) {
    ktr ktr1 = new ktr();
    ktr1.f("Acidentes Pessoais");
    ktr1.c("Apoio a você e sua família em caso de imprevistos.");
    ktr1.e(2130838314);
    ktr1.c(2130838317);
    ktr1.d(2130838315);
    ktr1.e("Com ele, você e sua família estarão sempre protegidos.");
    ktr1.d("Você pode curtir os bons momentos sem medo. E se alguma surpresa acontecer, fique tranquilo, a gente cuida de tudo para você.");
    ktr1.e(true);
    ktr1.b(3);
    ktr1.f(false);
    ktr ktr2 = new ktr();
    ktr2.f("Vida");
    ktr2.c("Com ele, você e sua família estarão protegidos sempre.");
    ktr2.e(2130838677);
    ktr2.c(2130838679);
    ktr2.d(2130838678);
    ktr2.e("Tranquilidade para você e sua família.");
    ktr2.d("A gente protege quem você mais ama para que vocês possam curtir a vida numa boa.");
    ktr2.e(true);
    ktr2.f(true);
    ktr2.b(2);
    paramList.add(new kue(new kud(ktr1)));
    paramList.add(new kue(new kud(ktr2)));
  }
  
  private void a(kud paramkud, int paramInt) {
    this.Q.setState(aor.LOADING);
    this.C.setText("...");
    kyf kyf = new kyf();
    krf krf = new krf();
    krf.a("CANC");
    krf.a(new kro(paramkud.i()));
    kyf.a(krf, (kxl)new lhk(this, paramInt), (kxl)new lgv(this, paramInt));
  }
  
  private void a(lhl paramlhl) {
    switch (lhc.a[paramlhl.ordinal()]) {
      default:
        return;
      case 1:
        this.Q.setState(aor.CONTENT);
        this.G.setVisibility(8);
        this.H.setVisibility(0);
        this.W.setVisibility(8);
        this.D.setVisibility(8);
        this.B.setVisibility(0);
        this.O.setVisibility(0);
        this.A.setVisibility(8);
        this.X.setVisibility(8);
        return;
      case 2:
        this.Q.setState(aor.CONTENT);
        this.G.setVisibility(8);
        this.H.setVisibility(8);
        this.W.setVisibility(8);
        this.D.setVisibility(0);
        this.B.setVisibility(8);
        this.X.setVisibility(8);
        this.O.setVisibility(8);
        return;
      case 3:
        break;
    } 
    this.Q.setState(aor.CONTENT);
    this.X.setText(getResources().getString(2131297612));
    this.G.setVisibility(8);
    this.H.setVisibility(8);
    this.W.setVisibility(0);
    this.D.setVisibility(8);
    this.X.setVisibility(0);
    this.B.setVisibility(0);
    this.O.setVisibility(8);
    this.A.setVisibility(8);
  }
  
  private void a(boolean paramBoolean) {
    List<knz> list = b(paramBoolean);
    GridLayoutManager gridLayoutManager = new GridLayoutManager((Context)this, list.size(), 1, false);
    lig lig = new lig(list, this.N);
    lig.a(this);
    this.N.setLayoutManager((RecyclerView.LayoutManager)gridLayoutManager);
    this.N.setAdapter((RecyclerView.Adapter)lig);
    if (this.Z != null)
      this.N.removeItemDecoration((RecyclerView.ItemDecoration)this.Z); 
    this.Z = new mgv(list.size(), list.size());
    this.N.addItemDecoration((RecyclerView.ItemDecoration)this.Z);
    this.N.invalidateItemDecorations();
    this.N.setNestedScrollingEnabled(false);
    this.O.setState(aor.CONTENT);
  }
  
  private String b(String paramString) {
    String str = "";
    String[] arrayOfString = paramString.split(" ");
    int j = arrayOfString.length;
    int i = 0;
    for (paramString = str; i < j; paramString = str) {
      String str1 = arrayOfString[i];
      str = paramString;
      if (str1.length() >= 3)
        str = paramString + mhj.p(str1.substring(0, 3)); 
      i++;
    } 
    return paramString;
  }
  
  private List<knz> b(boolean paramBoolean) {
    ArrayList<knz> arrayList = new ArrayList();
    knz knz = new knz();
    knz.a(2130838400);
    knz.a(getString(2131297028));
    knz.b(koa.COVERAGE);
    arrayList.add(knz);
    if (paramBoolean || !t()) {
      knz = new knz();
      knz.a(2130838347);
      knz.a(getString(2131296578));
      knz.b(koa.BENEFICIARIES);
      arrayList.add(knz);
    } 
    knz = new knz();
    knz.a(2130838348);
    knz.a(getString(2131296584));
    knz.b(koa.BILLINGDATA);
    arrayList.add(knz);
    if (r()) {
      knz = new knz();
      knz.a(2130838358);
      knz.a(getString(2131296777));
      knz.b(koa.CANCEL);
      arrayList.add(knz);
    } 
    return arrayList;
  }
  
  private void b() {
    this.e = (MultiStateLayout)findViewById(2131755279);
    this.f = (ScrollView)findViewById(2131755167);
    this.g = (TextView)findViewById(2131755789);
    this.w = (TextView)findViewById(2131755914);
    this.x = findViewById(2131755915);
    this.y = findViewById(2131755916);
    this.z = (MultiViewPager)findViewById(2131755917);
    this.A = (Button)findViewById(2131755920);
    this.B = (LinearLayout)findViewById(2131755921);
    this.C = (TextView)findViewById(2131755922);
    this.D = (LinearLayout)findViewById(2131755924);
    this.E = (TextView)findViewById(2131755925);
    this.F = (TextView)findViewById(2131755926);
    this.G = (LinearLayout)findViewById(2131755927);
    this.H = (LinearLayout)findViewById(2131755929);
    this.P = (ValidityCharV2)findViewById(2131755931);
    this.I = (LinearLayout)findViewById(2131755933);
    this.J = (TextView)findViewById(2131755934);
    this.K = (TextView)findViewById(2131755935);
    this.L = (TextView)findViewById(2131755936);
    this.M = (Button)findViewById(2131755937);
    this.N = (RecyclerView)findViewById(2131755939);
    this.O = (MultiStateLayout)findViewById(2131755938);
    this.Q = (MultiStateLayout)findViewById(2131755923);
    this.R = (TextView)findViewById(2131758857);
    this.S = (TextView)findViewById(2131758858);
    this.T = (TextView)findViewById(2131758860);
    this.U = (TextView)findViewById(2131758864);
    this.V = (Button)findViewById(2131758865);
    this.W = (LinearLayout)findViewById(2131758856);
    this.X = (TextView)findViewById(2131755919);
    this.Y = (TextView)findViewById(2131755928);
    this.M.setOnClickListener((View.OnClickListener)new lgu(this));
    this.V.setOnClickListener((View.OnClickListener)new lhd(this));
    if (mzr.a())
      d(); 
  }
  
  private void b(kud paramkud) {
    ipi ipi = miq.C().f().C();
    if (paramkud.d().j()) {
      this.A.setVisibility(0);
      this.A.setClickable(true);
      this.Y.setVisibility(8);
      if (!v() && !x()) {
        int i = mhj.J(paramkud.d().p());
        if (i == -1) {
          this.Y.setVisibility(0);
          this.A.setVisibility(4);
          this.A.setClickable(false);
          return;
        } 
        this.Y.setVisibility(8);
        this.A.setVisibility(0);
        this.A.setClickable(true);
        this.A.setOnClickListener((View.OnClickListener)new lhj(this, paramkud, i));
        return;
      } 
      if (mhj.e()) {
        this.A.setVisibility(4);
        this.A.setClickable(false);
        this.Y.setVisibility(0);
        return;
      } 
      if (ipi.b("00000109")) {
        d(paramkud);
        return;
      } 
      this.A.setVisibility(4);
      this.A.setClickable(false);
      this.Y.setVisibility(0);
      return;
    } 
    this.A.setVisibility(4);
    this.A.setClickable(false);
    this.Y.setVisibility(0);
  }
  
  private void b(kud paramkud, int paramInt) {
    String str;
    a(lhl.DETAILS);
    if (paramkud.b() != null && kui.d(paramkud.b().d())) {
      this.X.setText(getResources().getString(2131296785));
      this.X.setVisibility(0);
    } else {
      this.X.setVisibility(8);
    } 
    Date date1 = mhj.a(paramkud.e().a(), this.d);
    Date date2 = mhj.a(paramkud.e().c(), this.d);
    ValidityCharV2 validityCharV2 = this.P;
    if (date1 != null && date2 != null) {
      str = mhj.a(date1, "dd/MM/yy");
    } else {
      str = "";
    } 
    validityCharV2.setStartDayText(str);
    validityCharV2 = this.P;
    if (date1 != null && date2 != null) {
      str = mhj.a(date2, "dd/MM/yy");
    } else {
      str = "";
    } 
    validityCharV2.setEndDayText(str);
    a(date1, date2);
    try {
      String str1 = paramkud.b().c();
      str = str1.substring(6, 13);
      str1 = str1.substring(13, str1.length());
      this.K.setText(str);
      this.L.setText(str1);
    } catch (Exception exception) {
      exception.printStackTrace();
    } 
    if (u()) {
      this.I.setVisibility(0);
      if (!a(paramkud)) {
        this.M.setVisibility(0);
        n();
      } else {
        this.M.setVisibility(0);
        d();
      } 
    } else {
      this.I.setVisibility(8);
      this.M.setVisibility(8);
    } 
    if (w()) {
      this.N.setVisibility(8);
    } else {
      this.N.setVisibility(0);
    } 
    a(paramkud.b().c(), paramInt);
  }
  
  private void c() {
    frq.d("Seguros_Cancelamento_Vida_AP_Acao", "BotaoCancelamento");
    Intent intent = new Intent((Context)this, CancellationLifeActivity.class);
    if (this.ah != null) {
      List list = this.ah.f();
      intent.putExtra("processing-beneficiaries-key", mys.a().b(list));
      intent.putExtra("is-processing-key", true);
    } 
    if (this.ag != null && this.ag.d() != null && !TextUtils.isEmpty(this.ag.d().p()))
      intent.putExtra("family-key", this.ag.d().p()); 
    if (this.ag != null && this.ag.i() != null && !TextUtils.isEmpty(this.ag.i()))
      intent.putExtra("position-number", this.ag.i()); 
    startActivity(intent);
  }
  
  private void c(kud paramkud, int paramInt) {
    String str;
    frq.d("Seguros_Consultivo_Contratar_Produto_Acao", mhj.s(paramkud.d().p()).replace(" ", ""));
    if (miq.C().s()) {
      str = getString(2131296564);
    } else {
      str = getString(2131296563);
    } 
    mhj.a((Activity)this, str, getString(paramInt));
  }
  
  private boolean c(kud paramkud) {
    return (paramkud.b() != null && (kui.a(paramkud.b().d()) || kui.b(paramkud.b().d())));
  }
  
  private void d() {
    this.M.setBackground(ContextCompat.getDrawable((Context)this.i, 2130837662));
    this.M.setTextColor(ContextCompat.getColor((Context)this.i, 2131624085));
    this.M.setClickable(false);
  }
  
  private void d(String paramString) {
    this.ac.b(paramString, (kxl)new lha(this), (kxl)new lhb(this));
  }
  
  private void d(kud paramkud) {
    this.A.setOnClickListener((View.OnClickListener)new lgw(this, paramkud));
  }
  
  private void e() {
    if (miq.C().f().C().b("00000109")) {
      lis lis = lis.a();
      lis.a((liw)new lhe(this));
      lis.show(getSupportFragmentManager(), null);
      return;
    } 
    f();
    Intent intent = new Intent((Context)this, SinisterActivity.class);
    intent.putExtra("insurance-data-key", this.ag.b().c());
    intent.putExtra("higher_coverage_key", this.ad.x());
    startActivity(intent);
  }
  
  private boolean e(kud paramkud) {
    return (paramkud != null && paramkud.a() != null && paramkud.a().b() && !mhj.e());
  }
  
  private void f() {
    String str;
    if (this.ag.g() != null && !TextUtils.isEmpty(this.ag.g().c())) {
      str = mhj.m(this.ag.g().c().replace(" ", ".").replace("ç", "c"));
    } else {
      str = mhj.m(this.ag.d().p().replace(" ", ".").replace("ç", "c"));
    } 
    frq.d("Seguros_Sinistro_Acionar_Produto_Acao", str);
  }
  
  private void g() {
    try {
      ActionBar actionBar = getSupportActionBar();
      if (actionBar != null) {
        actionBar.setDisplayShowHomeEnabled(false);
        actionBar.setDisplayShowTitleEnabled(false);
        actionBar.setDisplayShowCustomEnabled(true);
        gpu.a((Activity)this, actionBar, getString(2131298240));
      } 
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void h() {
    i();
  }
  
  private void i() {
    this.e.setState(aor.LOADING);
    this.ab.a((kxl)new lhf(this), (kxl)new lhg(this));
  }
  
  private void j() {
    this.e.setState(aor.LOADING);
    (new Handler()).postDelayed((Runnable)new lhh(this), 400L);
  }
  
  private void k() {
    this.H.setVisibility(0);
    lhy lhy = new lhy(this.ae, this);
    this.z.setAdapter((PagerAdapter)lhy);
    this.z.setClipToPadding(false);
    this.z.setPageTransformer(false, (ViewPager.PageTransformer)new mhy());
    this.z.setScrollDurationFactor(2.0D);
    this.z.addOnPageChangeListener((ViewPager.OnPageChangeListener)new lhi(this));
    this.af = 0;
    a(0);
  }
  
  private void n() {
    this.M.setBackground(ContextCompat.getDrawable((Context)this.i, 2130837669));
    this.M.setTextColor(ContextCompat.getColor((Context)this.i, 2131624121));
    this.M.setClickable(true);
  }
  
  private void o() {
    String str;
    if (this.ag.g() != null && !TextUtils.isEmpty(this.ag.g().c())) {
      str = this.ag.g().c();
    } else if (this.ag.d() != null) {
      str = this.ag.d().p();
    } else {
      str = "";
    } 
    if (!TextUtils.isEmpty(str))
      frq.d("Seguros_Consultivo_Carrossel_Produto_Acao", mhj.m(str.replace(" ", ".").replace("ç", "c"))); 
  }
  
  private void p() {
    if (this.ae == null)
      this.ae = new ArrayList<kue>(); 
    List<ktr> list = q();
    ArrayList<kue> arrayList1 = new ArrayList();
    for (int i = 0; i < this.ae.size(); i++) {
      kue kue = this.ae.get(i);
      kud kud1 = kue.a();
      if (kud1.g() != null && !TextUtils.isEmpty(kud1.g().c()) && !kud1.g().c().toLowerCase().contains("Desemprego") && kud1.b() != null && kui.e(kud1.b().d()))
        for (ktr ktr : list) {
          if (mhj.m(kud1.g().c()).toLowerCase().contains(mhj.m(ktr.p()).toLowerCase())) {
            ktr.d(true);
            kud1.a(ktr);
            arrayList1.add(kue);
          } 
        }  
    } 
    ArrayList<kue> arrayList2 = new ArrayList();
    for (ktr ktr : list) {
      if (!ktr.g() && !ktr.d())
        arrayList2.add(new kue(new kud(ktr))); 
    } 
    if (arrayList1.size() > 0)
      Collections.sort(arrayList1, (Comparator<? super kue>)new lgx(this, arrayList1)); 
    this.ae = arrayList1;
    this.ae.addAll(arrayList2);
  }
  
  private List<ktr> q() {
    ArrayList<ktr> arrayList = new ArrayList();
    ktr ktr = new ktr();
    ktr.f("Residencial");
    ktr.b("Residencial");
    ktr.c("A proteção é para sua casa, a economia é para você.");
    ktr.e(2130838616);
    ktr.c(2130838618);
    ktr.d(2130838617);
    ktr.e("A proteção é para a sua casa, a economia é para você, o seguro residencial é para os dois.");
    ktr.d("Você não precisa se preocupar com gastos inesperados e reparos do dia a dia. A gente protege sua casa, seu negócio e seus bens. Fique tranquilo e aproveite seu tempo sem sustos.");
    ktr.e(true);
    ktr.f(false);
    ktr.b(1);
    arrayList.add(ktr);
    ktr = new ktr();
    ktr.f("Vida");
    ktr.b("Vida");
    ktr.c("Com ele, você e sua família estarão protegidos sempre.");
    ktr.e(2130838677);
    ktr.c(2130838679);
    ktr.d(2130838678);
    ktr.e("Tranquilidade para você e sua família.");
    ktr.d("A gente protege quem você mais ama para que vocês possam curtir a vida numa boa.");
    ktr.e(true);
    ktr.f(true);
    ktr.b(2);
    arrayList.add(ktr);
    ktr = new ktr();
    ktr.f("Acidentes Pessoais");
    ktr.b("Acidentes Pessoais");
    ktr.c("Apoio a você e sua família em caso de imprevistos.");
    ktr.e(2130838314);
    ktr.c(2130838317);
    ktr.d(2130838315);
    ktr.e("Com ele, você e sua família estarão sempre protegidos.");
    ktr.d("Você pode curtir os bons momentos sem medo. E se alguma surpresa acontecer, fique tranquilo, a gente cuida de tudo para você.");
    ktr.e(true);
    ktr.b(3);
    ktr.f(false);
    arrayList.add(ktr);
    ktr = new ktr();
    ktr.f("Cartão Protegido");
    ktr.b("Cartão Protegido");
    ktr.c("Tranquilidade na utilização do seu cartão. Proteção e segurança para você.");
    ktr.e(2130838368);
    ktr.c(2130838370);
    ktr.d(2130838369);
    ktr.e("Tranquilidade na utilização do seu Cartão. Proteção e Segurança para você.");
    ktr.d("Atitudes que parecem simples podem fazer uma grande diferença e contratar o Seguro Cartão Protegido é uma delas. Pagando muito pouco por mês você fica tranqüilo em caso de imprevistos.");
    ktr.e(false);
    ktr.f(true);
    ktr.b(4);
    arrayList.add(ktr);
    ktr = new ktr();
    ktr.f("Proteção Funeral");
    ktr.b("Proteção Funeral");
    ktr.c("Proteção Funeral nos momentos mais difíceis.");
    ktr.e(2130838495);
    ktr.c(2130838498);
    ktr.d(2130838497);
    ktr.e("Conte com o Seguro Proteção Funeral nos momentos mais difíceis.");
    ktr.d("O Seguro Proteção Funeral resolve cada detalhe do funeral em caso de morte do segurado ou de seus dependentes. São coberturas e assistências para cuidar de você e da sua família." + System.getProperty("line.separator") + System.getProperty("line.separator") + getResources().getString(2131296703));
    ktr.e(false);
    ktr.f(false);
    ktr.b(6);
    arrayList.add(ktr);
    ktr = new ktr();
    ktr.f("RENDA_MEDICO");
    ktr.b("Seguro Renda Médicos");
    ktr.c("O seguro ideal para os profissionais da Saúde.");
    ktr.e(2130838543);
    ktr.c(2130838545);
    ktr.d(2130838544);
    ktr.e("O Seguro Renda Médicos garante tranquilidade ao profissionais da saúde.");
    ktr.d("O Seguro Renda Médicos cobre suas despesas em caso de acidentes pessoais cobertos e também uma proteção extra para custos advocatícios imprevistos no decorrer e relacionados à carreira médica." + System.getProperty("line.separator") + System.getProperty("line.separator") + getResources().getString(2131296703));
    ktr.e(false);
    ktr.f(false);
    ktr.c(true);
    ktr.b(7);
    arrayList.add(ktr);
    return arrayList;
  }
  
  private boolean r() {
    return e(this.ag);
  }
  
  private boolean s() {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: iload_2
    //   3: istore_1
    //   4: aload_0
    //   5: getfield ag : Lkud;
    //   8: ifnull -> 161
    //   11: iload_2
    //   12: istore_1
    //   13: aload_0
    //   14: getfield ag : Lkud;
    //   17: invokevirtual d : ()Lktr;
    //   20: ifnull -> 161
    //   23: iload_2
    //   24: istore_1
    //   25: aload_0
    //   26: getfield ad : Lktp;
    //   29: ifnull -> 161
    //   32: iload_2
    //   33: istore_1
    //   34: aload_0
    //   35: getfield ad : Lktp;
    //   38: invokevirtual m : ()Ljava/lang/String;
    //   41: ldc_w ' '
    //   44: ldc_w ''
    //   47: invokevirtual replaceAll : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   50: ldc_w '0'
    //   53: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   56: ifne -> 161
    //   59: aload_0
    //   60: getfield ag : Lkud;
    //   63: invokevirtual d : ()Lktr;
    //   66: invokevirtual p : ()Ljava/lang/String;
    //   69: invokestatic m : (Ljava/lang/String;)Ljava/lang/String;
    //   72: ldc_w ' '
    //   75: ldc_w ''
    //   78: invokevirtual replaceAll : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   81: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   84: astore_3
    //   85: iload_2
    //   86: istore_1
    //   87: aload_3
    //   88: invokestatic isEmpty : (Ljava/lang/CharSequence;)Z
    //   91: ifne -> 161
    //   94: aload_3
    //   95: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   98: ldc_w 'scp'
    //   101: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   104: ifne -> 122
    //   107: iload_2
    //   108: istore_1
    //   109: aload_3
    //   110: invokevirtual toLowerCase : ()Ljava/lang/String;
    //   113: ldc_w 'cartaoprotegido'
    //   116: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   119: ifeq -> 161
    //   122: aload_0
    //   123: aload_0
    //   124: getfield ag : Lkud;
    //   127: invokevirtual b : ()Lkty;
    //   130: invokevirtual c : ()Ljava/lang/String;
    //   133: invokespecial d : (Ljava/lang/String;)V
    //   136: iload_2
    //   137: istore_1
    //   138: aload_0
    //   139: getfield ai : Ljava/util/List;
    //   142: ifnull -> 161
    //   145: iload_2
    //   146: istore_1
    //   147: aload_0
    //   148: getfield ai : Ljava/util/List;
    //   151: invokeinterface size : ()I
    //   156: ifle -> 161
    //   159: iconst_1
    //   160: istore_1
    //   161: iload_1
    //   162: ireturn
  }
  
  private boolean t() {
    if (this.ag != null && this.ag.d() != null) {
      String str = mhj.m(this.ag.d().p()).replaceAll(" ", "").toLowerCase();
      if (this.ad != null && (this.ad.m().replaceAll(" ", "").equalsIgnoreCase("0") || (!str.contains("vida") && !str.contains("acidente") && !str.contains("funeral") && !str.contains("renda_medico"))))
        return true; 
    } 
    return false;
  }
  
  private boolean u() {
    return (this.ag != null && mhj.m(this.ag.d().p()).toUpperCase().contains("RESIDENCIAL"));
  }
  
  private boolean v() {
    return (this.ag != null && mhj.m(this.ag.d().p()).toLowerCase().contains("acidente"));
  }
  
  private boolean w() {
    return (this.ag != null && mhj.m(this.ag.d().p()).toUpperCase().contains("PRESTAMISTA"));
  }
  
  private boolean x() {
    return (this.ag != null && mhj.m(this.ag.d().p()).toLowerCase().contains("vida"));
  }
  
  private boolean y() {
    return (this.ag != null && mhj.m(this.ag.d().p()).toLowerCase().contains("medicos"));
  }
  
  public String a() {
    try {
      return mhj.y(this.ad.i() + ", " + this.ad.e() + " - " + this.ad.j());
    } catch (Exception exception) {
      return "";
    } 
  }
  
  public void a(knz paramknz) {
    Intent intent;
    if (this.ag != null && this.ag.d() != null) {
      str = this.ag.d().p();
    } else {
      str = "";
    } 
    String str = b(str);
    switch (lhc.b[paramknz.c().ordinal()]) {
      default:
        return;
      case 1:
        intent = new Intent((Context)this, CoverageActivity.class);
        if (!TextUtils.isEmpty(str))
          frq.d("Seguros_Consultivo_Coberturas_Produto_Acao", str); 
        intent.putExtra("FIRE_INSURANCES_CERTIFICATE_NUMBER_KEY", this.ag.b().c());
        intent.putExtra("coverage-id", this.ag.b().a());
        intent.putExtra("product-code", this.ag.g().a());
        startActivity(intent);
        return;
      case 2:
        intent = new Intent((Context)this, BeneficiariesActivity.class);
        if (!TextUtils.isEmpty(str))
          frq.d("Seguros_Consultivo_Beneficiarios_Produto_Acao", str); 
        intent.putExtra("FIRE_INSURANCES_CERTIFICATE_NUMBER_KEY", this.ag.b().c());
        intent.putExtra(BeneficiariesActivity.b, this.ag.b().a());
        if (this.aa != null)
          intent.putExtra(BeneficiariesActivity.a, (new ejm()).b(this.aa)); 
        startActivity(intent);
        return;
      case 3:
        if (this.ag.b().c() != null) {
          intent = new Intent((Context)this, BillingActivity.class);
          if (!TextUtils.isEmpty(str)) {
            frq.d("Seguros_Consultivo_DadosCobranca_Produto_Acao", str);
            intent.putExtra("insurance-name", str);
          } 
          intent.putExtra("FIRE_INSURANCES_CERTIFICATE_NUMBER_KEY", this.ag.b().c());
          startActivity(intent);
          return;
        } 
      case 4:
        break;
    } 
    if (u()) {
      frq.d("Seguros_Cancelamento_Residencia_Acao", "BotaoCancelamento");
      String str1 = a();
      Intent intent1 = new Intent((Context)this, CancellationResidenceActivity.class);
      if (!TextUtils.isEmpty(str1))
        intent1.putExtra("residence-address", str1); 
      startActivity(intent1);
      return;
    } 
    if (x() || v()) {
      if (!mzr.a()) {
        frq.d("Seguros_Cancelamento_Vida_AP_Acao", "BotaoCancelamento");
        intent = new Intent((Context)this, CancellationLifeActivity.class);
        if (this.ag != null && this.ag.b() != null && !TextUtils.isEmpty(this.ag.b().c()))
          intent.putExtra("certificate-key", this.ag.b().c()); 
        if (this.ag != null && this.ag.b() != null && !TextUtils.isEmpty(this.ag.b().a()))
          intent.putExtra(BeneficiariesActivity.b, this.ag.b().a()); 
        if (this.ag != null && this.ag.b() != null && !TextUtils.isEmpty(this.ag.b().c()))
          intent.putExtra("family-key", this.ag.d().p()); 
        if (this.ag != null && this.ag.i() != null && !TextUtils.isEmpty(this.ag.i()))
          intent.putExtra("position-number", this.ag.i()); 
        if (this.ag != null && this.ag.b().a() != null && !TextUtils.isEmpty(this.ag.b().a()))
          intent.putExtra("certificate-id", this.ag.b().a()); 
        startActivity(intent);
        return;
      } 
      mhj.c((Context)this);
      return;
    } 
  }
  
  public boolean a(kud paramkud) {
    return (mzr.a() || (paramkud.b() != null && kui.d(paramkud.b().d())));
  }
  
  public void onBackPressed() {
    super.onBackPressed();
    startActivity(new Intent((Context)this, HomeLogadaActivity.class));
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968714);
    this.ab = (kze)new kzf();
    this.ac = (kxv)new kxw();
    b();
    g();
    h();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\consultative\activities\MyInsurancesV2Activity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */