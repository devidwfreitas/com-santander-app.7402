package com.santander.app.lojaonline.presentation;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.StringRes;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.app.AlertDialog;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.PagerSnapHelper;
import android.support.v7.widget.RecyclerView;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import bfj;
import com.santander.app.lojaonline.domain.LojaCampaign;
import gpu;
import grs;
import hbr;
import java.util.List;
import jnq;
import jnr;
import jns;
import jnt;
import jnv;
import jnw;
import jnz;
import joa;
import job;
import miq;
import mxn;

public class LojaOnlineActivity extends grs implements jnv, jnz {
  private static final String a = "LojaOnlineActivity";
  
  private View.OnClickListener A = (View.OnClickListener)new jnr(this);
  
  private View b;
  
  private TextView c;
  
  private RecyclerView d;
  
  private LinearLayout e;
  
  private RecyclerView f;
  
  private TextView g;
  
  private NestedScrollView w;
  
  private joa x;
  
  private Dialog y;
  
  private RecyclerView.OnScrollListener z = (RecyclerView.OnScrollListener)new jnq(this);
  
  private Dialog a(@StringRes int paramInt, LojaCampaign.Campaign paramCampaign) {
    jns jns = new jns(this, paramCampaign, (Context)this);
    AlertDialog alertDialog = (new AlertDialog.Builder((Context)this)).setTitle(2131297207).setMessage(paramInt).setPositiveButton(2131296370, (DialogInterface.OnClickListener)jns).setNegativeButton(2131296776, (DialogInterface.OnClickListener)jns).create();
    alertDialog.setOnShowListener((DialogInterface.OnShowListener)new jnt(this, (Context)this));
    return (Dialog)alertDialog;
  }
  
  private void d(int paramInt) {
    this.e.removeAllViews();
    for (int i = 0; i < paramInt; i++) {
      DotView dotView = new DotView((Context)this);
      this.e.addView((View)dotView);
    } 
    e(0);
  }
  
  private void e(int paramInt) {
    for (int i = 0; i < this.e.getChildCount(); i++) {
      DotView dotView = (DotView)this.e.getChildAt(i);
      if (i == paramInt) {
        dotView.a();
      } else {
        dotView.b();
      } 
    } 
  }
  
  public void a() {
    b();
    this.y = mxn.b((Activity)this);
  }
  
  public void a(int paramInt) {
    this.c.setTextColor(paramInt);
  }
  
  public void a(Uri paramUri) {
    hbr.a().a((Context)this, paramUri);
  }
  
  public void a(LojaCampaign.Campaign paramCampaign) {
    this.x.a(paramCampaign);
  }
  
  public void a(String paramString) {
    gpu.b(getSupportActionBar(), paramString);
  }
  
  public void a(List<LojaCampaign.Campaign> paramList) {
    jnw jnw = new jnw(paramList, true);
    jnw.a(this);
    this.d.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this, 0, false));
    this.d.setHasFixedSize(true);
    this.d.setAdapter((RecyclerView.Adapter)jnw);
    (new PagerSnapHelper()).attachToRecyclerView(this.d);
    this.d.addOnScrollListener(this.z);
    d(jnw.getItemCount());
  }
  
  public void b() {
    if (this.y == null)
      return; 
    this.y.dismiss();
    this.y = null;
  }
  
  public void b(int paramInt) {
    this.b.setBackgroundColor(paramInt);
  }
  
  public void b(LojaCampaign.Campaign paramCampaign) {
    int i;
    if (miq.C().s()) {
      i = 2131296564;
    } else {
      i = 2131296563;
    } 
    a(i, paramCampaign).show();
  }
  
  public void b(String paramString) {
    this.c.setText(paramString);
  }
  
  public void b(List<LojaCampaign.Campaign> paramList) {
    jnw jnw = new jnw(paramList, false);
    jnw.a(this);
    this.f.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this));
    this.f.setHasFixedSize(true);
    this.f.setAdapter((RecyclerView.Adapter)jnw);
  }
  
  public void c() {
    this.d.setVisibility(0);
  }
  
  public void c(LojaCampaign.Campaign paramCampaign) {
    int i;
    if (miq.C().s()) {
      i = 2131296569;
    } else {
      i = 2131296568;
    } 
    a(i, paramCampaign).show();
  }
  
  public void d() {
    this.d.setVisibility(8);
  }
  
  public void e() {
    this.f.setVisibility(0);
  }
  
  public void f() {
    this.f.setVisibility(8);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968708);
    this.w = (NestedScrollView)findViewById(2131755886);
    this.b = findViewById(2131755887);
    this.c = (TextView)findViewById(2131755888);
    this.d = (RecyclerView)findViewById(2131755889);
    this.e = (LinearLayout)findViewById(2131755890);
    this.f = (RecyclerView)findViewById(2131755891);
    this.g = (TextView)findViewById(2131755893);
    findViewById(2131755892).setOnClickListener(this.A);
    this.w.scrollTo(0, 0);
    c("");
    d(0);
    bfj bfj = new bfj(this.g.getText(), new UnderlineSpan());
    this.g.setText((CharSequence)bfj);
    this.x = (joa)new job(this);
    this.x.a();
  }
  
  protected void onDestroy() {
    super.onDestroy();
    this.x.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\lojaonline\presentation\LojaOnlineActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */