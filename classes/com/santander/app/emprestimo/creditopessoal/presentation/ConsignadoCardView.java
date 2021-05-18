package com.santander.app.emprestimo.creditopessoal.presentation;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.santander.app.components.view.CheckCardView;
import com.santander.app.components.view.SantanderTextView;
import hxq;

class ConsignadoCardView extends CheckCardView {
  private FrameLayout b;
  
  private SantanderTextView c;
  
  private LinearLayout d;
  
  private SantanderTextView e;
  
  private SantanderTextView f;
  
  private SantanderTextView g;
  
  private SantanderTextView h;
  
  private SantanderTextView i;
  
  private SantanderTextView j;
  
  private SantanderTextView k;
  
  private SantanderTextView l;
  
  private hxq m;
  
  private boolean n;
  
  private View.OnClickListener o;
  
  private boolean p;
  
  public ConsignadoCardView(Context paramContext) {
    super(paramContext);
    i();
  }
  
  public ConsignadoCardView(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    i();
  }
  
  public ConsignadoCardView(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    i();
  }
  
  private void i() {
    inflate(getContext(), 2130968831, (ViewGroup)this);
    this.b = (FrameLayout)findViewById(2131756388);
    this.c = (SantanderTextView)findViewById(2131756389);
    this.d = (LinearLayout)findViewById(2131756390);
    this.e = (SantanderTextView)findViewById(2131755606);
    this.f = (SantanderTextView)findViewById(2131755605);
    this.g = (SantanderTextView)findViewById(2131756394);
    this.h = (SantanderTextView)findViewById(2131756393);
    this.i = (SantanderTextView)findViewById(2131756392);
    this.j = (SantanderTextView)findViewById(2131756391);
    this.k = (SantanderTextView)findViewById(2131756395);
    this.l = (SantanderTextView)findViewById(2131756396);
  }
  
  private void j() {
    int i = ContextCompat.getColor(getContext(), 2131624188);
    int j = ContextCompat.getColor(getContext(), 2131623937);
    this.d.setGravity(8388611);
    this.d.setPadding((int)a(40), (int)a(20), 0, (int)a(20));
    this.g.setVisibility(0);
    this.h.setVisibility(8);
    this.j.setTextSize(16.0F);
    this.j.setTextColor(i);
    this.i.setTextSize(16.0F);
    this.i.setTextColor(j);
    this.g.setTextSize(21.0F);
    this.g.setTextColor(j);
    this.f.setTextSize(34.0F);
    this.f.setTextColor(j);
    this.e.setTextSize(16.0F);
    this.e.setTextColor(i);
  }
  
  private void k() {
    int i = ContextCompat.getColor(getContext(), 2131624188);
    int j = ContextCompat.getColor(getContext(), 2131623937);
    this.d.setGravity(17);
    this.d.setPadding((int)a(10), (int)a(20), (int)a(10), (int)a(20));
    this.g.setVisibility(8);
    this.h.setVisibility(0);
    this.j.setTextSize(12.0F);
    this.j.setTextColor(j);
    this.i.setTextSize(16.0F);
    this.i.setTextColor(j);
    this.h.setTextSize(16.0F);
    this.h.setTextColor(i);
    this.f.setTextSize(20.0F);
    this.f.setTextColor(j);
    this.e.setTextSize(12.0F);
    this.e.setTextColor(i);
  }
  
  public void a(View.OnClickListener paramOnClickListener) {
    this.o = paramOnClickListener;
  }
  
  public void a(hxq paramhxq, boolean paramBoolean) {
    this.m = paramhxq;
    this.n = paramBoolean;
    if (paramBoolean) {
      j();
    } else {
      k();
    } 
    if (paramhxq.isMorno()) {
      e();
      return;
    } 
    f();
  }
  
  public void a(boolean paramBoolean) {
    byte b;
    this.p = paramBoolean;
    if (paramBoolean) {
      this.l.setVisibility(0);
      return;
    } 
    SantanderTextView santanderTextView = this.l;
    if (this.n) {
      b = 8;
    } else {
      b = 4;
    } 
    santanderTextView.setVisibility(b);
  }
  
  public void e() {
    this.c.setText(this.m.getNomeConvenio());
    setOnClickListener(this.o);
    this.b.setVisibility(0);
    this.d.setVisibility(8);
  }
  
  public void f() {
    String str1;
    this.d.setVisibility(0);
    String str2 = this.m.getParcelaFormatted();
    if (this.m.isRefinanciamento()) {
      str1 = this.m.getParcelamentoAdicionalFormatted().replace("R$", "").trim();
    } else {
      str1 = this.m.getValorParcelaFormatted().replace("R$", "").trim();
    } 
    String str3 = String.format("Taxa %s a.m.", new Object[] { this.m.getTaxaJurosFormatted() });
    this.f.setText(str1);
    this.g.setText(str2);
    if (this.n) {
      this.e.setText(str3);
    } else {
      this.e.setText(str3 + "   " + str2);
    } 
    this.i.setText(this.m.getDiasUteisFormatted());
    this.k.setText(String.format("Desconto em folha por %s", new Object[] { this.m.getNomeConvenio() }));
    a(false);
    setOnClickListener(null);
    this.b.setVisibility(8);
    this.d.setVisibility(0);
  }
  
  public boolean g() {
    return this.p;
  }
  
  public void h() {
    this.d.setVisibility(4);
    setChecked(false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditopessoal\presentation\ConsignadoCardView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */