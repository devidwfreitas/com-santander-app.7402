package com.santander.app.seguros.ui.contract.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import aor;
import br.com.zup.multistatelayout.MultiStateLayout;
import gpu;
import grs;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import kpw;
import kqg;
import kqx;
import kqy;
import krq;
import krt;
import ksa;
import ksh;
import ksi;
import ksk;
import ksn;
import kso;
import ksp;
import ksq;
import ksr;
import kss;
import kst;
import ksx;
import kta;
import ktm;
import kto;
import kxl;
import kyp;
import kyt;
import ljo;
import ljp;
import ljq;
import ljr;
import ljs;
import lju;
import ljv;
import ljx;
import ljy;
import ljz;
import lmd;
import mhj;
import mys;
import nab;

public class TermsOfUseActivity extends grs implements lmd {
  public static final String a = "products-key";
  
  public static final String b = "prize-value";
  
  private krq A;
  
  private String B;
  
  private String C;
  
  private TextView c;
  
  private RecyclerView d;
  
  private MultiStateLayout e;
  
  private NestedScrollView f;
  
  private ImageButton g;
  
  private RelativeLayout w;
  
  private kto x;
  
  private Button y;
  
  private kyp z;
  
  private String a(String paramString) {
    paramString = mhj.m(paramString).toLowerCase();
    return paramString.contains("filho") ? "0000000001" : (paramString.contains("enteado") ? "0000000002" : (paramString.contains("irma") ? "0000000003" : (paramString.contains("pai") ? "0000000004" : (paramString.contains("mae") ? "0000000005" : (paramString.contains("conjuge") ? "0000000006" : (paramString.contains("outro") ? "9999999999" : ""))))));
  }
  
  private Date a(Date paramDate, int paramInt) {
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(paramDate);
    calendar.add(5, paramInt);
    return calendar.getTime();
  }
  
  private void b(String paramString) {
    Intent intent = new Intent((Context)this, CsoInsuranceActivity.class);
    intent.putExtra("insurance-name-key", this.B);
    intent.putExtra("proposal-formalization-id", paramString);
    intent.putExtra("status_insurance", "0");
    startActivity(intent);
  }
  
  private void c() {
    try {
      ActionBar actionBar = getSupportActionBar();
      actionBar.setDisplayShowHomeEnabled(false);
      actionBar.setDisplayShowTitleEnabled(false);
      actionBar.setDisplayShowCustomEnabled(true);
      gpu.a((Activity)this, actionBar, getString(2131297580));
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void d() {
    this.w.setVisibility(8);
    this.f.getViewTreeObserver().addOnGlobalLayoutListener((ViewTreeObserver.OnGlobalLayoutListener)new ljo(this));
    this.d.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this, 1, false));
    this.d.setNestedScrollingEnabled(false);
    this.f.setOnScrollChangeListener((NestedScrollView.OnScrollChangeListener)new ljq(this));
    this.y.setOnClickListener((View.OnClickListener)new ljr(this));
    this.g.setOnClickListener((View.OnClickListener)new ljs(this));
    e();
  }
  
  private void e() {
    this.e.setState(aor.LOADING);
    (new kyt()).a(this.A, b(), (kxl)new lju(this), (kxl)new ljv(this));
  }
  
  private int f() {
    Display display = getWindowManager().getDefaultDisplay();
    Point point = new Point();
    display.getSize(point);
    return point.y;
  }
  
  private void g() {
    this.e.setState(aor.LOADING);
    (new Handler()).postDelayed((Runnable)new ljx(this), 500L);
  }
  
  private void h() {
    try {
      if (this.w.getVisibility() == 8) {
        Animation animation = AnimationUtils.loadAnimation((Context)this, 2131034141);
        animation.setDuration(600L);
        animation.setAnimationListener((Animation.AnimationListener)new ljy(this));
        this.w.startAnimation(animation);
      } 
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void i() {
    this.f.getHeight();
    this.f.getChildAt(0).getHeight();
  }
  
  private void j() {
    this.c = (TextView)findViewById(2131755789);
    this.d = (RecyclerView)findViewById(2131756114);
    this.e = (MultiStateLayout)findViewById(2131755279);
    this.f = (NestedScrollView)findViewById(2131756113);
    this.y = (Button)findViewById(2131756115);
    this.g = (ImageButton)findViewById(2131758647);
    this.w = (RelativeLayout)findViewById(2131758646);
  }
  
  private void k() {
    kqg kqg;
    kta kta;
    String str3;
    String str4;
    this.e.setState(aor.LOADING);
    kst kst = new kst();
    ArrayList<ksk> arrayList = new ArrayList();
    krq krq1 = new krq();
    Date date = new Date();
    String str1 = mhj.a(date, "yyyy-MM-dd");
    String str2 = mhj.a(a(date, 3), "yyyy-MM-dd");
    if (ksq.INSTANCE.getIdealProductResponse() != null) {
      kqg kqg1 = ksq.INSTANCE.getIdealProductResponse().a();
      kqg = new kqg();
      String str = nab.a().c(kqg1.d());
      str3 = nab.a().c(kqg1.e());
      str4 = nab.a().c(kqg1.f());
      kqg.d(nab.a().b(str));
      kqg.e(nab.a().b(str3));
      kqg.f(nab.a().b(str4));
    } else {
      kqg = new kqg();
    } 
    kss kss = new kss("W", "Contratação de seguros", "Teste", str1, str2, "I", "SID", "Teste", "05", "0");
    ksr ksr = new ksr("0000000004", "00");
    if (ksq.INSTANCE.getBeneficiaries().size() == 0) {
      str2 = "S";
    } else {
      str2 = "N";
    } 
    if (ksq.INSTANCE.getBeneficiaries() != null && ksq.INSTANCE.getBeneficiaries().size() > 0) {
      kqx kqx = new kqx();
      kqx.a("11111111111");
      kqx.b("13");
      ksa ksa1 = new ksa();
      ksa1.a("11");
      ksa1.b("111111111");
      kqy kqy1 = new kqy();
      kqy1.b("a@a.com");
      kqy1.a("001");
      for (int i = 0; i < ksq.INSTANCE.getBeneficiaries().size(); i++) {
        ksk ksk = new ksk();
        ksk.e("0000000001");
        ksk.d(mhj.a(Integer.toString(i + 1), '0', 4));
        ksk.b(((kpw)ksq.INSTANCE.getBeneficiaries().get(i)).b());
        ksk.c(mhj.a(mhj.a(((kpw)ksq.INSTANCE.getBeneficiaries().get(i)).d(), '0', 3), 11));
        ksk.a(a(((kpw)ksq.INSTANCE.getBeneficiaries().get(i)).c()));
        ksk.a(ksa1);
        ksk.a(kqy1);
        ksk.a(kqx);
        arrayList.add(ksk);
      } 
    } 
    ksn ksn = new ksn("0000000005", "939", "0");
    if (ksq.INSTANCE.getFamilyId() != null) {
      if (ksq.INSTANCE.getFamilyId().toLowerCase().equals("vida")) {
        str1 = "0093";
      } else if (ksq.INSTANCE.getFamilyId().toLowerCase().equals("ap")) {
        str1 = "0082";
      } else {
        str1 = "";
      } 
    } else {
      str1 = "";
    } 
    if (ksq.INSTANCE.getQuotationSelected() != null) {
      kta = new kta(ksq.INSTANCE.getQuotationSelected().c());
      str3 = ksq.INSTANCE.getQuotationSelected().d();
      krq1.a(ksq.INSTANCE.getQuotationSelected().a().a());
      krq1.b(ksq.INSTANCE.getQuotationSelected().a().b());
    } else {
      krq1.a("");
      krq1.b("");
      kta = new kta("");
      str3 = "";
    } 
    if (ksq.INSTANCE.getPreporsalResp() != null) {
      str4 = ((ktm)ksq.INSTANCE.getPreporsalResp().b().get(0)).a();
    } else {
      str4 = "";
    } 
    ksx ksx = new ksx("");
    kqy kqy = ksq.INSTANCE.getContactData().b();
    ksa ksa = ksq.INSTANCE.getContactData().a();
    kso kso = new kso(kqy, new ksh("PRI", "001", "0001"), "0000000001", ksa, "");
    ArrayList<ksp> arrayList1 = new ArrayList();
    if (ksq.INSTANCE.getQuestions() != null && ksq.INSTANCE.getQuestions().size() > 0)
      for (int i = 0; i < ksq.INSTANCE.getQuestions().size(); i++) {
        ksp ksp = new ksp();
        ksi ksi = new ksi(((krt)ksq.INSTANCE.getQuestions().get(i)).c(), "0000000001", ((krt)ksq.INSTANCE.getQuestions().get(i)).b());
        ksp.a(((krt)ksq.INSTANCE.getQuestions().get(i)).f());
        ksp.a(ksi);
        arrayList1.add(ksp);
      }  
    List list = ksq.INSTANCE.getPaymentList();
    kst.a(kqg);
    kst.a(ksr);
    kst.a(kss);
    kst.b(str2);
    kst.a(arrayList);
    kst.a(ksn);
    kst.a(str1);
    kst.c("0000000001");
    kst.d(str3);
    kst.a(krq1);
    kst.e(str4);
    kst.a(ksx);
    kst.a(kso);
    kst.b(arrayList1);
    kst.c(list);
    kst.a(kta);
    this.z.a(kst, (kxl)new ljz(this), (kxl)new ljp(this));
  }
  
  public void a() {
    k();
  }
  
  public String b() {
    try {
      double d = Double.valueOf(this.C).doubleValue() * 12.0D / 100.0D;
      return String.valueOf(d);
    } catch (Exception exception) {
      exception.printStackTrace();
      return "";
    } 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968755);
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("products-key"))
      this.A = (krq)mys.a().a(getIntent().getExtras().getString("products-key"), krq.class); 
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("insurance-name-key")) {
      this.B = getIntent().getExtras().getString("insurance-name-key");
    } else {
      this.B = "";
    } 
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("prize-value")) {
      this.C = getIntent().getExtras().getString("prize-value");
    } else {
      this.C = "";
    } 
    this.z = new kyp();
    c();
    j();
    d();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\contract\activities\TermsOfUseActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */