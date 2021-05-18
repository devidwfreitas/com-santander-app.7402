package com.santander.app.seguros.ui.cancellation.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import aor;
import br.com.zup.multistatelayout.MultiStateLayout;
import com.santander.app.seguros.ui.contract.activities.CsoInsuranceActivity;
import com.santander.app.seguros.ui.widgets.cancellation.CancelSeekBar;
import frq;
import gpu;
import grs;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import kpz;
import kqa;
import kqf;
import kqy;
import krc;
import ksl;
import ksn;
import kso;
import kss;
import kst;
import ksx;
import kxl;
import kxv;
import kxw;
import kyp;
import kze;
import kzf;
import ldy;
import ldz;
import lea;
import led;
import lee;
import lef;
import leg;
import let;
import lft;
import lgd;
import lge;
import mff;
import mgt;
import mhj;
import mys;

public class CancellationLifeActivity extends grs implements lge {
  public static final String a = "certificate-key";
  
  public static final String b = "family-key";
  
  public static final String c = "position-number";
  
  public static final String d = "processing-beneficiaries-key";
  
  public static final String e = "is-processing-key";
  
  public static final String f = "certificate-id";
  
  private MultiStateLayout A;
  
  private View B;
  
  private RelativeLayout C;
  
  private kxv D = (kxv)new kxw();
  
  private lft E;
  
  private let F;
  
  private String G;
  
  private kze H;
  
  private List<kqf> I;
  
  private List<krc> J;
  
  private String K;
  
  private String L;
  
  private String M;
  
  private kyp N;
  
  private boolean O = false;
  
  private ImageView g;
  
  private TextView w;
  
  private TextView x;
  
  private RecyclerView y;
  
  private CancelSeekBar z;
  
  private Date a(Date paramDate, int paramInt) {
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(paramDate);
    calendar.add(5, paramInt);
    return calendar.getTime();
  }
  
  private void a(List<kqf> paramList) {
    this.F = new let(paramList);
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this, 1, false);
    this.y.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.y.setAdapter((RecyclerView.Adapter)this.F);
    this.y.setNestedScrollingEnabled(false);
  }
  
  private void b() {
    try {
      ActionBar actionBar = getSupportActionBar();
      actionBar.setDisplayShowHomeEnabled(false);
      actionBar.setDisplayShowTitleEnabled(false);
      actionBar.setDisplayShowCustomEnabled(true);
      gpu.a((Activity)this, actionBar, getString(2131296786));
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void b(String paramString) {
    Intent intent = new Intent((Context)this, CsoInsuranceActivity.class);
    intent.putExtra("proposal-formalization-id", paramString);
    intent.putExtra("status_insurance", "1");
    intent.putExtra("family-id", this.G);
    intent.putExtra("family-id", this.G);
    startActivity(intent);
  }
  
  private void b(List<kqf> paramList) {
    if (paramList != null && paramList.size() > 0) {
      if (d()) {
        this.x.setText(getResources().getString(2131296580));
      } else {
        this.x.setText(getResources().getString(2131296424));
      } 
      a(paramList);
      return;
    } 
    this.y.setVisibility(8);
    this.B.setVisibility(8);
    this.x.setText(getResources().getString(2131296581));
  }
  
  private List<kqf> c(List<kpz> paramList) {
    if (paramList != null) {
      ArrayList<kqa> arrayList = new ArrayList();
      for (int i = 0; i < paramList.size(); i++)
        arrayList.add(((kpz)paramList.get(i)).a()); 
      String str = mys.a().b(arrayList);
      return new ArrayList<kqf>(Arrays.asList((Object[])mys.a().a(str, kqf[].class)));
    } 
    return null;
  }
  
  private void c() {
    if (!mgt.d(this.G) && !mgt.b(this.G)) {
      this.A.setState(aor.ERROR);
      return;
    } 
    this.w.setText((CharSequence)mhj.a((Context)this, "fonts/opensans_semibold.ttf", Integer.valueOf(ContextCompat.getColor((Context)this, 2131624053)), getResources().getString(2131299199), new String[] { "risco", "desproteger" }));
    a(leg.SAFE);
    if (!this.O) {
      this.y.setVisibility(0);
      e();
      return;
    } 
    this.x.setText(getString(2131296426));
    this.y.setVisibility(8);
  }
  
  private boolean d() {
    return (this.I != null && this.I.size() == 1 && (((kqf)this.I.get(0)).e().equals("CONFORME LEGISLACAO VIGENTE") || ((kqf)this.I.get(0)).e().equals("CONFORME LEGISLAÇÃO VIGENTE")));
  }
  
  private void e() {
    if (TextUtils.isEmpty(this.K))
      return; 
    this.A.setState(aor.LOADING);
    this.D.b(this.M, (kxl)new ldy(this), (kxl)new ldz(this));
  }
  
  private void f() {
    this.g = (ImageView)findViewById(2131755346);
    this.w = (TextView)findViewById(2131755347);
    this.x = (TextView)findViewById(2131755350);
    this.y = (RecyclerView)findViewById(2131755352);
    this.A = (MultiStateLayout)findViewById(2131755279);
    this.B = findViewById(2131755351);
    this.z = (CancelSeekBar)findViewById(2131755349);
    this.z.setListener((mff)new lea(this));
    this.C = (RelativeLayout)findViewById(2131755348);
  }
  
  private void g() {
    lgd lgd;
    if (mgt.d(this.G)) {
      lgd = lgd.Vida;
    } else {
      lgd = lgd.AP;
    } 
    this.E = lft.a(lgd);
    this.E.a(this);
    this.E.show(getSupportFragmentManager(), "dialog-cancellation");
  }
  
  private void h() {
    String str1;
    this.A.setState(aor.LOADING);
    kst kst = new kst();
    if (this.G != null) {
      if (mgt.d(this.G)) {
        str1 = "0093";
      } else if (mgt.b(this.G)) {
        str1 = "0082";
      } else {
        str1 = "";
      } 
    } else {
      str1 = "";
    } 
    ksn ksn = new ksn("0000000005", "939", "0");
    kqy kqy = new kqy();
    kqy.b("a@a.com");
    kqy.a("001");
    kso kso = new kso();
    kso.a(kqy);
    Date date = new Date();
    String str2 = mhj.a(date, "yyyy-MM-dd");
    kss kss = new kss("W", "Cancelamento de seguros", "Estou ciente que a partir da formalização do cancelamento do seguro estarei desprotegido", str2, mhj.a(a(date, 3), "yyyy-MM-dd"), "I", "", "", "05", "0");
    ksx ksx = new ksx(this.L);
    ksl ksl = new ksl("0000000001", "69", str2);
    kst.a(str1);
    kst.a(kso);
    kst.a(ksn);
    kst.a(kss);
    kst.c("0000000002");
    kst.a(ksx);
    kst.a(ksl);
    this.N.a(kst, (kxl)new led(this), (kxl)new lee(this));
  }
  
  public void a() {
    this.z.a(false);
    a(leg.SAFE);
    if (this.F != null)
      this.F.b(); 
  }
  
  public void a(String paramString) {
    h();
  }
  
  public void a(leg paramleg) {
    switch (lef.a[paramleg.ordinal()]) {
      default:
        if (!d() && !this.O)
          this.x.setText(getResources().getString(2131296424)); 
        if (mgt.d(this.G)) {
          this.g.setImageResource(2130838478);
          return;
        } 
        break;
      case 1:
        if (!d() && !this.O)
          this.x.setText(getResources().getString(2131296424)); 
        if (mgt.d(this.G)) {
          this.g.setImageResource(2130838478);
          return;
        } 
        if (mgt.b(this.G)) {
          this.g.setImageResource(2130838318);
          return;
        } 
        return;
      case 2:
        if (!d() && !this.O)
          this.x.setText(getResources().getString(2131296425)); 
        if (mgt.d(this.G)) {
          this.g.setImageResource(2130838480);
          return;
        } 
        if (mgt.b(this.G)) {
          this.g.setImageResource(2130838320);
          return;
        } 
        return;
      case 3:
        if (!d() && !this.O)
          this.x.setText(getResources().getString(2131296424)); 
        if (mgt.d(this.G)) {
          this.g.setImageResource(2130838479);
          return;
        } 
        if (mgt.b(this.G)) {
          this.g.setImageResource(2130838319);
          return;
        } 
        return;
    } 
    if (mgt.b(this.G)) {
      this.g.setImageResource(2130838318);
      return;
    } 
  }
  
  public void onBackPressed() {
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968623);
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("processing-beneficiaries-key"))
      this.J = new ArrayList<krc>(Arrays.asList((Object[])mys.a().a(getIntent().getExtras().getString("processing-beneficiaries-key"), krc[].class))); 
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("is-processing-key"))
      this.O = getIntent().getExtras().getBoolean("is-processing-key"); 
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("certificate-key"))
      this.K = getIntent().getExtras().getString("certificate-key"); 
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("family-key"))
      this.G = getIntent().getExtras().getString("family-key"); 
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("position-number"))
      this.L = getIntent().getExtras().getString("position-number"); 
    if (getIntent().getExtras() != null && getIntent().getExtras().containsKey("certificate-id"))
      this.M = getIntent().getExtras().getString("certificate-id"); 
    frq.d("Seguros_Cancelamento_Vida_AP_Acao", "TelaCancelamentoFamilia");
    this.H = (kze)new kzf();
    this.N = new kyp();
    b();
    f();
    c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\cancellation\activities\CancellationLifeActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */