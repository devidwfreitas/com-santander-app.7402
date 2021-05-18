package com.santander.app.seguros.ui.sinister.activities;

import android.app.Activity;
import android.os.Bundle;
import android.support.design.widget.TabLayout;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.widget.TextView;
import aor;
import br.com.zup.multistatelayout.MultiStateLayout;
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
import java.util.ArrayList;
import java.util.List;
import kvp;
import kwr;
import lqo;
import lqp;
import lqq;
import lqs;
import mgk;
import mzx;
import org.json.JSONException;
import org.json.JSONObject;

public class MySinisterActivity extends grs {
  private TabLayout a;
  
  private ViewPager b;
  
  private MultiStateLayout c;
  
  private List<kvp> d;
  
  private List<kvp> e;
  
  private List<kvp> f;
  
  private void a() {
    this.a = (TabLayout)findViewById(2131755940);
    this.b = (ViewPager)findViewById(2131755941);
    this.c = (MultiStateLayout)findViewById(2131755279);
  }
  
  private void a(List<kvp> paramList) {
    lqs lqs;
    if (paramList != null && paramList.size() > 0) {
      for (int i = 0; i < paramList.size(); i++) {
        String str = mgk.a(((kvp)paramList.get(i)).j());
        if (!TextUtils.isEmpty(str))
          ((kvp)paramList.get(i)).h(str); 
        if (((kvp)paramList.get(i)).o().equals("05")) {
          this.f.add(paramList.get(i));
        } else {
          this.e.add(paramList.get(i));
        } 
      } 
      lqs = new lqs(this, getSupportFragmentManager(), this.e, this.f);
      b(this.f);
    } else {
      lqs = new lqs(this, getSupportFragmentManager(), null, null);
    } 
    this.b.setAdapter((PagerAdapter)lqs);
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
  
  private void b(List<kvp> paramList) {
    this.a.addOnTabSelectedListener((TabLayout.OnTabSelectedListener)new lqp(this, paramList));
  }
  
  private void c() {
    this.c.setState(aor.LOADING);
    JSONObject jSONObject = new JSONObject();
    try {
      jSONObject.put("X-Application-Key", String.valueOf(mzx.a().c().get("appKey")));
      jSONObject.put("Content-Type", "application/json");
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
    } 
    ir ir = gnp.a().a(kwr.SINISTER.getEndpoint(), im.GET, jSONObject, new JSONObject(), true);
    gnv gnv = new gnv(d(), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, (ih)gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        exception.printStackTrace();
        this.c.setState(aor.ERROR);
        ((TextView)this.c.findViewById(2131757215)).setText(getResources().getString(2131297122));
        return;
      }  
  }
  
  private gkw<is> d() {
    return (gkw<is>)new lqq(this);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968715);
    a();
    b();
    this.d = new ArrayList<kvp>();
    this.e = new ArrayList<kvp>();
    this.f = new ArrayList<kvp>();
    c();
    frq.d("Seguros_Sinistro_MeusSinistros_Acao", "SinistrosAbertos");
    this.a.setupWithViewPager(this.b);
    this.b.addOnPageChangeListener((ViewPager.OnPageChangeListener)new lqo(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\sinister\activities\MySinisterActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */