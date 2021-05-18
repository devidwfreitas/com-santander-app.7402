package com.santander.app;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Process;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.santander.app.components.view.SegmentTextView;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.widget.Carrossel;
import com.santander.app.widget.Indicator;
import fhh;
import fhi;
import fhj;
import fhk;
import fhl;
import fhm;
import fos;
import fpm;
import fpx;
import frq;
import fur;
import fuu;
import fuz;
import fvh;
import fvi;
import fvk;
import ghu;
import gpu;
import grs;
import hat;
import hau;
import ijf;
import ijn;
import ikg;
import ikl;
import ikx;
import java.io.Serializable;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Vector;
import mxd;
import mxe;
import mxn;
import mzr;

public class FazerPagamentoActivity extends grs implements ViewPager.OnPageChangeListener {
  private static final String A = "type_pagamento";
  
  private static final String B = "SCAN_RESULT";
  
  private static String Q;
  
  private static fuz S;
  
  private static final String w = "FazerPagamentoActivity";
  
  private static final String x = "dd/MM/yyyy";
  
  private static final String y = "yyyy-MM-dd";
  
  private static final String z = "yyyyMMdd";
  
  private Vector<fpm> C;
  
  private ViewPager D;
  
  private Indicator E;
  
  private ImageView F;
  
  private ImageView G;
  
  private ikl H;
  
  private Dialog I;
  
  private Activity J;
  
  private fhl K;
  
  private fvi L;
  
  private fhm M;
  
  private fvk N;
  
  private fhk O;
  
  private fvh P;
  
  private ghu R;
  
  public fos a;
  
  public fos b;
  
  public fos c;
  
  public fos d;
  
  public fos e;
  
  public fos f;
  
  public fur g;
  
  public static String a() {
    return Q;
  }
  
  public static void a(fuz paramfuz) {
    S = paramfuz;
  }
  
  public static void a(String paramString) {
    Q = paramString;
  }
  
  public static fuz b() {
    return S;
  }
  
  private boolean b(String paramString) {
    boolean bool = true;
    if (((fpm)this.C.get(this.D.getCurrentItem())).a() == 1) {
      EditText editText1 = (EditText)findViewById(2131757302);
      EditText editText2 = (EditText)findViewById(2131757303);
      EditText editText3 = (EditText)findViewById(2131757304);
      EditText editText4 = (EditText)findViewById(2131757305);
      EditText editText5 = (EditText)findViewById(2131757318);
      EditText editText6 = (EditText)findViewById(2131757319);
      EditText editText7 = (EditText)findViewById(2131757320);
      EditText editText8 = (EditText)findViewById(2131757321);
      EditText editText9 = (EditText)findViewById(2131757313);
      if (paramString != null && paramString.length() > 35) {
        editText1.setText(paramString.substring(0, 5), TextView.BufferType.EDITABLE);
        editText1.setEnabled(false);
        editText2.setText(paramString.substring(5, 10), TextView.BufferType.EDITABLE);
        editText2.setEnabled(false);
        editText3.setText(paramString.substring(10, 15), TextView.BufferType.EDITABLE);
        editText3.setEnabled(false);
        editText4.setText(paramString.substring(15, 21), TextView.BufferType.EDITABLE);
        editText4.setEnabled(false);
        editText5.setText(paramString.substring(21, 26), TextView.BufferType.EDITABLE);
        editText5.setEnabled(false);
        editText6.setText(paramString.substring(26, 32), TextView.BufferType.EDITABLE);
        editText6.setEnabled(false);
        editText7.setText(paramString.substring(32, 33), TextView.BufferType.EDITABLE);
        editText7.setEnabled(false);
        editText8.setText(paramString.substring(33), TextView.BufferType.EDITABLE);
        editText8.setEnabled(false);
        editText9.setText(paramString.substring(40), TextView.BufferType.EDITABLE);
        editText9.setEnabled(true);
        return true;
      } 
      return false;
    } 
    if (((fpm)this.C.get(this.D.getCurrentItem())).a() == 0) {
      EditText editText1 = (EditText)findViewById(2131757302);
      EditText editText2 = (EditText)findViewById(2131757303);
      EditText editText3 = (EditText)findViewById(2131757304);
      EditText editText4 = (EditText)findViewById(2131757305);
      if (paramString != null && paramString.length() > 37) {
        editText1.setText(paramString.substring(0, 12), TextView.BufferType.EDITABLE);
        editText1.setEnabled(false);
        editText2.setText(paramString.substring(12, 24), TextView.BufferType.EDITABLE);
        editText2.setEnabled(false);
        editText3.setText(paramString.substring(24, 36), TextView.BufferType.EDITABLE);
        editText3.setEnabled(false);
        editText4.setText(paramString.substring(36), TextView.BufferType.EDITABLE);
        editText4.setEnabled(false);
        return true;
      } 
      return false;
    } 
    if (((fpm)this.C.get(this.D.getCurrentItem())).a() == 3) {
      ((EditText)findViewById(2131757302)).setText(paramString, TextView.BufferType.EDITABLE);
      return true;
    } 
    return bool;
  }
  
  private void d() {
    Intent intent = new Intent((Context)this, FazerPagamentoConfirmacaoActivity.class);
    intent.putExtra("type_pagamento", 0);
    startActivity(intent);
  }
  
  private void e() {
    Intent intent = new Intent((Context)this, FazerPagamentoConfirmacaoActivity.class);
    intent.putExtra("type_pagamento", 1);
    intent.putExtra("type_pagamento", (Serializable)this.g);
    startActivity(intent);
  }
  
  private void f() {
    Intent intent = new Intent((Context)this, FazerPagamentoConfirmacaoActivity.class);
    intent.putExtra("type_pagamento", 2);
    startActivity(intent);
  }
  
  private void g() {
    View view = findViewById(2131756453);
    this.D = (ViewPager)findViewById(2131756039);
    this.D.setOnTouchListener((View.OnTouchListener)new fhh(this));
    this.C = new Vector<fpm>();
    fpm fpm1 = new fpm();
    fpm1.a("TÍTULOS E CONTAS");
    fpm1.a(3);
    fpm1 = new fpm();
    fpm1.a("TÍTULOS EM CARTÓRIO");
    fpm1.a(2);
    fpm fpm2 = new fpm();
    fpm2.a("PAGAMENTO DE FATURA");
    fpm2.a(4);
    this.C.add(fpm1);
    fpx fpx = new fpx((Context)this, this.C);
    this.D.setAdapter((PagerAdapter)fpx);
    this.E.setSize(fpx.getCount());
    this.D.setOnPageChangeListener(this);
    this.G = (ImageView)view.findViewById(2131756232);
    this.G.setOnClickListener((View.OnClickListener)new fhi(this));
    this.F = (ImageView)view.findViewById(2131756233);
    this.F.setOnClickListener((View.OnClickListener)new fhj(this));
    this.G.setVisibility(8);
    this.F.setVisibility(8);
    this.E.setVisibility(8);
  }
  
  private void h() {
    Intent intent = new Intent((Context)this.i, FazerPagamentoBoletoVR.class);
    intent.putExtra("type_pagamento", 1);
    intent.putExtra("pagamentoBean", (Serializable)this.N);
    this.i.startActivity(intent);
  }
  
  public void a(fur paramfur) {
    this.g = paramfur;
  }
  
  public boolean a(Context paramContext) {
    boolean bool = false;
    List list = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < list.size()) {
        if (((ActivityManager.RunningAppProcessInfo)list.get(i)).processName.equals("com.santander.app")) {
          onDestroy();
          Process.killProcess(Process.myPid());
          return true;
        } 
      } else {
        return bool1;
      } 
    } 
  }
  
  public fur c() {
    return this.g;
  }
  
  public void confirmarCartorio(View paramView) {
    Boolean bool;
    frq.d("Pagamentos_Pagamento_TitulosEmCatorio_Acao", "Confirmar");
    SegmentTextView segmentTextView = (SegmentTextView)findViewById(2131757240);
    if (segmentTextView.getText().toString().length() < 1) {
      hat.d().a(this.i, getResources().getString(2131297209));
      return;
    } 
    Carrossel carrossel1 = (Carrossel)findViewById(2131757239);
    ArrayList<Conta> arrayList = new ArrayList();
    int i;
    for (i = 0; i < this.v.f().q().a().size(); i++)
      arrayList.add(this.v.f().q().a().get(i)); 
    for (i = 0; i < this.v.f().s().d().size(); i++) {
      Conta conta = new Conta();
      conta.setAgencia(((ghu)this.v.f().s().d().get(i)).s());
      conta.setCuenta(((ghu)this.v.f().s().d().get(i)).d());
      conta.setValor(((ghu)this.v.f().s().d().get(i)).c());
      conta.setDescricao(((ghu)this.v.f().s().d().get(i)).a());
      conta.setNomeBanco("CARTAOPAG");
      arrayList.add(conta);
    } 
    fuu fuu = (fuu)arrayList.get(carrossel1.a());
    Carrossel carrossel2 = (Carrossel)findViewById(2131757241);
    String str1 = this.e.b();
    if (carrossel2.a() == 1) {
      bool = Boolean.valueOf(true);
      str1 = this.f.b();
      hau.a().a(true);
    } else {
      hau.a().a(false);
      bool = Boolean.valueOf(false);
    } 
    SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("dd/MM/yyyy");
    SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("yyyy-MM-dd");
    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMdd");
    try {
      Date date;
      if (str1.contains("-")) {
        date = simpleDateFormat3.parse(str1);
      } else {
        date = date.parse(str1);
      } 
      String str = simpleDateFormat2.format(date);
      str1 = str;
    } catch (ParseException parseException) {
      Log.e("FazerPagamentoActivity", parseException.getMessage());
    } 
    String str2 = segmentTextView.getText().toString();
    this.P = new fvh();
    this.P.n(fuu.getAgencia());
    this.P.p(fuu.getCuenta());
    this.P.o(bool.toString());
    this.P.q(str1);
    this.P.v(str2);
    this.O = new fhk(this, null);
    this.O.execute((Object[])new Void[0]);
  }
  
  public void confirmarContas(View paramView) {
    boolean bool;
    Boolean bool1;
    EditText editText1 = (EditText)findViewById(2131757302);
    EditText editText2 = (EditText)findViewById(2131757303);
    EditText editText3 = (EditText)findViewById(2131757304);
    EditText editText4 = (EditText)findViewById(2131757305);
    if (editText1.getText().toString().length() < 12 || editText2.getText().toString().length() < 12 || editText3.getText().toString().length() < 12 || editText4.getText().toString().length() < 12) {
      hat.d().a(this.J, getResources().getString(2131297209));
      return;
    } 
    Carrossel carrossel1 = (Carrossel)findViewById(2131757239);
    Conta conta = new Conta();
    this.R = new ghu();
    if (carrossel1.a() < this.v.f().q().a().size()) {
      conta = this.v.f().q().a().get(carrossel1.a());
      bool = false;
    } else {
      this.R = this.v.f().s().d().get(carrossel1.a() - this.v.f().q().a().size());
      bool = true;
    } 
    Carrossel carrossel2 = (Carrossel)findViewById(2131757241);
    String str1 = this.a.b();
    if (carrossel2.a() == 1) {
      str1 = this.b.b();
      hau.a().a(true);
      bool1 = Boolean.valueOf(true);
    } else {
      hau.a().a(false);
      bool1 = Boolean.valueOf(false);
    } 
    SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("dd/MM/yyyy");
    SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("yyyy-MM-dd");
    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMdd");
    try {
      Date date;
      if (str1.contains("-")) {
        date = simpleDateFormat3.parse(str1);
      } else {
        date = date.parse(str1);
      } 
      String str = simpleDateFormat2.format(date);
      str1 = str;
    } catch (ParseException parseException) {
      Log.e("FazerPagamentoActivity", parseException.getMessage());
    } 
    String str2 = editText1.getText().toString() + editText2.getText().toString() + editText3.getText().toString() + editText4.getText().toString();
    if (!bool) {
      this.L = new fvi();
      this.L.a(bool);
      this.L.a(conta.getAgencia());
      this.L.d(conta.getCuenta());
      this.L.c(str2);
      this.L.b(bool1.toString());
      this.L.e(str1);
      this.L.g(str1);
      this.L.o("CC");
      this.L.h("CB");
    } else {
      this.L = new fvi();
      this.L.a(bool);
      this.L.a(mzr.e());
      this.L.d(mzr.f());
      this.L.c(str2);
      this.L.b(bool1.toString());
      this.L.e(str1);
      this.L.g(str1);
      this.L.j(this.R.H());
      this.L.k(this.R.d());
      this.L.o("CC");
      this.L.h("C1");
    } 
    this.K = new fhl(this, null);
    this.K.execute((Object[])new Void[0]);
  }
  
  public void confirmarContas(String paramString) {
    boolean bool;
    Boolean bool1;
    String str2 = paramString.replace(" ", "").replace(".", "");
    if (str2.isEmpty()) {
      hat.d().a(this.J, getResources().getString(2131297173));
      return;
    } 
    paramString = str2.substring(1, 2);
    if (!paramString.equals("2") && !paramString.equals("3") && !paramString.equals("4")) {
      hat.d().a(this.i, getResources().getString(2131297185));
      return;
    } 
    Carrossel carrossel1 = (Carrossel)findViewById(2131757239);
    Conta conta = new Conta();
    this.R = new ghu();
    if (carrossel1.a() < this.v.f().q().a().size()) {
      conta = this.v.f().q().a().get(carrossel1.a());
      bool = false;
    } else {
      this.R = this.v.f().s().d().get(carrossel1.a() - this.v.f().q().a().size());
      bool = true;
    } 
    Carrossel carrossel2 = (Carrossel)findViewById(2131757241);
    String str1 = this.a.b();
    if (carrossel2.a() == 1) {
      str1 = this.b.b();
      hau.a().a(true);
      bool1 = Boolean.valueOf(true);
    } else {
      hau.a().a(false);
      bool1 = Boolean.valueOf(false);
    } 
    SimpleDateFormat simpleDateFormat1 = new SimpleDateFormat("dd/MM/yyyy");
    SimpleDateFormat simpleDateFormat3 = new SimpleDateFormat("yyyy-MM-dd");
    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyyMMdd");
    try {
      Date date;
      if (str1.contains("-")) {
        date = simpleDateFormat3.parse(str1);
      } else {
        date = date.parse(str1);
      } 
      String str = simpleDateFormat2.format(date);
      str1 = str;
    } catch (ParseException parseException) {
      Log.e("FazerPagamentoActivity", parseException.getMessage());
    } 
    if (!bool) {
      this.L = new fvi();
      this.L.a(bool);
      this.L.a(conta.getAgencia());
      this.L.d(conta.getCuenta());
      this.L.c(str2);
      this.L.b(bool1.toString());
      this.L.e(str1);
      this.L.g(str1);
      this.L.o("CC");
      this.L.h("CB");
    } else {
      this.L = new fvi();
      this.L.a(bool);
      this.L.a(mzr.e());
      this.L.d(mzr.f());
      this.L.c(str2);
      this.L.b(bool1.toString());
      this.L.e(str1);
      this.L.g(str1);
      this.L.j(this.R.H());
      this.L.k(this.R.d());
      this.L.o("CC");
      this.L.h("C1");
    } 
    this.K = new fhl(this, null);
    this.K.execute((Object[])new Void[0]);
  }
  
  public void confirmarTitulos(View paramView) {
    // Byte code:
    //   0: aload_0
    //   1: ldc 2131757302
    //   3: invokevirtual findViewById : (I)Landroid/view/View;
    //   6: checkcast android/widget/EditText
    //   9: astore #8
    //   11: aload_0
    //   12: ldc 2131757303
    //   14: invokevirtual findViewById : (I)Landroid/view/View;
    //   17: checkcast android/widget/EditText
    //   20: astore #9
    //   22: aload_0
    //   23: ldc 2131757304
    //   25: invokevirtual findViewById : (I)Landroid/view/View;
    //   28: checkcast android/widget/EditText
    //   31: astore #10
    //   33: aload_0
    //   34: ldc 2131757305
    //   36: invokevirtual findViewById : (I)Landroid/view/View;
    //   39: checkcast android/widget/EditText
    //   42: astore #11
    //   44: aload_0
    //   45: ldc 2131757318
    //   47: invokevirtual findViewById : (I)Landroid/view/View;
    //   50: checkcast android/widget/EditText
    //   53: astore #12
    //   55: aload_0
    //   56: ldc 2131757319
    //   58: invokevirtual findViewById : (I)Landroid/view/View;
    //   61: checkcast android/widget/EditText
    //   64: astore #13
    //   66: aload_0
    //   67: ldc 2131757320
    //   69: invokevirtual findViewById : (I)Landroid/view/View;
    //   72: checkcast android/widget/EditText
    //   75: astore #14
    //   77: aload_0
    //   78: ldc 2131757321
    //   80: invokevirtual findViewById : (I)Landroid/view/View;
    //   83: checkcast android/widget/EditText
    //   86: astore #15
    //   88: aload_0
    //   89: ldc_w 2131757285
    //   92: invokevirtual findViewById : (I)Landroid/view/View;
    //   95: checkcast android/widget/EditText
    //   98: astore #7
    //   100: aload_0
    //   101: ldc 2131757313
    //   103: invokevirtual findViewById : (I)Landroid/view/View;
    //   106: checkcast android/widget/EditText
    //   109: astore #6
    //   111: aload_0
    //   112: ldc_w 2131757315
    //   115: invokevirtual findViewById : (I)Landroid/view/View;
    //   118: checkcast android/widget/EditText
    //   121: astore #5
    //   123: aload #6
    //   125: invokevirtual getText : ()Landroid/text/Editable;
    //   128: invokevirtual toString : ()Ljava/lang/String;
    //   131: ldc_w '0,00'
    //   134: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   137: ifne -> 157
    //   140: aload #6
    //   142: invokevirtual getText : ()Landroid/text/Editable;
    //   145: invokevirtual toString : ()Ljava/lang/String;
    //   148: ldc_w '0.00'
    //   151: invokevirtual equalsIgnoreCase : (Ljava/lang/String;)Z
    //   154: ifeq -> 178
    //   157: invokestatic d : ()Lhav;
    //   160: aload_0
    //   161: getfield i : Landroid/app/Activity;
    //   164: aload_0
    //   165: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   168: ldc_w 2131297211
    //   171: invokevirtual getString : (I)Ljava/lang/String;
    //   174: invokevirtual a : (Landroid/app/Activity;Ljava/lang/String;)V
    //   177: return
    //   178: aload #8
    //   180: invokevirtual getText : ()Landroid/text/Editable;
    //   183: invokevirtual toString : ()Ljava/lang/String;
    //   186: invokevirtual length : ()I
    //   189: iconst_5
    //   190: if_icmplt -> 331
    //   193: aload #9
    //   195: invokevirtual getText : ()Landroid/text/Editable;
    //   198: invokevirtual toString : ()Ljava/lang/String;
    //   201: invokevirtual length : ()I
    //   204: iconst_5
    //   205: if_icmplt -> 331
    //   208: aload #10
    //   210: invokevirtual getText : ()Landroid/text/Editable;
    //   213: invokevirtual toString : ()Ljava/lang/String;
    //   216: invokevirtual length : ()I
    //   219: iconst_5
    //   220: if_icmplt -> 331
    //   223: aload #11
    //   225: invokevirtual getText : ()Landroid/text/Editable;
    //   228: invokevirtual toString : ()Ljava/lang/String;
    //   231: invokevirtual length : ()I
    //   234: bipush #6
    //   236: if_icmplt -> 331
    //   239: aload #12
    //   241: invokevirtual getText : ()Landroid/text/Editable;
    //   244: invokevirtual toString : ()Ljava/lang/String;
    //   247: invokevirtual length : ()I
    //   250: iconst_5
    //   251: if_icmplt -> 331
    //   254: aload #13
    //   256: invokevirtual getText : ()Landroid/text/Editable;
    //   259: invokevirtual toString : ()Ljava/lang/String;
    //   262: invokevirtual length : ()I
    //   265: bipush #6
    //   267: if_icmplt -> 331
    //   270: aload #14
    //   272: invokevirtual getText : ()Landroid/text/Editable;
    //   275: invokevirtual toString : ()Ljava/lang/String;
    //   278: invokevirtual length : ()I
    //   281: iconst_1
    //   282: if_icmplt -> 331
    //   285: aload #15
    //   287: invokevirtual getText : ()Landroid/text/Editable;
    //   290: invokevirtual toString : ()Ljava/lang/String;
    //   293: invokevirtual length : ()I
    //   296: bipush #14
    //   298: if_icmplt -> 331
    //   301: aload #5
    //   303: invokevirtual getText : ()Landroid/text/Editable;
    //   306: invokevirtual toString : ()Ljava/lang/String;
    //   309: invokevirtual length : ()I
    //   312: iconst_1
    //   313: if_icmplt -> 331
    //   316: aload #6
    //   318: invokevirtual getText : ()Landroid/text/Editable;
    //   321: invokevirtual toString : ()Ljava/lang/String;
    //   324: invokevirtual length : ()I
    //   327: iconst_1
    //   328: if_icmpge -> 352
    //   331: invokestatic d : ()Lhav;
    //   334: aload_0
    //   335: getfield i : Landroid/app/Activity;
    //   338: aload_0
    //   339: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   342: ldc_w 2131297209
    //   345: invokevirtual getString : (I)Ljava/lang/String;
    //   348: invokevirtual a : (Landroid/app/Activity;Ljava/lang/String;)V
    //   351: return
    //   352: aload #7
    //   354: invokevirtual getText : ()Landroid/text/Editable;
    //   357: invokevirtual toString : ()Ljava/lang/String;
    //   360: invokevirtual length : ()I
    //   363: iconst_1
    //   364: if_icmpge -> 385
    //   367: aload_0
    //   368: getfield i : Landroid/app/Activity;
    //   371: aload_0
    //   372: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   375: ldc_w 2131297179
    //   378: invokevirtual getString : (I)Ljava/lang/String;
    //   381: invokestatic d : (Landroid/app/Activity;Ljava/lang/String;)V
    //   384: return
    //   385: aload_0
    //   386: ldc_w 2131757239
    //   389: invokevirtual findViewById : (I)Landroid/view/View;
    //   392: checkcast com/santander/app/widget/Carrossel
    //   395: astore_1
    //   396: new com/santander/app/contacorrente/domain/Conta
    //   399: dup
    //   400: invokespecial <init> : ()V
    //   403: astore_3
    //   404: iconst_0
    //   405: istore_2
    //   406: aload_0
    //   407: new ghu
    //   410: dup
    //   411: invokespecial <init> : ()V
    //   414: putfield R : Lghu;
    //   417: aload_1
    //   418: invokevirtual a : ()I
    //   421: aload_0
    //   422: getfield v : Lmip;
    //   425: invokeinterface f : ()Lmir;
    //   430: invokevirtual q : ()Lgvx;
    //   433: invokeinterface a : ()Ljava/util/List;
    //   438: invokeinterface size : ()I
    //   443: if_icmpge -> 964
    //   446: aload_0
    //   447: getfield v : Lmip;
    //   450: invokeinterface f : ()Lmir;
    //   455: invokevirtual q : ()Lgvx;
    //   458: invokeinterface a : ()Ljava/util/List;
    //   463: aload_1
    //   464: invokevirtual a : ()I
    //   467: invokeinterface get : (I)Ljava/lang/Object;
    //   472: checkcast com/santander/app/contacorrente/domain/Conta
    //   475: astore_3
    //   476: aload_0
    //   477: ldc_w 2131757241
    //   480: invokevirtual findViewById : (I)Landroid/view/View;
    //   483: checkcast com/santander/app/widget/Carrossel
    //   486: astore #4
    //   488: aload_0
    //   489: getfield c : Lfos;
    //   492: invokevirtual b : ()Ljava/lang/String;
    //   495: astore_1
    //   496: aload #4
    //   498: invokevirtual a : ()I
    //   501: iconst_1
    //   502: if_icmpne -> 1025
    //   505: iconst_1
    //   506: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   509: astore #4
    //   511: aload_0
    //   512: getfield d : Lfos;
    //   515: invokevirtual b : ()Ljava/lang/String;
    //   518: astore_1
    //   519: invokestatic a : ()Lhau;
    //   522: iconst_1
    //   523: invokevirtual a : (Z)V
    //   526: aload #6
    //   528: invokevirtual getText : ()Landroid/text/Editable;
    //   531: invokevirtual toString : ()Ljava/lang/String;
    //   534: astore #16
    //   536: aload #5
    //   538: invokevirtual getText : ()Landroid/text/Editable;
    //   541: invokevirtual toString : ()Ljava/lang/String;
    //   544: astore #6
    //   546: new java/text/SimpleDateFormat
    //   549: dup
    //   550: ldc 'dd/MM/yyyy'
    //   552: invokespecial <init> : (Ljava/lang/String;)V
    //   555: astore #17
    //   557: new java/text/SimpleDateFormat
    //   560: dup
    //   561: ldc 'yyyy-MM-dd'
    //   563: invokespecial <init> : (Ljava/lang/String;)V
    //   566: astore #5
    //   568: new java/text/SimpleDateFormat
    //   571: dup
    //   572: ldc 'yyyyMMdd'
    //   574: invokespecial <init> : (Ljava/lang/String;)V
    //   577: astore #18
    //   579: aload_1
    //   580: ldc_w '-'
    //   583: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   586: ifeq -> 1041
    //   589: aload #5
    //   591: aload_1
    //   592: invokevirtual parse : (Ljava/lang/String;)Ljava/util/Date;
    //   595: astore #5
    //   597: aload #18
    //   599: aload #5
    //   601: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   604: astore #5
    //   606: aload #5
    //   608: astore_1
    //   609: aload #18
    //   611: aload #17
    //   613: aload #6
    //   615: invokevirtual parse : (Ljava/lang/String;)Ljava/util/Date;
    //   618: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   621: astore #5
    //   623: new java/lang/StringBuilder
    //   626: dup
    //   627: invokespecial <init> : ()V
    //   630: astore #6
    //   632: aload #6
    //   634: aload #8
    //   636: invokevirtual getText : ()Landroid/text/Editable;
    //   639: invokevirtual toString : ()Ljava/lang/String;
    //   642: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   645: pop
    //   646: aload #6
    //   648: aload #9
    //   650: invokevirtual getText : ()Landroid/text/Editable;
    //   653: invokevirtual toString : ()Ljava/lang/String;
    //   656: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   659: pop
    //   660: aload #6
    //   662: aload #10
    //   664: invokevirtual getText : ()Landroid/text/Editable;
    //   667: invokevirtual toString : ()Ljava/lang/String;
    //   670: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   673: pop
    //   674: aload #6
    //   676: aload #11
    //   678: invokevirtual getText : ()Landroid/text/Editable;
    //   681: invokevirtual toString : ()Ljava/lang/String;
    //   684: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   687: pop
    //   688: aload #6
    //   690: aload #12
    //   692: invokevirtual getText : ()Landroid/text/Editable;
    //   695: invokevirtual toString : ()Ljava/lang/String;
    //   698: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   701: pop
    //   702: aload #6
    //   704: aload #13
    //   706: invokevirtual getText : ()Landroid/text/Editable;
    //   709: invokevirtual toString : ()Ljava/lang/String;
    //   712: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   715: pop
    //   716: aload #6
    //   718: aload #14
    //   720: invokevirtual getText : ()Landroid/text/Editable;
    //   723: invokevirtual toString : ()Ljava/lang/String;
    //   726: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   729: pop
    //   730: aload #6
    //   732: aload #15
    //   734: invokevirtual getText : ()Landroid/text/Editable;
    //   737: invokevirtual toString : ()Ljava/lang/String;
    //   740: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   743: pop
    //   744: aload #6
    //   746: invokevirtual toString : ()Ljava/lang/String;
    //   749: astore #8
    //   751: invokestatic g : ()Ljava/lang/String;
    //   754: astore #6
    //   756: aload_0
    //   757: ldc_w 2131757317
    //   760: invokevirtual findViewById : (I)Landroid/view/View;
    //   763: checkcast android/widget/TextView
    //   766: astore #9
    //   768: aload #9
    //   770: ifnull -> 1242
    //   773: aload #9
    //   775: invokevirtual getText : ()Ljava/lang/CharSequence;
    //   778: invokeinterface toString : ()Ljava/lang/String;
    //   783: astore #6
    //   785: aload_0
    //   786: new fvk
    //   789: dup
    //   790: invokespecial <init> : ()V
    //   793: putfield N : Lfvk;
    //   796: aload_0
    //   797: getfield N : Lfvk;
    //   800: iload_2
    //   801: invokevirtual a : (Z)V
    //   804: iload_2
    //   805: ifne -> 1072
    //   808: aload_0
    //   809: getfield N : Lfvk;
    //   812: aload_3
    //   813: invokevirtual getAgencia : ()Ljava/lang/String;
    //   816: invokevirtual d : (Ljava/lang/String;)V
    //   819: aload_0
    //   820: getfield N : Lfvk;
    //   823: aload_3
    //   824: invokevirtual getCuenta : ()Ljava/lang/String;
    //   827: invokevirtual m : (Ljava/lang/String;)V
    //   830: aload_0
    //   831: getfield N : Lfvk;
    //   834: aload #8
    //   836: invokevirtual g : (Ljava/lang/String;)V
    //   839: aload_0
    //   840: getfield N : Lfvk;
    //   843: aload #4
    //   845: invokevirtual toString : ()Ljava/lang/String;
    //   848: invokevirtual e : (Ljava/lang/String;)V
    //   851: aload_0
    //   852: getfield N : Lfvk;
    //   855: aload_1
    //   856: invokevirtual n : (Ljava/lang/String;)V
    //   859: aload_0
    //   860: getfield N : Lfvk;
    //   863: aload_1
    //   864: invokevirtual s : (Ljava/lang/String;)V
    //   867: aload_0
    //   868: getfield N : Lfvk;
    //   871: aload #6
    //   873: invokevirtual A : (Ljava/lang/String;)V
    //   876: aload_0
    //   877: getfield N : Lfvk;
    //   880: aload #7
    //   882: invokevirtual getText : ()Landroid/text/Editable;
    //   885: invokevirtual toString : ()Ljava/lang/String;
    //   888: invokevirtual B : (Ljava/lang/String;)V
    //   891: aload_0
    //   892: getfield N : Lfvk;
    //   895: aload #16
    //   897: invokevirtual S : (Ljava/lang/String;)V
    //   900: aload_0
    //   901: getfield N : Lfvk;
    //   904: aload #16
    //   906: invokevirtual U : (Ljava/lang/String;)V
    //   909: aload_0
    //   910: getfield N : Lfvk;
    //   913: aload #5
    //   915: invokevirtual p : (Ljava/lang/String;)V
    //   918: aload_0
    //   919: getfield N : Lfvk;
    //   922: ldc_w 'CB'
    //   925: invokevirtual t : (Ljava/lang/String;)V
    //   928: aload_0
    //   929: getfield N : Lfvk;
    //   932: ldc_w 'CC'
    //   935: invokevirtual H : (Ljava/lang/String;)V
    //   938: aload_0
    //   939: new fhm
    //   942: dup
    //   943: aload_0
    //   944: aconst_null
    //   945: invokespecial <init> : (Lcom/santander/app/FazerPagamentoActivity;Lfhh;)V
    //   948: putfield M : Lfhm;
    //   951: aload_0
    //   952: getfield M : Lfhm;
    //   955: iconst_0
    //   956: anewarray java/lang/Void
    //   959: invokevirtual execute : ([Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   962: pop
    //   963: return
    //   964: aload_0
    //   965: aload_0
    //   966: getfield v : Lmip;
    //   969: invokeinterface f : ()Lmir;
    //   974: invokevirtual s : ()Lght;
    //   977: invokeinterface d : ()Ljava/util/List;
    //   982: aload_1
    //   983: invokevirtual a : ()I
    //   986: aload_0
    //   987: getfield v : Lmip;
    //   990: invokeinterface f : ()Lmir;
    //   995: invokevirtual q : ()Lgvx;
    //   998: invokeinterface a : ()Ljava/util/List;
    //   1003: invokeinterface size : ()I
    //   1008: isub
    //   1009: invokeinterface get : (I)Ljava/lang/Object;
    //   1014: checkcast ghu
    //   1017: putfield R : Lghu;
    //   1020: iconst_1
    //   1021: istore_2
    //   1022: goto -> 476
    //   1025: invokestatic a : ()Lhau;
    //   1028: iconst_0
    //   1029: invokevirtual a : (Z)V
    //   1032: iconst_0
    //   1033: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   1036: astore #4
    //   1038: goto -> 526
    //   1041: aload #17
    //   1043: aload_1
    //   1044: invokevirtual parse : (Ljava/lang/String;)Ljava/util/Date;
    //   1047: astore #5
    //   1049: goto -> 597
    //   1052: astore #5
    //   1054: ldc 'FazerPagamentoActivity'
    //   1056: aload #5
    //   1058: invokevirtual getMessage : ()Ljava/lang/String;
    //   1061: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   1064: pop
    //   1065: aload #6
    //   1067: astore #5
    //   1069: goto -> 623
    //   1072: aload_0
    //   1073: getfield N : Lfvk;
    //   1076: invokestatic e : ()Ljava/lang/String;
    //   1079: invokevirtual d : (Ljava/lang/String;)V
    //   1082: aload_0
    //   1083: getfield N : Lfvk;
    //   1086: invokestatic f : ()Ljava/lang/String;
    //   1089: invokevirtual m : (Ljava/lang/String;)V
    //   1092: aload_0
    //   1093: getfield N : Lfvk;
    //   1096: aload #8
    //   1098: invokevirtual g : (Ljava/lang/String;)V
    //   1101: aload_0
    //   1102: getfield N : Lfvk;
    //   1105: aload #4
    //   1107: invokevirtual toString : ()Ljava/lang/String;
    //   1110: invokevirtual e : (Ljava/lang/String;)V
    //   1113: aload_0
    //   1114: getfield N : Lfvk;
    //   1117: aload_1
    //   1118: invokevirtual s : (Ljava/lang/String;)V
    //   1121: aload_0
    //   1122: getfield N : Lfvk;
    //   1125: aload #6
    //   1127: invokevirtual A : (Ljava/lang/String;)V
    //   1130: aload_0
    //   1131: getfield N : Lfvk;
    //   1134: aload #7
    //   1136: invokevirtual getText : ()Landroid/text/Editable;
    //   1139: invokevirtual toString : ()Ljava/lang/String;
    //   1142: invokevirtual B : (Ljava/lang/String;)V
    //   1145: aload_0
    //   1146: getfield N : Lfvk;
    //   1149: aload #16
    //   1151: invokevirtual S : (Ljava/lang/String;)V
    //   1154: aload_0
    //   1155: getfield N : Lfvk;
    //   1158: aload #16
    //   1160: invokevirtual U : (Ljava/lang/String;)V
    //   1163: aload_0
    //   1164: getfield N : Lfvk;
    //   1167: aload #5
    //   1169: invokevirtual p : (Ljava/lang/String;)V
    //   1172: aload_0
    //   1173: getfield N : Lfvk;
    //   1176: ldc_w 'C1'
    //   1179: invokevirtual t : (Ljava/lang/String;)V
    //   1182: aload_0
    //   1183: getfield N : Lfvk;
    //   1186: ldc_w 'CC'
    //   1189: invokevirtual H : (Ljava/lang/String;)V
    //   1192: aload_0
    //   1193: getfield N : Lfvk;
    //   1196: aload_0
    //   1197: getfield R : Lghu;
    //   1200: invokevirtual d : ()Ljava/lang/String;
    //   1203: invokevirtual D : (Ljava/lang/String;)V
    //   1206: aload_0
    //   1207: getfield N : Lfvk;
    //   1210: aload_0
    //   1211: getfield R : Lghu;
    //   1214: invokevirtual H : ()Ljava/lang/String;
    //   1217: invokevirtual C : (Ljava/lang/String;)V
    //   1220: aload_0
    //   1221: getfield N : Lfvk;
    //   1224: aload_0
    //   1225: getfield R : Lghu;
    //   1228: invokevirtual a : ()Ljava/lang/String;
    //   1231: invokevirtual b : (Ljava/lang/String;)V
    //   1234: goto -> 938
    //   1237: astore #5
    //   1239: goto -> 1054
    //   1242: goto -> 785
    // Exception table:
    //   from	to	target	type
    //   579	597	1052	java/text/ParseException
    //   597	606	1052	java/text/ParseException
    //   609	623	1237	java/text/ParseException
    //   1041	1049	1052	java/text/ParseException
  }
  
  public void confirmarTitulos(String paramString, boolean paramBoolean) {
    // Byte code:
    //   0: aload_1
    //   1: ldc_w ' '
    //   4: ldc_w ''
    //   7: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   10: ldc_w '.'
    //   13: ldc_w ''
    //   16: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   19: astore #9
    //   21: aload #9
    //   23: invokevirtual isEmpty : ()Z
    //   26: ifeq -> 50
    //   29: invokestatic d : ()Lhav;
    //   32: aload_0
    //   33: getfield i : Landroid/app/Activity;
    //   36: aload_0
    //   37: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   40: ldc_w 2131297173
    //   43: invokevirtual getString : (I)Ljava/lang/String;
    //   46: invokevirtual a : (Landroid/app/Activity;Ljava/lang/String;)V
    //   49: return
    //   50: aload_0
    //   51: ldc_w 2131757285
    //   54: invokevirtual findViewById : (I)Landroid/view/View;
    //   57: checkcast android/widget/EditText
    //   60: astore #10
    //   62: aload_0
    //   63: ldc 2131757313
    //   65: invokevirtual findViewById : (I)Landroid/view/View;
    //   68: checkcast android/widget/EditText
    //   71: astore #8
    //   73: aload_0
    //   74: ldc_w 2131757315
    //   77: invokevirtual findViewById : (I)Landroid/view/View;
    //   80: checkcast android/widget/EditText
    //   83: astore #7
    //   85: aload #7
    //   87: invokevirtual getText : ()Landroid/text/Editable;
    //   90: invokevirtual toString : ()Ljava/lang/String;
    //   93: invokevirtual length : ()I
    //   96: iconst_1
    //   97: if_icmplt -> 115
    //   100: aload #8
    //   102: invokevirtual getText : ()Landroid/text/Editable;
    //   105: invokevirtual toString : ()Ljava/lang/String;
    //   108: invokevirtual length : ()I
    //   111: iconst_1
    //   112: if_icmpge -> 136
    //   115: invokestatic d : ()Lhav;
    //   118: aload_0
    //   119: getfield i : Landroid/app/Activity;
    //   122: aload_0
    //   123: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   126: ldc_w 2131297209
    //   129: invokevirtual getString : (I)Ljava/lang/String;
    //   132: invokevirtual a : (Landroid/app/Activity;Ljava/lang/String;)V
    //   135: return
    //   136: aload #10
    //   138: invokevirtual getText : ()Landroid/text/Editable;
    //   141: invokevirtual toString : ()Ljava/lang/String;
    //   144: invokevirtual length : ()I
    //   147: iconst_1
    //   148: if_icmpge -> 169
    //   151: aload_0
    //   152: getfield i : Landroid/app/Activity;
    //   155: aload_0
    //   156: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   159: ldc_w 2131297179
    //   162: invokevirtual getString : (I)Ljava/lang/String;
    //   165: invokestatic d : (Landroid/app/Activity;Ljava/lang/String;)V
    //   168: return
    //   169: aload_0
    //   170: ldc_w 2131757239
    //   173: invokevirtual findViewById : (I)Landroid/view/View;
    //   176: checkcast com/santander/app/widget/Carrossel
    //   179: astore_1
    //   180: new com/santander/app/contacorrente/domain/Conta
    //   183: dup
    //   184: invokespecial <init> : ()V
    //   187: astore #5
    //   189: iconst_0
    //   190: istore_3
    //   191: new ghu
    //   194: dup
    //   195: invokespecial <init> : ()V
    //   198: astore #4
    //   200: aload_1
    //   201: invokevirtual a : ()I
    //   204: aload_0
    //   205: getfield v : Lmip;
    //   208: invokeinterface f : ()Lmir;
    //   213: invokevirtual q : ()Lgvx;
    //   216: invokeinterface a : ()Ljava/util/List;
    //   221: invokeinterface size : ()I
    //   226: if_icmpge -> 616
    //   229: aload_0
    //   230: getfield v : Lmip;
    //   233: invokeinterface f : ()Lmir;
    //   238: invokevirtual q : ()Lgvx;
    //   241: invokeinterface a : ()Ljava/util/List;
    //   246: aload_1
    //   247: invokevirtual a : ()I
    //   250: invokeinterface get : (I)Ljava/lang/Object;
    //   255: checkcast com/santander/app/contacorrente/domain/Conta
    //   258: astore #5
    //   260: aload_0
    //   261: ldc_w 2131757241
    //   264: invokevirtual findViewById : (I)Landroid/view/View;
    //   267: checkcast com/santander/app/widget/Carrossel
    //   270: astore #6
    //   272: aload_0
    //   273: getfield c : Lfos;
    //   276: invokevirtual b : ()Ljava/lang/String;
    //   279: astore_1
    //   280: aload #6
    //   282: invokevirtual a : ()I
    //   285: iconst_1
    //   286: if_icmpne -> 675
    //   289: iconst_1
    //   290: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   293: astore #6
    //   295: aload_0
    //   296: getfield d : Lfos;
    //   299: invokevirtual b : ()Ljava/lang/String;
    //   302: astore_1
    //   303: invokestatic a : ()Lhau;
    //   306: iconst_1
    //   307: invokevirtual a : (Z)V
    //   310: aload #8
    //   312: invokevirtual getText : ()Landroid/text/Editable;
    //   315: invokevirtual toString : ()Ljava/lang/String;
    //   318: astore #11
    //   320: aload #7
    //   322: invokevirtual getText : ()Landroid/text/Editable;
    //   325: invokevirtual toString : ()Ljava/lang/String;
    //   328: astore #8
    //   330: new java/text/SimpleDateFormat
    //   333: dup
    //   334: ldc 'dd/MM/yyyy'
    //   336: invokespecial <init> : (Ljava/lang/String;)V
    //   339: astore #12
    //   341: new java/text/SimpleDateFormat
    //   344: dup
    //   345: ldc 'yyyy-MM-dd'
    //   347: invokespecial <init> : (Ljava/lang/String;)V
    //   350: astore #7
    //   352: new java/text/SimpleDateFormat
    //   355: dup
    //   356: ldc 'yyyyMMdd'
    //   358: invokespecial <init> : (Ljava/lang/String;)V
    //   361: astore #13
    //   363: aload_1
    //   364: ldc_w '-'
    //   367: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   370: ifeq -> 691
    //   373: aload #7
    //   375: aload_1
    //   376: invokevirtual parse : (Ljava/lang/String;)Ljava/util/Date;
    //   379: astore #7
    //   381: aload #13
    //   383: aload #7
    //   385: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   388: astore #7
    //   390: aload #7
    //   392: astore_1
    //   393: aload #13
    //   395: aload #12
    //   397: aload #8
    //   399: invokevirtual parse : (Ljava/lang/String;)Ljava/util/Date;
    //   402: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   405: astore #7
    //   407: aload #7
    //   409: astore #8
    //   411: aload_1
    //   412: astore #7
    //   414: aload #8
    //   416: astore_1
    //   417: invokestatic g : ()Ljava/lang/String;
    //   420: astore #8
    //   422: aload_0
    //   423: ldc_w 2131757317
    //   426: invokevirtual findViewById : (I)Landroid/view/View;
    //   429: checkcast android/widget/TextView
    //   432: astore #12
    //   434: aload #12
    //   436: ifnull -> 914
    //   439: aload #12
    //   441: invokevirtual getText : ()Ljava/lang/CharSequence;
    //   444: invokeinterface toString : ()Ljava/lang/String;
    //   449: astore #8
    //   451: aload_0
    //   452: new fvk
    //   455: dup
    //   456: invokespecial <init> : ()V
    //   459: putfield N : Lfvk;
    //   462: aload_0
    //   463: getfield N : Lfvk;
    //   466: iload_3
    //   467: invokevirtual a : (Z)V
    //   470: iload_3
    //   471: ifne -> 724
    //   474: aload_0
    //   475: getfield N : Lfvk;
    //   478: aload #5
    //   480: invokevirtual getAgencia : ()Ljava/lang/String;
    //   483: invokevirtual d : (Ljava/lang/String;)V
    //   486: aload_0
    //   487: getfield N : Lfvk;
    //   490: aload #5
    //   492: invokevirtual getCuenta : ()Ljava/lang/String;
    //   495: invokevirtual m : (Ljava/lang/String;)V
    //   498: aload_0
    //   499: getfield N : Lfvk;
    //   502: aload #9
    //   504: invokevirtual g : (Ljava/lang/String;)V
    //   507: aload_0
    //   508: getfield N : Lfvk;
    //   511: aload #6
    //   513: invokevirtual toString : ()Ljava/lang/String;
    //   516: invokevirtual e : (Ljava/lang/String;)V
    //   519: aload_0
    //   520: getfield N : Lfvk;
    //   523: aload #7
    //   525: invokevirtual n : (Ljava/lang/String;)V
    //   528: aload_0
    //   529: getfield N : Lfvk;
    //   532: aload #7
    //   534: invokevirtual s : (Ljava/lang/String;)V
    //   537: aload_0
    //   538: getfield N : Lfvk;
    //   541: aload #8
    //   543: invokevirtual A : (Ljava/lang/String;)V
    //   546: aload_0
    //   547: getfield N : Lfvk;
    //   550: aload #10
    //   552: invokevirtual getText : ()Landroid/text/Editable;
    //   555: invokevirtual toString : ()Ljava/lang/String;
    //   558: invokevirtual B : (Ljava/lang/String;)V
    //   561: aload_0
    //   562: getfield N : Lfvk;
    //   565: aload #11
    //   567: invokevirtual S : (Ljava/lang/String;)V
    //   570: aload_0
    //   571: getfield N : Lfvk;
    //   574: aload #11
    //   576: invokevirtual U : (Ljava/lang/String;)V
    //   579: aload_0
    //   580: getfield N : Lfvk;
    //   583: aload_1
    //   584: invokevirtual p : (Ljava/lang/String;)V
    //   587: aload_0
    //   588: getfield N : Lfvk;
    //   591: ldc_w 'CB'
    //   594: invokevirtual t : (Ljava/lang/String;)V
    //   597: aload_0
    //   598: getfield N : Lfvk;
    //   601: ldc_w 'CC'
    //   604: invokevirtual H : (Ljava/lang/String;)V
    //   607: iload_2
    //   608: ifeq -> 883
    //   611: aload_0
    //   612: invokespecial h : ()V
    //   615: return
    //   616: aload_0
    //   617: getfield v : Lmip;
    //   620: invokeinterface f : ()Lmir;
    //   625: invokevirtual s : ()Lght;
    //   628: invokeinterface d : ()Ljava/util/List;
    //   633: aload_1
    //   634: invokevirtual a : ()I
    //   637: aload_0
    //   638: getfield v : Lmip;
    //   641: invokeinterface f : ()Lmir;
    //   646: invokevirtual q : ()Lgvx;
    //   649: invokeinterface a : ()Ljava/util/List;
    //   654: invokeinterface size : ()I
    //   659: isub
    //   660: invokeinterface get : (I)Ljava/lang/Object;
    //   665: checkcast ghu
    //   668: astore #4
    //   670: iconst_1
    //   671: istore_3
    //   672: goto -> 260
    //   675: invokestatic a : ()Lhau;
    //   678: iconst_0
    //   679: invokevirtual a : (Z)V
    //   682: iconst_0
    //   683: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   686: astore #6
    //   688: goto -> 310
    //   691: aload #12
    //   693: aload_1
    //   694: invokevirtual parse : (Ljava/lang/String;)Ljava/util/Date;
    //   697: astore #7
    //   699: goto -> 381
    //   702: astore #7
    //   704: ldc 'FazerPagamentoActivity'
    //   706: aload #7
    //   708: invokevirtual getMessage : ()Ljava/lang/String;
    //   711: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   714: pop
    //   715: aload_1
    //   716: astore #7
    //   718: aload #8
    //   720: astore_1
    //   721: goto -> 417
    //   724: aload_0
    //   725: getfield N : Lfvk;
    //   728: invokestatic e : ()Ljava/lang/String;
    //   731: invokevirtual d : (Ljava/lang/String;)V
    //   734: aload_0
    //   735: getfield N : Lfvk;
    //   738: invokestatic f : ()Ljava/lang/String;
    //   741: invokevirtual m : (Ljava/lang/String;)V
    //   744: aload_0
    //   745: getfield N : Lfvk;
    //   748: aload #9
    //   750: invokevirtual g : (Ljava/lang/String;)V
    //   753: aload_0
    //   754: getfield N : Lfvk;
    //   757: aload #6
    //   759: invokevirtual toString : ()Ljava/lang/String;
    //   762: invokevirtual e : (Ljava/lang/String;)V
    //   765: aload_0
    //   766: getfield N : Lfvk;
    //   769: aload #7
    //   771: invokevirtual s : (Ljava/lang/String;)V
    //   774: aload_0
    //   775: getfield N : Lfvk;
    //   778: aload #8
    //   780: invokevirtual A : (Ljava/lang/String;)V
    //   783: aload_0
    //   784: getfield N : Lfvk;
    //   787: aload #10
    //   789: invokevirtual getText : ()Landroid/text/Editable;
    //   792: invokevirtual toString : ()Ljava/lang/String;
    //   795: invokevirtual B : (Ljava/lang/String;)V
    //   798: aload_0
    //   799: getfield N : Lfvk;
    //   802: aload #11
    //   804: invokevirtual S : (Ljava/lang/String;)V
    //   807: aload_0
    //   808: getfield N : Lfvk;
    //   811: aload #11
    //   813: invokevirtual U : (Ljava/lang/String;)V
    //   816: aload_0
    //   817: getfield N : Lfvk;
    //   820: aload_1
    //   821: invokevirtual p : (Ljava/lang/String;)V
    //   824: aload_0
    //   825: getfield N : Lfvk;
    //   828: ldc_w 'C1'
    //   831: invokevirtual t : (Ljava/lang/String;)V
    //   834: aload_0
    //   835: getfield N : Lfvk;
    //   838: ldc_w 'CC'
    //   841: invokevirtual H : (Ljava/lang/String;)V
    //   844: aload_0
    //   845: getfield N : Lfvk;
    //   848: aload #4
    //   850: invokevirtual d : ()Ljava/lang/String;
    //   853: invokevirtual D : (Ljava/lang/String;)V
    //   856: aload_0
    //   857: getfield N : Lfvk;
    //   860: aload #4
    //   862: invokevirtual H : ()Ljava/lang/String;
    //   865: invokevirtual C : (Ljava/lang/String;)V
    //   868: aload_0
    //   869: getfield N : Lfvk;
    //   872: aload #4
    //   874: invokevirtual a : ()Ljava/lang/String;
    //   877: invokevirtual b : (Ljava/lang/String;)V
    //   880: goto -> 607
    //   883: aload_0
    //   884: new fhm
    //   887: dup
    //   888: aload_0
    //   889: aconst_null
    //   890: invokespecial <init> : (Lcom/santander/app/FazerPagamentoActivity;Lfhh;)V
    //   893: putfield M : Lfhm;
    //   896: aload_0
    //   897: getfield M : Lfhm;
    //   900: iconst_0
    //   901: anewarray java/lang/Void
    //   904: invokevirtual execute : ([Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   907: pop
    //   908: return
    //   909: astore #7
    //   911: goto -> 704
    //   914: goto -> 451
    // Exception table:
    //   from	to	target	type
    //   363	381	702	java/text/ParseException
    //   381	390	702	java/text/ParseException
    //   393	407	909	java/text/ParseException
    //   691	699	702	java/text/ParseException
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    gpu.b((Activity)this);
    if (paramInt1 == 0)
      if (paramInt2 == -1) {
        String str1;
        if (((fpm)this.C.get(this.D.getCurrentItem())).a() == 0) {
          str1 = paramIntent.getStringExtra("SCAN_RESULT");
          mxe mxe = new mxe();
          try {
            str1 = mxe.a(str1, this.i);
          } catch (Exception exception) {
            String str = "";
            mxn.b(this.i, getResources().getString(2131298329));
          } 
        } else if (((fpm)this.C.get(this.D.getCurrentItem())).a() == 1) {
          str1 = paramIntent.getStringExtra("SCAN_RESULT");
          mxd mxd = new mxd();
          try {
            str1 = mxd.b(str1);
          } catch (Exception exception) {
            String str = "";
            mxn.b(this.i, getResources().getString(2131298329));
          } 
        } else if (((fpm)this.C.get(this.D.getCurrentItem())).a() == 3) {
          String str = paramIntent.getStringExtra("SCAN_RESULT");
          mxd mxd = new mxd();
          mxe mxe = new mxe();
          try {
            if (str.charAt(0) == '8') {
              str1 = mxe.a(str, this.i);
            } else {
              str1 = str;
              if (str.charAt(0) != '9')
                str1 = mxd.b(str); 
            } 
          } catch (Exception exception) {
            str1 = "";
            mxn.b(this.i, getResources().getString(2131298329));
          } 
        } else {
          str1 = "";
        } 
        String str2 = str1;
        if (str1.contains("[ERRO]")) {
          mxn.b(this.i, str1.replace("[ERRO]", ""));
          str2 = "";
        } 
        b(str2);
      } else if (paramInt2 == 0) {
      
      }  
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed() {
    if (this.v.d()) {
      this.v.c(false);
      finishAffinity();
      a((Context)this);
      return;
    } 
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969033);
    this.E = (Indicator)findViewById(2131757226);
    g();
    onPageSelected(0);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131297441));
    this.J = (Activity)this;
    hau.a().a(false);
    this.g = new fur();
  }
  
  public void onPageScrollStateChanged(int paramInt) {}
  
  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2) {}
  
  public void onPageSelected(int paramInt) {
    int i = mzr.d();
    this.E.setSelected(paramInt);
    if (this.D.getCurrentItem() > 0) {
      if (i == 3) {
        this.G.setImageDrawable(getResources().getDrawable(2130837604));
      } else if (i == 4 || i == 5) {
        this.G.setImageDrawable(getResources().getDrawable(2130837605));
      } else {
        this.G.setImageDrawable(getResources().getDrawable(2130837602));
      } 
    } else {
      this.G.setImageDrawable(getResources().getDrawable(2130837603));
    } 
    if (this.D.getCurrentItem() < this.D.getAdapter().getCount() - 1) {
      if (i == 3) {
        this.F.setImageDrawable(getResources().getDrawable(2130837608));
      } else if (i == 4 || i == 5) {
        this.F.setImageDrawable(getResources().getDrawable(2130837609));
      } else {
        this.F.setImageDrawable(getResources().getDrawable(2130837606));
      } 
    } else {
      this.F.setImageDrawable(getResources().getDrawable(2130837607));
    } 
    FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
    switch (((fpm)this.C.elementAt(paramInt)).a()) {
      default:
        return;
      case 0:
        fragmentTransaction.replace(2131757227, (Fragment)new ikg());
        fragmentTransaction.setTransition(4097);
        fragmentTransaction.commit();
        return;
      case 1:
        fragmentTransaction.replace(2131757227, (Fragment)new ikx());
        fragmentTransaction.setTransition(4097);
        fragmentTransaction.commit();
        return;
      case 3:
        this.H = new ikl();
        fragmentTransaction.replace(2131757227, (Fragment)this.H);
        fragmentTransaction.setTransition(4097);
        fragmentTransaction.commit();
        return;
      case 2:
        fragmentTransaction.replace(2131757227, (Fragment)new ijn());
        fragmentTransaction.setTransition(4097);
        fragmentTransaction.commit();
        return;
      case 4:
        break;
    } 
    fragmentTransaction.replace(2131757227, (Fragment)new ijf());
    fragmentTransaction.setTransition(4097);
    fragmentTransaction.commit();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\FazerPagamentoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */