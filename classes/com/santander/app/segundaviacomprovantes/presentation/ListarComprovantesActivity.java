package com.santander.app.segundaviacomprovantes.presentation;

import amr;
import amt;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;
import com.santander.app.contacorrente.domain.Conta;
import gmy;
import grs;
import hat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import klu;
import klx;
import kms;
import kmt;
import kmu;
import knb;
import kng;
import knh;
import mxn;

public class ListarComprovantesActivity extends grs implements AdapterView.OnItemClickListener, kms {
  private TextView a;
  
  private ImageView b;
  
  private ListView c;
  
  private SantanderDropDownView d;
  
  private Conta e;
  
  private Dialog f;
  
  private knb g;
  
  private int w = 0;
  
  private klu x;
  
  private kng y;
  
  public void a() {
    this.d = (SantanderDropDownView)findViewById(2131755321);
    this.a = (TextView)findViewById(2131758236);
    this.b = (ImageView)findViewById(2131758238);
    this.c = (ListView)findViewById(2131758239);
    this.b.setColorFilter(ContextCompat.getColor((Context)this, 2131623961));
    this.b.setOnClickListener(k());
    i();
    j();
  }
  
  public void a(int paramInt) {
    this.w = paramInt;
  }
  
  public void a(String paramString) {
    mxn.a((Activity)this, "Alerta", paramString, false, "OK");
  }
  
  public void a(List<klx> paramList, String paramString) {
    // Byte code:
    //   0: new klx
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore #4
    //   9: aload #4
    //   11: iconst_0
    //   12: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   15: invokevirtual a : (Ljava/lang/Boolean;)V
    //   18: aload_1
    //   19: ifnull -> 33
    //   22: aload_1
    //   23: astore_3
    //   24: aload_1
    //   25: invokeinterface isEmpty : ()Z
    //   30: ifeq -> 65
    //   33: new java/util/ArrayList
    //   36: dup
    //   37: invokespecial <init> : ()V
    //   40: astore_3
    //   41: aload #4
    //   43: aload_2
    //   44: invokevirtual e : (Ljava/lang/String;)V
    //   47: aload #4
    //   49: iconst_1
    //   50: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   53: invokevirtual a : (Ljava/lang/Boolean;)V
    //   56: aload_3
    //   57: aload #4
    //   59: invokeinterface add : (Ljava/lang/Object;)Z
    //   64: pop
    //   65: aload #4
    //   67: invokevirtual a : ()Ljava/lang/Boolean;
    //   70: invokevirtual booleanValue : ()Z
    //   73: ifne -> 109
    //   76: aload_0
    //   77: invokevirtual f : ()Landroid/widget/ListView;
    //   80: aload_0
    //   81: invokevirtual setOnItemClickListener : (Landroid/widget/AdapterView$OnItemClickListener;)V
    //   84: aload_0
    //   85: new knb
    //   88: dup
    //   89: aload_0
    //   90: aload_3
    //   91: invokespecial <init> : (Landroid/content/Context;Ljava/util/List;)V
    //   94: putfield g : Lknb;
    //   97: aload_0
    //   98: invokevirtual f : ()Landroid/widget/ListView;
    //   101: aload_0
    //   102: getfield g : Lknb;
    //   105: invokevirtual setAdapter : (Landroid/widget/ListAdapter;)V
    //   108: return
    //   109: aload_0
    //   110: invokevirtual f : ()Landroid/widget/ListView;
    //   113: aconst_null
    //   114: invokevirtual setOnItemClickListener : (Landroid/widget/AdapterView$OnItemClickListener;)V
    //   117: goto -> 84
  }
  
  public void a(klx paramklx) {
    this.y.a(paramklx);
  }
  
  public void b() {
    hat.d().a((Activity)this, null, true, false);
  }
  
  public void c() {
    this.f = mxn.b((Activity)this);
  }
  
  public void d() {
    if (this.f != null && this.f.isShowing()) {
      this.f.dismiss();
      this.f.cancel();
      this.f = null;
    } 
  }
  
  public klu e() {
    return this.x;
  }
  
  public ListView f() {
    return this.c;
  }
  
  public Activity g() {
    return (Activity)this;
  }
  
  public int h() {
    return this.w;
  }
  
  public void i() {
    Date date;
    SimpleDateFormat simpleDateFormat3 = null;
    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMdd");
    try {
      date = simpleDateFormat2.parse(this.x.f());
      try {
        Date date1 = simpleDateFormat2.parse(this.x.g());
        simpleDateFormat3 = new SimpleDateFormat("dd/MM/yyyy");
        this.a.setText(simpleDateFormat3.format(date) + " até " + simpleDateFormat3.format(date1));
        return;
      } catch (ParseException null) {}
    } catch (ParseException parseException) {
      date = null;
    } 
    Log.e("Error", parseException.toString());
    SimpleDateFormat simpleDateFormat1 = simpleDateFormat3;
    simpleDateFormat3 = new SimpleDateFormat("dd/MM/yyyy");
    this.a.setText(simpleDateFormat3.format(date) + " até " + simpleDateFormat3.format((Date)simpleDateFormat1));
  }
  
  public void j() {
    this.d.setAdapter((amr)gmy.e());
    this.d.setOnItemSelectedListener((amt)new kmt(this));
  }
  
  View.OnClickListener k() {
    return (View.OnClickListener)new kmu(this);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969354);
    this.x = (klu)getIntent().getExtras().getSerializable("extraInformacoes");
    c(2131299003);
    this.y = (kng)new knh(this);
    a();
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    klx klx = (klx)this.g.getItem(paramInt);
    a(paramInt);
    a(klx);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\segundaviacomprovantes\presentation\ListarComprovantesActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */