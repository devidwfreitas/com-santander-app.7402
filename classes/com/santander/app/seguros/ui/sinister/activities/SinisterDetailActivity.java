package com.santander.app.seguros.ui.sinister.activities;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.text.Html;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import aor;
import br.com.zup.multistatelayout.MultiStateLayout;
import com.santander.app.seguros.ui.widgets.ExpandableLayoutV2;
import com.santander.app.seguros.ui.widgets.MultiViewPager;
import ejm;
import frq;
import gpu;
import grs;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import koc;
import kuw;
import kvp;
import kvr;
import kvs;
import kvt;
import kvu;
import kvx;
import kwj;
import kwk;
import kwo;
import kws;
import kwv;
import kwy;
import kxa;
import kxc;
import kxj;
import kxl;
import kyy;
import kyz;
import kzk;
import kzl;
import lro;
import lrp;
import lrq;
import lrr;
import lrs;
import lrt;
import lru;
import lrv;
import lrw;
import lrx;
import lry;
import lrz;
import lsa;
import lsb;
import lsc;
import lsd;
import lse;
import lsf;
import lsg;
import lut;
import lvz;
import lwr;
import lyp;
import mbu;
import me.relex.circleindicator.CircleIndicator;
import mge;
import mhg;
import mhj;
import mhy;
import nfq;
import org.json.JSONObject;

public class SinisterDetailActivity extends grs {
  private TextView A;
  
  private ExpandableLayoutV2 B;
  
  private ImageView C;
  
  private LinearLayout D;
  
  private Dialog E;
  
  private boolean F = false;
  
  private kzk G;
  
  private kyy H;
  
  private Button I;
  
  private boolean J;
  
  private TextView K;
  
  private TextView L;
  
  private TextView M;
  
  private TextView N;
  
  private TextView O;
  
  private TextView P;
  
  private TextView Q;
  
  private TextView R;
  
  private TextView S;
  
  private TextView T;
  
  private LinearLayout U;
  
  private ImageView V;
  
  private ViewPager.OnPageChangeListener W;
  
  private kvr X;
  
  private kvp Y;
  
  private kwy Z;
  
  public MultiStateLayout a;
  
  private List<kvu> aa;
  
  private kvt ab;
  
  private int ac;
  
  private int ad = 0;
  
  private boolean ae = true;
  
  private boolean af = false;
  
  private lyp ag;
  
  private List<kvs> ah;
  
  private lut ai;
  
  private kwv aj;
  
  private boolean ak = true;
  
  private boolean al;
  
  public MultiStateLayout b;
  
  public List<kvs> c;
  
  private TextView d;
  
  private View e;
  
  private View f;
  
  private MultiViewPager g;
  
  private CircleIndicator w;
  
  private View x;
  
  private RelativeLayout y;
  
  private ImageView z;
  
  private int a(List<kwj> paramList, String paramString) {
    if (paramList != null)
      for (kwj kwj : paramList) {
        if (kwj.b().equalsIgnoreCase(paramString))
          return kwj.a().intValue(); 
      }  
    return -1;
  }
  
  private List<kvs> a(int paramInt, List<kvs> paramList) {
    ArrayList<kvs> arrayList = new ArrayList();
    if (paramList != null)
      for (int i = 0; i < paramList.size(); i++) {
        kvs kvs = paramList.get(i);
        if (!TextUtils.isEmpty(kvs.c()) && kvs.c().equals("0" + (paramInt + 1)) && (!kvs.g().equals("001") || !kvs.c().equals("02")))
          arrayList.add(kvs); 
      }  
    return arrayList;
  }
  
  private List<kwk> a(List<kuw> paramList, List<kwj> paramList1) {
    ArrayList<kwk> arrayList = new ArrayList();
    for (kuw kuw : paramList) {
      if (!kuw.a(new String[] { "D" })) {
        if (kuw.e().replaceAll(" ", "").equalsIgnoreCase("090")) {
          kwk kwk1;
          paramList = (List)a(paramList1, kuw);
          if (paramList.isEmpty()) {
            kwk1 = new kwk();
            kwk1.a(kuw);
            kwk1.a(-1);
            kwk1.b(kuw.f());
            arrayList.add(kwk1);
            continue;
          } 
          arrayList.addAll((Collection<? extends kwk>)kwk1);
          continue;
        } 
        kwk kwk = new kwk();
        Integer integer = mhj.B(kuw.e().replaceAll(" ", ""));
        if (integer != null && integer.intValue() >= 500 && integer.intValue() <= 599) {
          String str = b(paramList1, kuw.e());
          if (TextUtils.isEmpty(str))
            str = kuw.f(); 
          kwk.b(str);
        } else {
          kwk.b(kuw.f());
        } 
        kwk.a(kuw);
        kwk.a(a(paramList1, kuw.e()));
        arrayList.add(kwk);
      } 
    } 
    a(arrayList);
    return arrayList;
  }
  
  private List<kwk> a(List<kwj> paramList, kuw paramkuw) {
    ArrayList<kwk> arrayList = new ArrayList();
    if (paramList != null)
      for (kwj kwj : paramList) {
        if (kwj.b().equalsIgnoreCase("090")) {
          kwk kwk = new kwk();
          kwk.a(paramkuw);
          kwk.a(kwj.a().intValue());
          kwk.b(kwj.c());
          arrayList.add(kwk);
        } 
      }  
    return arrayList;
  }
  
  private void a(int paramInt) {
    this.G.b(this.Y, (kxl)new lro(this), (kxl)new lrz(this));
  }
  
  private void a(int paramInt1, int paramInt2, String paramString) {
    this.d.setText(paramString);
    if (paramInt1 > paramInt2) {
      this.d.setTextColor(getResources().getColor(2131624078));
      return;
    } 
    if (paramInt1 == o()) {
      this.d.setTextColor(getResources().getColor(2131624091));
      return;
    } 
    this.d.setTextColor(getResources().getColor(2131624042));
  }
  
  private void a(List<kwk> paramList) {
    HashMap<Object, Object> hashMap;
    if (paramList != null && paramList.size() > 0) {
      try {
        String str = mhj.a((Context)this, "jsons/sinister/document_info.json");
        hashMap = new HashMap<Object, Object>();
        JSONObject jSONObject = new JSONObject(str);
        Iterator<String> iterator1 = jSONObject.keys();
        while (iterator1.hasNext()) {
          String str1 = iterator1.next();
          hashMap.put(str1, (new ejm()).a(jSONObject.getString(str1), koc.class));
        } 
      } catch (Exception exception) {
        exception.printStackTrace();
        return;
      } 
    } else {
      return;
    } 
    Iterator<kwk> iterator = exception.iterator();
    while (true) {
      if (iterator.hasNext()) {
        String str;
        boolean bool;
        kwk kwk = iterator.next();
        if (hashMap.containsKey(kwk.d().e())) {
          str = ((koc)hashMap.get(kwk.d().e())).a();
        } else {
          str = kwk.g();
        } 
        kwk.b(str);
        kuw kuw = kwk.d();
        if (hashMap.containsKey(kwk.d().e())) {
          bool = ((koc)hashMap.get(kwk.d().e())).c();
        } else {
          bool = false;
        } 
        kuw.a(bool);
        continue;
      } 
      return;
    } 
  }
  
  private void a(kvx paramkvx) {
    if (paramkvx != null) {
      switch (lry.a[paramkvx.ordinal()]) {
        default:
          return;
        case 1:
          if (!this.F) {
            frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_Acao", "Avisado");
            this.F = true;
          } 
          frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_SetaDetalhes_Acao", "Avisado");
          return;
        case 2:
          if (!this.F) {
            frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_Acao", "Vistoria");
            this.F = true;
          } 
          frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_SetaDetalhes_Acao", "Vistoria");
          return;
        case 3:
          if (!this.F) {
            frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_Acao", "Documentacao");
            this.F = true;
          } 
          frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_SetaDetalhes_Acao", "Documentacao");
          return;
        case 4:
          if (!this.F) {
            frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_Acao", "Analise");
            this.F = true;
          } 
          frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_SetaDetalhes_Acao", "Analise");
          return;
        case 5:
          break;
      } 
      if (!this.F) {
        frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_Acao", "Concluido");
        this.F = true;
      } 
      frq.d("Seguros_Sinistro_MeusSinistros_Carrossel_SetaDetalhes_Acao", "Concluido");
      return;
    } 
  }
  
  private String b(List<kwj> paramList, String paramString) {
    if (paramList != null)
      for (kwj kwj : paramList) {
        if (kwj.b().equalsIgnoreCase(paramString))
          return mhj.x(kwj.c()); 
      }  
    return "";
  }
  
  private void b(List<kwk> paramList) {
    if (this.ah == null) {
      this.ah = new ArrayList<kvs>();
    } else {
      g();
    } 
    if (paramList != null && paramList.size() > 0) {
      kvs kvs = new kvs();
      kvs.a(this.Y.e());
      kvs.d(getResources().getString(2131298448));
      kvs.a(paramList);
      this.ah.add(kvs);
    } 
    if (this.ad > this.ac) {
      if (this.ah == null || this.ah.isEmpty()) {
        a((Fragment)lwr.a(null, this.Y, this.X), "sinister-details-fragment", this.ae);
        return;
      } 
      a((Fragment)lwr.a(this.ah, this.Y, this.X), "sinister-details-fragment", this.ae);
      return;
    } 
    a((Fragment)lwr.a(this.ah, this.Y, this.X), "sinister-details-fragment", this.ae);
  }
  
  private void b(boolean paramBoolean) {
    float[] arrayOfFloat = new float[2];
    if (paramBoolean) {
      arrayOfFloat[0] = 0.0F;
      arrayOfFloat[1] = 1.0F;
    } else {
      arrayOfFloat[0] = 1.0F;
      arrayOfFloat[1] = 0.0F;
    } 
    ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this.x, View.ALPHA, arrayOfFloat);
    objectAnimator.setDuration(300L);
    objectAnimator.addListener((Animator.AnimatorListener)new lrr(this, paramBoolean));
    objectAnimator.start();
  }
  
  private boolean b(int paramInt) {
    return (e(paramInt) != null && e(paramInt).e() == kvx.DOCUMENTATION);
  }
  
  private void c(List<kvu> paramList) {
    if (this.c != null && this.c.size() > 0)
      for (int i = 0; i < this.c.size(); i++) {
        String str;
        kvs kvs = this.c.get(i);
        if (TextUtils.isEmpty(kvs.d())) {
          str = "";
        } else {
          str = kvs.d().substring(0, 3);
        } 
        if (kvs.c().equals("02") && str.equals("002") && n())
          for (kvu kvu : paramList) {
            if (kvu.e() == kvx.SURVEY)
              kvu.b(false); 
          }  
        if (kvs.c().equals("03") && str.equals("003"))
          for (kvu kvu : paramList) {
            if (kvu.e() == kvx.DOCUMENTATION)
              kvu.b(false); 
          }  
      }  
    if (paramList.size() > 0) {
      for (kvu kvu : paramList) {
        if (kvu.e() == kvx.DOCUMENTATION)
          this.al = kvu.d(); 
      } 
      this.d.setText(((kvu)paramList.get(this.ac)).c());
      this.ai = new lut(paramList, this);
      this.ai.a(this.ac);
      f(this.ac);
      this.g.setAdapter((PagerAdapter)this.ai);
      this.ad = this.ac;
      this.g.setPageTransformer(false, (ViewPager.PageTransformer)new mhy());
      this.g.setScrollDurationFactor(2.0D);
      this.w.setViewPager((ViewPager)this.g);
      if (this.W != null) {
        this.g.removeOnPageChangeListener(this.W);
        this.W = null;
      } 
      this.W = (ViewPager.OnPageChangeListener)new lsc(this, paramList);
      this.g.addOnPageChangeListener(this.W);
      this.g.setCurrentItem(this.ac, true);
    } 
  }
  
  private void c(boolean paramBoolean) {
    if (paramBoolean) {
      AnimatorSet animatorSet1 = (new AnimatorSet()).setDuration(400L);
      ObjectAnimator objectAnimator1 = ObjectAnimator.ofFloat(this.z, View.TRANSLATION_Y, new float[] { (this.B.getTop() + this.U.getTop() - this.z.getHeight() / 2) });
      ObjectAnimator objectAnimator2 = ObjectAnimator.ofFloat(this.D, View.TRANSLATION_X, new float[] { getResources().getDimension(2131362076) });
      animatorSet1.playTogether(new Animator[] { (Animator)ObjectAnimator.ofFloat(this.A, "alpha", new float[] { 0.4F, 0.0F }), (Animator)objectAnimator1, (Animator)objectAnimator2, (Animator)ObjectAnimator.ofFloat(this.z, View.SCALE_X, new float[] { 1.0F, 1.2F }), (Animator)ObjectAnimator.ofFloat(this.z, View.SCALE_Y, new float[] { 1.0F, 1.2F }) });
      animatorSet1.addListener((Animator.AnimatorListener)new lrs(this));
      mhj.b((View)this.A);
      d(true);
      animatorSet1.start();
      return;
    } 
    AnimatorSet animatorSet = (new AnimatorSet()).setDuration(200L);
    animatorSet.playTogether(new Animator[] { (Animator)ObjectAnimator.ofFloat(this.A, "alpha", new float[] { 0.4F, 1.0F }), (Animator)ObjectAnimator.ofFloat(this.z, View.TRANSLATION_Y, new float[] { 0.0F }), (Animator)ObjectAnimator.ofFloat(this.D, View.TRANSLATION_X, new float[] { 0.0F }), (Animator)ObjectAnimator.ofFloat(this.z, View.SCALE_X, new float[] { 1.2F, 1.0F }), (Animator)ObjectAnimator.ofFloat(this.z, View.SCALE_Y, new float[] { 1.2F, 1.0F }) });
    animatorSet.addListener((Animator.AnimatorListener)new lrt(this));
    mhj.a((View)this.A);
    d(false);
    animatorSet.start();
  }
  
  private void d(int paramInt) {
    a(false);
    if (paramInt <= this.ac) {
      if (this.c != null) {
        this.ah = a(paramInt, this.c);
        if (paramInt == o()) {
          a((Fragment)lvz.a(this.ah, this.Y, this.X), "completed-sinister-fragment", this.ae);
          this.af = true;
          return;
        } 
      } else {
        return;
      } 
      if (b(paramInt)) {
        c();
        return;
      } 
      a((Fragment)lwr.a(this.ah, this.Y), "sinister-details-fragment", this.ae);
      return;
    } 
    if (b(paramInt)) {
      this.ah = a(paramInt, this.c);
      c();
      return;
    } 
    a((Fragment)lwr.a(null, this.Y, this.X), "sinister-details-fragment", this.ae);
  }
  
  private void d(List<kuw> paramList) {
    kwo kwo = new kwo();
    kwo.a(this.Y.v());
    kwo.b(this.Y.a());
    kwo.c(this.Y.b());
    kwo.d(this.Y.c());
    kwo.e(this.Y.d());
    this.H.a(kwo, (kxl)new lsg(this, paramList), (kxl)new lrp(this, paramList));
  }
  
  private void d(boolean paramBoolean) {
    if (paramBoolean) {
      ObjectAnimator objectAnimator1 = ObjectAnimator.ofFloat(this.V, View.ROTATION, new float[] { 0.0F });
      objectAnimator1.setDuration(400L);
      objectAnimator1.start();
      return;
    } 
    ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this.V, View.ROTATION, new float[] { 180.0F });
    objectAnimator.setDuration(400L);
    objectAnimator.start();
  }
  
  private kvu e(int paramInt) {
    return (this.aa != null && paramInt <= this.aa.size() - 1) ? this.aa.get(paramInt) : null;
  }
  
  private void e() {
    if (this.Y != null) {
      this.C.setVisibility(4);
      p();
      h();
      return;
    } 
    this.b.setState(aor.EMPTY);
  }
  
  private void e(boolean paramBoolean) {
    if (paramBoolean) {
      this.x.setClickable(true);
      this.y.setClickable(true);
      return;
    } 
    this.x.setClickable(false);
    this.y.setClickable(false);
  }
  
  private void f() {
    String str1 = "";
    String str2 = str1;
    if (this.c != null) {
      str2 = str1;
      if (this.c.size() > 0) {
        Iterator<kvs> iterator = this.c.iterator();
        while (true) {
          str2 = str1;
          if (iterator.hasNext()) {
            kvs kvs = iterator.next();
            if (mhj.x(kvs.c()).equals("02")) {
              if (TextUtils.isEmpty(mhj.x(kvs.d()))) {
                str2 = "";
              } else {
                str2 = mhj.x(kvs.d()).substring(0, 3);
              } 
              if (str2.equals("005")) {
                str2 = kvs.d().substring(3);
              } else {
                if (str2.equals("003"))
                  str1 = kvs.d().substring(3); 
                continue;
              } 
            } else {
              continue;
            } 
          } 
          this.N.setText((CharSequence)Html.fromHtml(str2));
          return;
        } 
      } 
    } 
    this.N.setText((CharSequence)Html.fromHtml(str2));
  }
  
  private void f(int paramInt) {
    if (paramInt == 0) {
      this.e.setVisibility(4);
    } else {
      this.e.setVisibility(0);
    } 
    if (paramInt == this.aa.size() - 1) {
      this.f.setVisibility(4);
    } else {
      this.f.setVisibility(0);
    } 
    if (paramInt > this.ac) {
      this.f.setBackgroundColor(getResources().getColor(2131624078));
      this.e.setBackgroundColor(getResources().getColor(2131624078));
      return;
    } 
    this.f.setBackgroundColor(getResources().getColor(2131624042));
    this.e.setBackgroundColor(getResources().getColor(2131624042));
  }
  
  private kvx g(int paramInt) {
    switch (paramInt) {
      default:
        return null;
      case 0:
        return kvx.ADVISED;
      case 1:
        return kvx.SURVEY;
      case 2:
        return kvx.DOCUMENTATION;
      case 3:
        return kvx.ANALYSIS;
      case 4:
        break;
    } 
    return kvx.COMPLETED;
  }
  
  private void g() {
    for (kvs kvs : this.ah) {
      if (kvs.a() != null) {
        this.ah.remove(kvs);
        break;
      } 
    } 
  }
  
  private void h() {
    this.b.setState(aor.LOADING);
    this.G.a(this.Y, (kxl)new lsa(this), (kxl)new lsb(this));
  }
  
  private void i() {
    this.P.setText(this.Y.u());
    this.Q.setText(this.Y.s());
    if (this.Y.e() != null)
      this.S.setText(mhj.a(this.Y.e())); 
    this.T.setText(this.Y.r());
    if (!TextUtils.isEmpty(this.X.h())) {
      this.A.setText(String.format("%s %s", new Object[] { getResources().getString(2131297029), mhj.p(this.X.h()) }));
      this.O.setText(String.format("%s %s", new Object[] { getResources().getString(2131297029), mhj.p(this.X.h()) }));
    } 
    this.K.setText(this.X.n());
    if (!TextUtils.isEmpty(this.X.B()))
      if (mhj.A(this.X.B()) != null) {
        this.L.setText(mhj.a(this.X.B()));
      } else {
        this.L.setText(this.X.B());
      }  
    String str = mhj.y(String.format("%s, %s,\n%s-%s-%s", new Object[] { mhj.x(this.X.r()), mhj.x(this.X.s()), mhj.x(this.X.u()), mhj.x(this.X.v()), mhj.x(this.X.w()) }));
    if (!TextUtils.isEmpty(str.replaceAll(" ", "").replaceAll(",", "").replaceAll("-", "")))
      this.M.setText(str); 
    this.N.setText("...");
  }
  
  private void j() {
    this.d = (TextView)findViewById(2131755789);
    this.e = findViewById(2131755915);
    this.f = findViewById(2131755916);
    this.g = (MultiViewPager)findViewById(2131756040);
    this.w = (CircleIndicator)findViewById(2131756042);
    this.a = (MultiStateLayout)findViewById(2131756043);
    this.x = findViewById(2131756044);
    this.y = (RelativeLayout)findViewById(2131756038);
    this.z = (ImageView)findViewById(2131756048);
    this.A = (TextView)findViewById(2131756049);
    this.I = (Button)findViewById(2131756045);
    this.B = (ExpandableLayoutV2)findViewById(2131756050);
    this.C = (ImageView)findViewById(2131756052);
    this.D = (LinearLayout)findViewById(2131756053);
    this.b = (MultiStateLayout)findViewById(2131755279);
    this.K = (TextView)findViewById(2131756059);
    this.L = (TextView)findViewById(2131756060);
    this.M = (TextView)findViewById(2131756061);
    this.N = (TextView)findViewById(2131756062);
    this.O = (TextView)findViewById(2131756054);
    this.P = (TextView)findViewById(2131756055);
    this.Q = (TextView)findViewById(2131755936);
    this.R = (TextView)findViewById(2131756056);
    this.S = (TextView)findViewById(2131756057);
    this.T = (TextView)findViewById(2131756058);
    this.U = (LinearLayout)findViewById(2131756051);
    this.V = (ImageView)findViewById(2131756047);
    s();
  }
  
  private void k() {
    this.aa = Arrays.asList((Object[])mhj.l("dd/MM/yyyy").a(mhj.a((Context)getApplication(), "jsons/sinister/stepsSinisterViewPager.json"), kvu[].class));
    for (kvu kvu : this.aa)
      kvu.a(kvx.fromString(kvu.b())); 
    c(this.aa);
  }
  
  private boolean n() {
    if (this.c != null)
      for (kvs kvs : this.c) {
        String str;
        if (TextUtils.isEmpty(kvs.d())) {
          str = "";
        } else {
          str = kvs.d().substring(0, 3);
        } 
        if ((str.equals("004") || str.equals("005")) && kvs.c().equals("02"))
          return false; 
      }  
    return true;
  }
  
  private int o() {
    return 4;
  }
  
  private void p() {
    this.B.setOnExpansionUpdateListener((mbu)new lrq(this));
    this.w.setViewPager((ViewPager)this.g);
  }
  
  private void q() {
    try {
      ActionBar actionBar = getSupportActionBar();
      actionBar.setDisplayShowHomeEnabled(false);
      actionBar.setDisplayShowTitleEnabled(false);
      actionBar.setDisplayShowCustomEnabled(true);
      gpu.a((Activity)this, actionBar, getResources().getString(2131298242));
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      Log.e("ERROR", "DEU ERRO NA HORA DE CRIAR O MENU");
      return;
    } 
  }
  
  private void r() {
    this.ak = false;
    this.b.setState(aor.LOADING);
    this.Z.a(this.Y.v(), (kxa)new lru(this));
  }
  
  private void s() {
    this.y.setOnClickListener((View.OnClickListener)new lrv(this));
    this.x.setOnClickListener((View.OnClickListener)new lrw(this));
    this.I.setOnClickListener((View.OnClickListener)new lrx(this));
  }
  
  public void a() {
    this.B.a(true);
    if (this.B.f() == 1) {
      this.I.setVisibility(8);
      return;
    } 
    if (this.J) {
      this.I.setVisibility(0);
      ObjectAnimator objectAnimator = ObjectAnimator.ofFloat(this.I, "alpha", new float[] { 0.0F, 1.0F });
      objectAnimator.setDuration(200L);
      objectAnimator.start();
      return;
    } 
  }
  
  void a(Fragment paramFragment, String paramString) {
    getSupportFragmentManager().beginTransaction().replace(2131755534, paramFragment, paramString).commit();
  }
  
  public void a(Fragment paramFragment, String paramString, boolean paramBoolean) {
    FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
    if (paramBoolean) {
      fragmentTransaction.setCustomAnimations(2131034148, 2131034149, 2131034147, 2131034150);
    } else {
      fragmentTransaction.setCustomAnimations(2131034147, 2131034150, 2131034148, 2131034149);
    } 
    fragmentTransaction.replace(2131755534, paramFragment, paramString).commitAllowingStateLoss();
  }
  
  @nfq
  public void a(kxc paramkxc) {
    if (paramkxc.a && !isFinishing())
      finish(); 
  }
  
  @nfq
  public void a(kxj paramkxj) {
    if (!isFinishing() && paramkxj.a) {
      this.b.setState(aor.LOADING);
      a(this.ad);
      return;
    } 
  }
  
  public void a(boolean paramBoolean) {
    this.J = paramBoolean;
    if (paramBoolean) {
      this.I.setVisibility(0);
      return;
    } 
    this.I.setVisibility(8);
  }
  
  public void a(boolean paramBoolean, kvx paramkvx) {
    this.d.setText(((kvu)this.aa.get(this.ad)).c());
    for (kvu kvu : this.aa) {
      if (kvu.e() == paramkvx) {
        if (kvu.d() == paramBoolean && kvu.a())
          return; 
        kvu.b(paramBoolean);
        kvu.a(true);
        break;
      } 
    } 
    this.ai = new lut(this.aa, this);
    this.ai.a(this.ac);
    this.g.setAdapter((PagerAdapter)this.ai);
    if (this.W != null)
      this.g.removeOnPageChangeListener(this.W); 
    this.g.setCurrentItem(this.ad, false);
    (new Handler()).postDelayed((Runnable)new lsd(this), 400L);
  }
  
  public boolean b() {
    return this.al;
  }
  
  public void c() {
    if (this.E == null)
      this.E = mhj.a(this); 
    if (!this.E.isShowing())
      this.E.show(); 
    this.H.a(this.Y, (kxl)new lse(this), (kxl)new lsf(this));
  }
  
  public boolean d() {
    for (kvs kvs : this.c) {
      if (kvs.g().replaceAll(" ", "").equalsIgnoreCase("006") || kvs.g().replaceAll(" ", "").equalsIgnoreCase("007"))
        return true; 
    } 
    return false;
  }
  
  public void onBackPressed() {
    if (this.ak) {
      if (this.B.a()) {
        this.B.c(true);
        if (this.J)
          this.I.setVisibility(0); 
        return;
      } 
    } else {
      return;
    } 
    if (this.af) {
      this.af = false;
      if (!d()) {
        r();
        return;
      } 
      super.onBackPressed();
      return;
    } 
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968744);
    j();
    q();
    paramBundle = getIntent().getExtras();
    if (paramBundle != null && paramBundle.containsKey("sinister-detail-key"))
      this.Y = (kvp)(new ejm()).a(paramBundle.getString("sinister-detail-key"), kvp.class); 
    this.Z = new kwy(this.b);
    this.aj = new kwv(null);
    this.G = (kzk)new kzl();
    this.H = (kyy)new kyz();
    e();
  }
  
  protected void onDestroy() {
    super.onDestroy();
    if (mhg.a().b("send-tag"))
      mhg.a().c("send-tag"); 
    mhg.a().c("bank-item-key");
    mge.INSTANCE.setCodeNameBank(null);
    mge.INSTANCE.setBankData(null);
  }
  
  public void onPause() {
    super.onPause();
    kws.a().b().c(this);
  }
  
  public void onResume() {
    super.onResume();
    kws.a().b().b(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\sinister\activities\SinisterDetailActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */