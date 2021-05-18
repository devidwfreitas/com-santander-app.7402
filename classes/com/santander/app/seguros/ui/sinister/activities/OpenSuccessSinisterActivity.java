package com.santander.app.seguros.ui.sinister.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.ActionBar;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import aor;
import br.com.zup.multistatelayout.MultiStateLayout;
import ejm;
import gkw;
import gnp;
import gnv;
import gpu;
import grs;
import ih;
import im;
import ir;
import is;
import java.io.File;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import kup;
import kux;
import kuy;
import kva;
import kvd;
import kve;
import kvf;
import kwr;
import lqt;
import lqu;
import lqv;
import mhj;
import mzr;
import mzx;
import nab;
import org.json.JSONException;
import org.json.JSONObject;

public class OpenSuccessSinisterActivity extends grs {
  public static final String a = "insurance_response_key";
  
  public static final String b = "inputed_client_data_key";
  
  public static final String c = "insurance_family_key";
  
  public static final String d = "all_client_coverages_key";
  
  public static final String e = "phone-assistance";
  
  private static final int f = 45678;
  
  private TextView A;
  
  private TextView B;
  
  private TextView C;
  
  private TextView D;
  
  private Button E;
  
  private Button F;
  
  private LinearLayout G;
  
  private String H;
  
  private String I;
  
  private kve J;
  
  private String K;
  
  private List<kuy> g;
  
  private kva w;
  
  private String x;
  
  private List<kup> y;
  
  private MultiStateLayout z;
  
  private String a(List<kux> paramList) {
    int i = 0;
    String str = "";
    while (i < paramList.size()) {
      String str1 = String.format("%1$-23s", new Object[] { ((kux)paramList.get(i)).a() });
      String str2 = mhj.a(((kux)paramList.get(i)).d().replace(",", "").replace(".", ""), '0', 6);
      str1 = str1 + str2;
      str = str + str1;
      i++;
    } 
    return String.format("%1$-290s", new Object[] { str });
  }
  
  private void b() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130839140));
    actionBar.setDisplayShowCustomEnabled(true);
    ((TextView)((LayoutInflater)getSystemService("layout_inflater")).inflate(2130969499, null).findViewById(2131755121)).setText(2131298242);
    gpu.a((Activity)this, actionBar, getString(2131298242));
  }
  
  private void c() {
    this.z = (MultiStateLayout)findViewById(2131755279);
    this.A = (TextView)findViewById(2131755971);
    this.B = (TextView)findViewById(2131755972);
    this.C = (TextView)findViewById(2131755973);
    this.D = (TextView)findViewById(2131755974);
    this.E = (Button)findViewById(2131755543);
    this.F = (Button)findViewById(2131755733);
    this.G = (LinearLayout)findViewById(2131755970);
    d();
  }
  
  private void d() {
    this.F.setOnClickListener((View.OnClickListener)new lqt(this));
    this.E.setOnClickListener((View.OnClickListener)new lqu(this));
  }
  
  private void e() {
    if (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission((Context)this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
      ActivityCompat.requestPermissions((Activity)this, new String[] { "android.permission.WRITE_EXTERNAL_STORAGE" }, 45678);
      return;
    } 
    File file = mhj.a((View)this.G, (Context)this);
    if (file != null) {
      mhj.a((Context)this, Uri.fromFile(file), getResources().getString(2131299065));
      return;
    } 
  }
  
  private void f() {
    this.H = this.x;
    String str1 = this.H.substring(0, 2);
    String str2 = this.H.substring(2, 6);
    String str3 = this.H.substring(6, 13);
    String str4 = this.H.substring(13, this.H.length());
    kvd kvd = new kvd();
    kvd.b(str1);
    kvd.c(str2);
    kvd.a(nab.a().b(str3));
    kvd.d(str4);
    kvd.e("0");
    kvd.f(i());
    kvd.g(g());
    kvd.h(h());
    kvd.i(nab.a().b(mzr.m()));
    kvd.j(nab.a().b(this.w.p()));
    kvd.k(this.w.o());
    kvd.l("");
    kvd.m("");
    kvd.n(mhj.a(this.w.j()));
    kvd.o("");
    kvd.p(mhj.a(this.w.b()));
    if (this.w.m() == kvf.AM) {
      str1 = "Manha";
    } else {
      str1 = "Tarde";
    } 
    kvd.q(str1);
    kvd.r(String.valueOf(this.w.k()).replaceAll("/.", ","));
    if (this.w.d() != null && this.w.d().size() > 0)
      kvd.m(a(this.w.d())); 
    this.z.setState(aor.LOADING);
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("X-Application-Key", mzx.a().c().get("appKey"));
      jSONObject.put("Content-Type", "application/json");
    } catch (Exception exception) {
      exception.printStackTrace();
    } 
    try {
      JSONObject jSONObject1 = new JSONObject((new ejm()).b(kvd));
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
      jSONException = null;
    } 
    if (jSONException != null) {
      ir ir = gnp.a().a(kwr.NOTIFY_SINISTER.getEndpoint(), im.POST, jSONObject, (JSONObject)jSONException, true);
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
  }
  
  private String g() {
    for (kuy kuy : this.g) {
      if (kuy.c().longValue() == this.w.r()) {
        Iterator<kup> iterator = this.y.iterator();
        while (iterator.hasNext()) {
          if (Integer.parseInt(((kup)iterator.next()).b()) == Integer.parseInt(((kup)kuy.f().get(0)).b()))
            return mhj.a(((kup)kuy.f().get(0)).a(), '0', 2); 
        } 
      } 
    } 
    return null;
  }
  
  private String h() {
    for (kuy kuy : this.g) {
      if (kuy.c().longValue() == this.w.r())
        for (kup kup : this.y) {
          if (Integer.parseInt(kup.b()) == Integer.parseInt(((kup)kuy.f().get(0)).b()))
            return kup.f(); 
        }  
    } 
    return null;
  }
  
  private String i() {
    for (kuy kuy : this.g) {
      if (kuy.c().longValue() == this.w.r())
        return mhj.a(((kup)kuy.f().get(0)).b(), '0', 3); 
    } 
    return null;
  }
  
  private String j() {
    for (kuy kuy : this.g) {
      if (kuy.c().longValue() == this.w.r())
        return kuy.e(); 
    } 
    return null;
  }
  
  private gkw<is> k() {
    return (gkw<is>)new lqv(this);
  }
  
  public void a() {
    Intent intent = new Intent((Context)this, SinisterDocumentsActivity.class);
    intent.putExtra("sinister-code", (new ejm()).b(this.J));
    intent.putExtra("coverage-key", j());
    intent.putExtra("certificate-key", this.x);
    intent.putExtra("phone-assistance", this.K);
    startActivity(intent);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968720);
    c();
    b();
    if (getIntent() != null && getIntent().getExtras() != null && getIntent().getExtras().containsKey("insurance_response_key")) {
      this.g = Arrays.asList((Object[])(new ejm()).a(getIntent().getExtras().getString("insurance_response_key"), kuy[].class));
      this.w = (kva)(new ejm()).a(getIntent().getExtras().getString("inputed_client_data_key"), kva.class);
      this.x = getIntent().getExtras().getString("insurance_family_key");
      this.y = Arrays.asList((Object[])(new ejm()).a(getIntent().getExtras().getString("all_client_coverages_key"), kup[].class));
    } 
    if (getIntent() != null && getIntent().getExtras() != null && getIntent().getExtras().containsKey("phone-assistance"))
      this.K = getIntent().getExtras().getString("phone-assistance"); 
    f();
  }
  
  public void onRequestPermissionsResult(int paramInt, @NonNull String[] paramArrayOfString, @NonNull int[] paramArrayOfint) {
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfint);
    switch (paramInt) {
      default:
        return;
      case 45678:
        break;
    } 
    if (paramArrayOfint.length >= 1 && paramArrayOfint[0] == 0) {
      e();
      return;
    } 
    mhj.c((Context)this, getResources().getString(2131297378));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\sinister\activities\OpenSuccessSinisterActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */