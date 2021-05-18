package com.santander.app.emprestimo.creditounificado.presentation;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.widget.NestedScrollView;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.style.StyleSpan;
import bfj;
import com.santander.app.components.view.SantanderTextView;
import grs;
import hue;
import huk;
import hvw;
import hwk;
import hwl;
import hxn;
import java.util.List;

public class CPUDividaDetailActivity extends grs implements hvw {
  private NestedScrollView a;
  
  private SantanderTextView b;
  
  private SantanderTextView c;
  
  private RecyclerView d;
  
  private hwk e;
  
  private void a() {
    this.a = (NestedScrollView)findViewById(2131755570);
    this.b = (SantanderTextView)findViewById(2131755594);
    this.c = (SantanderTextView)findViewById(2131755595);
    this.d = (RecyclerView)findViewById(2131755596);
  }
  
  private void b(hxn paramhxn) {
    bfj bfj = new bfj();
    bfj.a("Sua dívida total em ");
    bfj.a(paramhxn.j(), new StyleSpan(1));
    bfj.a(" é:");
    this.b.setText((CharSequence)bfj);
  }
  
  public void a(hxn paramhxn) {
    b(paramhxn);
    this.c.setText(paramhxn.d());
  }
  
  public void a(List<huk> paramList) {
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager((Context)this);
    linearLayoutManager.setAutoMeasureEnabled(true);
    this.d.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    this.d.setAdapter((RecyclerView.Adapter)new hue(paramList, true));
    this.a.fullScroll(33);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968654);
    c(2131297039);
    a();
    this.e = (hwk)new hwl(this);
    this.e.a();
  }
  
  protected void onDestroy() {
    super.onDestroy();
    this.e.b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\emprestimo\creditounificado\presentation\CPUDividaDetailActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */