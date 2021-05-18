package com.santander.app.seguros.ui.widgets;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import kqm;
import kqo;
import kqp;
import krp;
import krz;
import llb;
import mhj;

public class Plan1OffersView extends LinearLayout {
  private View a;
  
  private Context b;
  
  private ImageView c;
  
  private TextView d;
  
  private TextView e;
  
  private SegurosTextView f;
  
  private llb g;
  
  private RecyclerView h;
  
  public Plan1OffersView(Context paramContext) {
    super(paramContext);
    a(paramContext);
    a();
  }
  
  public Plan1OffersView(Context paramContext, @Nullable AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext);
    a();
  }
  
  public Plan1OffersView(Context paramContext, @Nullable AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
    a();
  }
  
  public Plan1OffersView(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    super(paramContext, paramAttributeSet, paramInt1, paramInt2);
    a(paramContext);
    a();
  }
  
  private void a() {
    this.c = (ImageView)findViewById(2131757383);
    this.d = (TextView)findViewById(2131757384);
    this.e = (TextView)findViewById(2131759235);
    this.f = (SegurosTextView)findViewById(2131759237);
    this.h = (RecyclerView)findViewById(2131759236);
  }
  
  private void a(Context paramContext) {
    this.a = ((LayoutInflater)paramContext.getSystemService("layout_inflater")).inflate(2130969413, null);
    addView(this.a);
    this.b = paramContext;
  }
  
  public void a(krz paramkrz, Context paramContext, kqp paramkqp) {
    List list = new ArrayList();
    if (paramkrz.g().size() >= 3) {
      int i;
      for (i = 0; i < paramkqp.d().size(); i++) {
        int j;
        for (j = 0; j < paramkrz.g().size(); j++) {
          if (((krp)paramkqp.d().get(i)).a().equals(((kqo)paramkrz.g().get(j)).a()))
            list.add(paramkrz.g().get(j)); 
        } 
      } 
    } else {
      list = paramkrz.g();
    } 
    kqm.INSTANCE.setmCoverages(paramkrz.g());
    kqm.INSTANCE.setmAssistances(paramkrz.f());
    this.h.setNestedScrollingEnabled(false);
    this.h.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager(paramContext, 1, false));
    this.g = new llb(list, paramContext, paramkqp.b());
    this.h.setAdapter((RecyclerView.Adapter)this.g);
  }
  
  public void setCardViewPlanOffer(Drawable paramDrawable, String paramString1, String paramString2) {
    this.c.setImageDrawable(paramDrawable);
    this.d.setText(paramString1);
    this.e.setText(paramString2);
  }
  
  public void setPrizeValue(String paramString) {
    Double double_ = Double.valueOf(mhj.G(paramString));
    this.f.setText(mhj.c(double_));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\widgets\Plan1OffersView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */