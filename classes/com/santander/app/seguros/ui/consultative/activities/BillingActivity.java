package com.santander.app.seguros.ui.consultative.activities;

import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.app.ActionBar;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import aor;
import br.com.zup.multistatelayout.MultiStateLayout;
import com.santander.app.seguros.ui.widgets.BillingItem;
import com.santander.app.seguros.ui.widgets.BillingItemImage;
import com.santander.app.seguros.ui.widgets.ExpandableLayoutV2;
import frq;
import gkw;
import gnp;
import gnv;
import gpu;
import grs;
import ih;
import im;
import ir;
import is;
import java.util.HashMap;
import java.util.List;
import knx;
import ktp;
import kwr;
import lgi;
import lgj;
import lgk;
import lgm;
import lhw;
import mhj;
import org.json.JSONObject;

public class BillingActivity extends grs {
  public static final String a = "insurance-details-key";
  
  public static final String b = "insurance-name";
  
  private BillingItemImage A;
  
  private LinearLayout B;
  
  private TextView C;
  
  private ImageView D;
  
  private ExpandableLayoutV2 E;
  
  private LinearLayout F;
  
  private TextView G;
  
  private RecyclerView H;
  
  private List<knx> I;
  
  private ktp J;
  
  private String K;
  
  private String L;
  
  private MultiStateLayout c;
  
  private NestedScrollView d;
  
  private TextView e;
  
  private LinearLayout f;
  
  private BillingItem g;
  
  private BillingItem w;
  
  private BillingItem x;
  
  private BillingItem y;
  
  private BillingItem z;
  
  private Drawable a(String paramString) {
    String str2 = String.valueOf(paramString.charAt(0));
    String str1 = null;
    paramString = str1;
    if (!str2.equals("")) {
      if (str2.equals("4"))
        return getResources().getDrawable(2130838892); 
    } else {
      return (Drawable)paramString;
    } 
    paramString = str1;
    return (Drawable)(str2.equals("5") ? getResources().getDrawable(2130838890) : paramString);
  }
  
  private String b(String paramString) {
    String str = "";
    if (!paramString.isEmpty())
      str = paramString.substring(1); 
    return str;
  }
  
  private void b() {
    this.c = (MultiStateLayout)findViewById(2131755293);
    this.d = (NestedScrollView)findViewById(2131755167);
    this.e = (TextView)findViewById(2131755294);
    this.f = (LinearLayout)findViewById(2131755295);
    this.g = (BillingItem)findViewById(2131755296);
    this.w = (BillingItem)findViewById(2131755297);
    this.x = (BillingItem)findViewById(2131755298);
    this.y = (BillingItem)findViewById(2131755300);
    this.z = (BillingItem)findViewById(2131755301);
    this.A = (BillingItemImage)findViewById(2131755299);
    this.B = (LinearLayout)findViewById(2131755302);
    this.C = (TextView)findViewById(2131755303);
    this.D = (ImageView)findViewById(2131755304);
    this.E = (ExpandableLayoutV2)findViewById(2131755305);
    this.F = (LinearLayout)findViewById(2131755306);
    this.G = (TextView)findViewById(2131755307);
    this.H = (RecyclerView)findViewById(2131755310);
    this.B.setOnClickListener((View.OnClickListener)new lgi(this));
  }
  
  private void c() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131296585));
  }
  
  private void d() {
    this.c.setState(aor.LOADING);
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("certificateKey", this.K);
    gnp.a();
    String str = gnp.a(hashMap);
    ir ir = gnp.a().a(kwr.BILLING.getEndpoint() + "?" + str, im.GET, null, new JSONObject(), true);
    gnv gnv = new gnv(k(), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, (ih)gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        return;
      }  
  }
  
  private boolean e() {
    return (this.J != null && mhj.m(this.J.l()).toUpperCase().contains("DEBITO EM CONTA"));
  }
  
  private boolean f() {
    return (this.J != null && mhj.m(this.J.l()).toUpperCase().contains("CREDITO"));
  }
  
  private boolean g() {
    return (this.J != null && mhj.m(this.J.l()).toUpperCase().contains("BOLETO"));
  }
  
  private boolean h() {
    return (this.J != null && mhj.m(this.J.l()).toUpperCase().contains("NA PARCELA DO EMPRESTIMO"));
  }
  
  private void i() {
    if (this.J != null && this.I != null && this.I.size() > 0) {
      this.g.setLineBilling1(8);
      this.z.setLineBilling2(8);
      List<knx> list = this.I;
      if (this.I.size() == 0);
      knx knx = list.get(0);
      this.g.setValue(String.valueOf(this.I.size()));
      if (e()) {
        this.A.setVisibility(8);
        this.w.setValue(getResources().getString(2131297119));
        this.w.setImage(getResources().getDrawable(2130838494));
        this.x.setValue(String.format("%s/%s", new Object[] { mhj.a(this.J.b(), '0', 4), this.J.g() }));
      } else if (f()) {
        this.A.setVisibility(0);
        this.x.setVisibility(8);
        this.w.setValue(getResources().getString(2131297044));
        this.w.setImage(getResources().getDrawable(2130838363));
        this.A.setDesc("XXXX.XXXX.XXXX." + b(this.J.a()));
        if (this.J.a() != null || !this.J.a().equals(""))
          this.A.setImageItem(a(this.J.a())); 
      } else if (g()) {
        this.A.setVisibility(8);
        this.x.setVisibility(8);
        this.w.setValue(getResources().getString(2131298922));
        this.w.setImage(getResources().getDrawable(2130838494));
      } else if (h()) {
        this.A.setVisibility(8);
        this.x.setVisibility(8);
        this.w.setValue(getResources().getString(2131298302));
        this.w.setImage(getResources().getDrawable(2130838494));
      } 
      if (!TextUtils.isEmpty(knx.b().toString())) {
        this.z.setValue(mhj.a(knx.b(), "dd"));
      } else if (knx.a() != null) {
        this.z.setValue(mhj.a(knx.a(), "dd"));
      } 
      if (knx.d().equalsIgnoreCase("PAGA")) {
        this.y.setValue(mhj.a(knx.g()));
      } else {
        this.y.setValue(mhj.a(knx.e()));
      } 
      this.H.setAdapter((RecyclerView.Adapter)new lhw(this.I, this));
      return;
    } 
    this.c.setState(aor.ERROR);
  }
  
  private void j() {
    this.c.setState(aor.LOADING);
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("certificateKey", this.K);
    gnp.a();
    String str = gnp.a(hashMap);
    ir ir = gnp.a().a(kwr.INSURANCE_DETAILS.getEndpoint() + "?" + str, im.GET, null, new JSONObject(), true);
    gnv gnv = new gnv(n(), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, (ih)gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        return;
      }  
  }
  
  private gkw<is> k() {
    return (gkw<is>)new lgk(this);
  }
  
  private gkw<is> n() {
    return (gkw<is>)new lgm(this);
  }
  
  public void a() {
    (new Handler()).postDelayed((Runnable)new lgj(this), 1000L);
    frq.d("Seguros_Consultivo_DadosCobranca_Extrato_Produto_Acao", this.L);
    if (!this.E.a()) {
      ObjectAnimator objectAnimator1 = ObjectAnimator.ofFloat(this.D, View.ROTATION_X, new float[] { 180.0F });
      objectAnimator1.setDuration(400L);
      objectAnimator1.start();
      this.E.b(false);
      return;
    } 
    ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this.D, View.ROTATION_X, new float[] { 0.0F });
    objectAnimator.setDuration(400L);
    objectAnimator.start();
    this.E.setDuration(200);
    this.E.c(true);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968614);
    paramBundle = getIntent().getExtras();
    if (paramBundle != null && paramBundle.containsKey("FIRE_INSURANCES_CERTIFICATE_NUMBER_KEY"))
      this.K = paramBundle.getString("FIRE_INSURANCES_CERTIFICATE_NUMBER_KEY"); 
    if (paramBundle != null && paramBundle.containsKey("insurance-name")) {
      this.L = paramBundle.getString("insurance-name");
    } else {
      this.L = "";
    } 
    b();
    this.H.setNestedScrollingEnabled(false);
    this.H.setHasFixedSize(false);
    this.H.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this, 1, false));
    this.E.c(false);
    c();
    j();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\consultative\activities\BillingActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */