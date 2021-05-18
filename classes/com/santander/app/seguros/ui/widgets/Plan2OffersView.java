package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import kqd;
import kqm;
import kqo;
import kqp;
import krp;
import krz;
import llb;
import mcd;
import mce;
import mcf;
import mcg;
import mch;
import mhj;

public class Plan2OffersView extends LinearLayout {
  private View a;
  
  private Context b;
  
  private FrameLayout c;
  
  private FrameLayout d;
  
  private ImageView e;
  
  private ImageView f;
  
  private ImageView g;
  
  private ImageView h;
  
  private ImageView i;
  
  private TextView j;
  
  private TextView k;
  
  private TextView l;
  
  private TextView m;
  
  private TextView n;
  
  private TextView o;
  
  private TextView p;
  
  private TextView q;
  
  private mch r;
  
  private llb s;
  
  private RecyclerView t;
  
  private krz u;
  
  private krz v;
  
  private List<kqd> w;
  
  private List<kqo> x;
  
  private mcg y;
  
  public Plan2OffersView(Context paramContext) {
    super(paramContext);
    a(paramContext);
    h();
  }
  
  public Plan2OffersView(Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext);
    h();
  }
  
  public Plan2OffersView(Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
    h();
  }
  
  public Plan2OffersView(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext);
    h();
  }
  
  private void a(Context paramContext) {
    this.a = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130969414, null);
    addView(this.a);
    this.b = paramContext;
  }
  
  private void a(mch parammch) {
    switch (mcf.a[parammch.ordinal()]) {
      default:
        this.g.setImageDrawable(getResources().getDrawable(2130839020));
        this.h.setImageDrawable(getResources().getDrawable(2130839020));
        this.e.setVisibility(8);
        this.f.setVisibility(8);
        if (this.y != null)
          this.y.a(parammch); 
        return;
      case 1:
        this.g.setImageDrawable(getResources().getDrawable(2130839021));
        this.h.setImageDrawable(getResources().getDrawable(2130839020));
        this.e.setVisibility(0);
        this.f.setVisibility(8);
        if (this.y != null)
          this.y.a(parammch); 
        return;
      case 2:
        break;
    } 
    this.g.setImageDrawable(getResources().getDrawable(2130839020));
    this.h.setImageDrawable(getResources().getDrawable(2130839021));
    this.e.setVisibility(8);
    this.f.setVisibility(0);
    if (this.y != null)
      this.y.a(parammch); 
  }
  
  private void a(mch parammch, List<kqo> paramList, kqp paramkqp) {
    switch (mcf.a[parammch.ordinal()]) {
      default:
        return;
      case 1:
        a(paramList, this.b, paramkqp);
        return;
      case 2:
        break;
    } 
    a(paramList, this.b, paramkqp);
  }
  
  private void h() {
    this.c = (FrameLayout)this.a.findViewById(2131759238);
    this.d = (FrameLayout)this.a.findViewById(2131759244);
    this.e = (ImageView)this.a.findViewById(2131759243);
    this.f = (ImageView)this.a.findViewById(2131759249);
    this.g = (ImageView)this.a.findViewById(2131759239);
    this.h = (ImageView)this.a.findViewById(2131759245);
    this.l = (TextView)this.a.findViewById(2131759240);
    this.m = (TextView)this.a.findViewById(2131759246);
    this.n = (TextView)this.a.findViewById(2131759241);
    this.o = (TextView)this.a.findViewById(2131759247);
    this.p = (TextView)this.a.findViewById(2131759242);
    this.q = (TextView)this.a.findViewById(2131759248);
    this.i = (ImageView)this.a.findViewById(2131757383);
    this.j = (TextView)this.a.findViewById(2131757384);
    this.k = (TextView)this.a.findViewById(2131759235);
    this.t = (RecyclerView)this.a.findViewById(2131759236);
    a();
  }
  
  public void a() {
    this.g.setImageDrawable(getResources().getDrawable(2130839021));
    this.h.setImageDrawable(getResources().getDrawable(2130839020));
  }
  
  public void a(List<kqo> paramList, Context paramContext, kqp paramkqp) {
    ArrayList<kqo> arrayList = new ArrayList();
    List<kqo> list = paramList;
    if (paramList.size() >= 3) {
      int i;
      for (i = 0; i < paramkqp.d().size(); i++) {
        int j;
        for (j = 0; j < paramList.size(); j++) {
          if (((krp)paramkqp.d().get(i)).a().equals(((kqo)paramList.get(j)).a()))
            arrayList.add(paramList.get(j)); 
        } 
      } 
      list = arrayList;
    } 
    this.t.setNestedScrollingEnabled(false);
    this.t.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager(paramContext, 1, false));
    this.s = new llb(list, paramContext, paramkqp.b());
    this.t.setAdapter((RecyclerView.Adapter)this.s);
  }
  
  public void a(krz paramkrz) {
    this.l.setText(getResources().getString(2131297026));
    this.n.setText(mhj.a(mhj.G(paramkrz.b())));
    this.p.setText(mhj.a(mhj.G(paramkrz.e())));
    this.u = paramkrz;
  }
  
  public void a(krz paramkrz1, krz paramkrz2, Context paramContext, kqp paramkqp, String paramString) {
    if (paramkrz1.g() != null && paramkrz1.g().size() > 0) {
      a(mch.PLAN1, paramkrz1.g(), paramkqp);
      this.x = paramkrz1.g();
      kqm.INSTANCE.setmCoverages(this.x);
    } 
    if (paramkrz1.f() != null && paramkrz1.f().size() > 0) {
      this.w = paramkrz1.f();
      kqm.INSTANCE.setmAssistances(this.w);
    } 
    this.c.setOnClickListener((View.OnClickListener)new mcd(this, paramkrz1, paramkqp));
    this.d.setOnClickListener((View.OnClickListener)new mce(this, paramkrz2, paramkqp));
  }
  
  public mch b() {
    return this.r;
  }
  
  public void b(krz paramkrz) {
    this.m.setText(getResources().getString(2131297026));
    this.o.setText(mhj.a(mhj.G(paramkrz.b())));
    this.q.setText(mhj.a(mhj.G(paramkrz.e())));
    this.v = paramkrz;
  }
  
  public List<kqd> c() {
    return this.w;
  }
  
  public List<kqo> d() {
    return this.x;
  }
  
  public krz e() {
    return (b() == mch.PLAN1) ? f() : g();
  }
  
  public krz f() {
    return (this.u != null) ? this.u : new krz();
  }
  
  public krz g() {
    return (this.v != null) ? this.v : new krz();
  }
  
  public void setCardViewPlanOffer(Drawable paramDrawable, String paramString1, String paramString2) {
    this.i.setImageDrawable(paramDrawable);
    this.j.setText(paramString1);
    this.k.setText(paramString2);
  }
  
  public void setListener(mcg parammcg) {
    this.y = parammcg;
  }
  
  public void setPlanSelected(mch parammch) {
    this.r = parammch;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\Plan2OffersView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */