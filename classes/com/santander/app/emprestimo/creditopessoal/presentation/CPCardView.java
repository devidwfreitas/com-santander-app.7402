package com.santander.app.emprestimo.creditopessoal.presentation;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.santander.app.components.view.CheckCardView;
import com.santander.app.components.view.SantanderTextView;
import hxm;

class CPCardView extends CheckCardView {
  private LinearLayout b;
  
  private SantanderTextView c;
  
  private SantanderTextView d;
  
  private SantanderTextView e;
  
  private SantanderTextView f;
  
  private SantanderTextView g;
  
  private SantanderTextView h;
  
  private SantanderTextView i;
  
  private hxm j;
  
  private boolean k;
  
  private boolean l;
  
  public CPCardView(Context paramContext) {
    super(paramContext);
    g();
  }
  
  public CPCardView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    g();
  }
  
  public CPCardView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    g();
  }
  
  private void g() {
    inflate(getContext(), 2130968832, (ViewGroup)this);
    this.b = (LinearLayout)findViewById(2131755225);
    this.c = (SantanderTextView)findViewById(2131755606);
    this.d = (SantanderTextView)findViewById(2131755605);
    this.e = (SantanderTextView)findViewById(2131756394);
    this.f = (SantanderTextView)findViewById(2131756393);
    this.g = (SantanderTextView)findViewById(2131756392);
    this.h = (SantanderTextView)findViewById(2131756391);
    this.i = (SantanderTextView)findViewById(2131756396);
  }
  
  private void h() {
    int i = ContextCompat.getColor(getContext(), 2131624188);
    int j = ContextCompat.getColor(getContext(), 2131623937);
    this.b.setGravity(8388611);
    this.b.setPadding((int)a(40), (int)a(20), 0, (int)a(20));
    this.e.setVisibility(0);
    this.f.setVisibility(8);
    this.h.setTextSize(16.0F);
    this.h.setTextColor(i);
    this.g.setTextSize(16.0F);
    this.g.setTextColor(j);
    this.e.setTextSize(21.0F);
    this.e.setTextColor(j);
    this.d.setTextSize(34.0F);
    this.d.setTextColor(j);
    this.c.setTextSize(16.0F);
    this.c.setTextColor(i);
  }
  
  private void i() {
    int i = ContextCompat.getColor(getContext(), 2131624188);
    int j = ContextCompat.getColor(getContext(), 2131623937);
    this.b.setGravity(17);
    this.b.setPadding((int)a(10), (int)a(20), (int)a(10), (int)a(20));
    this.e.setVisibility(8);
    this.f.setVisibility(0);
    this.h.setTextSize(12.0F);
    this.h.setTextColor(j);
    this.g.setTextSize(16.0F);
    this.g.setTextColor(j);
    this.f.setTextSize(16.0F);
    this.f.setTextColor(i);
    this.d.setTextSize(20.0F);
    this.d.setTextColor(j);
    this.c.setTextSize(12.0F);
    this.c.setTextColor(i);
  }
  
  public void a(hxm paramhxm, boolean paramBoolean) {
    this.j = paramhxm;
    this.k = paramBoolean;
    String str2 = paramhxm.getParcelaFormatted();
    String str3 = paramhxm.getValorParcelaFormatted().replace("R$", "").trim();
    String str1 = String.format("Taxa %s a.m.", new Object[] { paramhxm.getTaxaJurosMes() });
    this.d.setText(str3);
    this.e.setText(str2);
    this.c.setText(str1);
    a(false);
    this.b.setVisibility(0);
    if (paramBoolean) {
      h();
      return;
    } 
    i();
    this.c.setText(str1 + "   " + str2);
  }
  
  public void a(boolean paramBoolean) {
    byte b;
    this.l = paramBoolean;
    if (paramBoolean) {
      this.i.setVisibility(0);
      return;
    } 
    SantanderTextView santanderTextView = this.i;
    if (this.k) {
      b = 8;
    } else {
      b = 4;
    } 
    santanderTextView.setVisibility(b);
  }
  
  public boolean e() {
    return this.l;
  }
  
  public void f() {
    this.b.setVisibility(4);
    setChecked(false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\presentation\CPCardView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */