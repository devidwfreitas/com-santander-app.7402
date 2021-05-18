package com.santander.app.emprestimo.acordo.presentation;

import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.transition.TransitionManager;
import android.support.v4.app.Fragment;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.StyleSpan;
import android.text.style.SuperscriptSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import bfj;
import com.santander.app.components.view.SantanderTextView;
import hfd;
import hfz;
import hgt;
import hgu;
import hhr;

public class AcordoDividaFragment extends Fragment implements View.OnClickListener, hgu {
  private LinearLayout a;
  
  private SantanderTextView b;
  
  private SantanderTextView c;
  
  private RecyclerView d;
  
  private LinearLayout e;
  
  private SantanderTextView f;
  
  private SantanderTextView g;
  
  private FrameLayout h;
  
  private ImageView i;
  
  private hfz j;
  
  private hfd k;
  
  private void a(View paramView) {
    this.a = (LinearLayout)paramView.findViewById(2131757327);
    this.b = (SantanderTextView)paramView.findViewById(2131757328);
    this.c = (SantanderTextView)paramView.findViewById(2131755605);
    this.d = (RecyclerView)paramView.findViewById(2131757331);
    this.e = (LinearLayout)paramView.findViewById(2131757324);
    this.f = (SantanderTextView)paramView.findViewById(2131757325);
    this.g = (SantanderTextView)paramView.findViewById(2131757326);
    this.h = (FrameLayout)paramView.findViewById(2131757329);
    this.i = (ImageView)paramView.findViewById(2131757330);
    this.d.setHasFixedSize(true);
    this.d.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager(getContext()));
    RecyclerView recyclerView = this.d;
    hfd hfd1 = new hfd();
    this.k = hfd1;
    recyclerView.setAdapter((RecyclerView.Adapter)hfd1);
    d();
    paramView.setOnClickListener(this);
    this.h.setOnClickListener(this);
    e();
  }
  
  private void c() {
    this.d.setVisibility(0);
  }
  
  private void d() {
    this.d.setVisibility(8);
  }
  
  private void e() {
    a((hfz)new hgt(this));
  }
  
  private void f() {
    g();
    h();
    j();
  }
  
  private void g() {
    bfj bfj = new bfj();
    bfj.a("Sua dívida total em ");
    bfj.a(this.j.a(), new StyleSpan(1));
    bfj.a(" é:");
    this.b.setText((CharSequence)bfj);
    this.f.setText((CharSequence)bfj);
  }
  
  private void h() {
    bfj bfj = new bfj();
    bfj.a("R$ ", new Object[] { new SuperscriptSpan(), new AbsoluteSizeSpan(20, true) });
    bfj.a(this.j.b());
    this.c.setText((CharSequence)bfj);
    i();
  }
  
  private void i() {
    bfj bfj = new bfj();
    bfj.a("R$ ", new AbsoluteSizeSpan(14, true));
    bfj.a(this.j.b());
    this.g.setText((CharSequence)bfj);
  }
  
  private void j() {
    this.k.a(this.j.c());
  }
  
  private void k() {
    if (getView() != null) {
      ViewGroup viewGroup = (ViewGroup)getView().getRootView();
      if (viewGroup != null) {
        TransitionManager.beginDelayedTransition(viewGroup);
        return;
      } 
    } 
  }
  
  public void a() {
    k();
    this.a.setVisibility(8);
    this.e.setVisibility(0);
  }
  
  public void a(hfz paramhfz) {
    this.j = paramhfz;
    f();
    this.e.setVisibility(8);
    this.a.setVisibility(0);
  }
  
  public void b() {
    k();
    this.e.setVisibility(8);
    this.a.setVisibility(0);
  }
  
  public void onClick(View paramView) {
    if (paramView == this.h) {
      float f;
      boolean bool;
      hhr.a();
      if (this.d.getVisibility() == 0) {
        bool = true;
      } else {
        bool = false;
      } 
      ViewPropertyAnimator viewPropertyAnimator = this.i.animate();
      if (bool) {
        f = 360.0F;
      } else {
        f = 180.0F;
      } 
      viewPropertyAnimator.rotation(f).setDuration(100L).start();
      if (bool) {
        d();
        return;
      } 
    } else {
      return;
    } 
    c();
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    return paramLayoutInflater.inflate(2130969050, paramViewGroup, false);
  }
  
  public void onViewCreated(View paramView, @Nullable Bundle paramBundle) {
    super.onViewCreated(paramView, paramBundle);
    a(paramView);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\acordo\presentation\AcordoDividaFragment.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */