package com.santander.app.dpp;

import android.app.Activity;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.database.DataSetObserver;
import android.os.Bundle;
import android.support.v4.view.ViewPager;
import android.support.v7.app.ActionBar;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.DatePicker;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import com.santander.app.widget.Carrossel;
import com.santander.app.widget.Indicator;
import fom;
import foo;
import ftc;
import ftl;
import fuu;
import fuy;
import fwh;
import gpu;
import grs;
import hcz;
import hdg;
import hdi;
import hdr;
import hds;
import hdt;
import hdu;
import hdv;
import hdw;
import hdx;
import hdy;
import hdz;
import hea;
import heb;
import hed;
import hee;
import hej;
import heq;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import nez;
import nfd;

public class DPPPreenchimentoActivity extends grs implements DatePickerDialog.OnDateSetListener, Serializable, nez {
  private static final long g = 1L;
  
  private static final String w = "opcao";
  
  private static final String x = "novaPoupanca";
  
  private static final String y = "DPPoupanca";
  
  private transient Carrossel A;
  
  private transient Indicator B;
  
  private transient Dialog C;
  
  private ftc D;
  
  private DPPPreenchimentoActivity E;
  
  private Button F;
  
  private EditText G;
  
  private TextWatcher H;
  
  private EditText I;
  
  private Spinner J;
  
  private heq K = new heq();
  
  private transient ViewPager L;
  
  private transient hdi M;
  
  private transient ViewPager N;
  
  private transient hdg O;
  
  private EditText P;
  
  private boolean Q = false;
  
  private fuu R;
  
  private fwh S;
  
  private EditText T;
  
  private EditText U;
  
  private int V;
  
  private boolean W = false;
  
  private ArrayList<heq> X;
  
  private transient hee Y;
  
  private boolean Z = true;
  
  public ListView a;
  
  private boolean aa = false;
  
  public transient hcz b;
  
  public LinearLayout c;
  
  public LinearLayout d;
  
  public LinearLayout e;
  
  public LinearLayout f;
  
  private transient Carrossel z;
  
  private void a() {
    ArrayList<String> arrayList = new ArrayList();
    arrayList.add("01");
    arrayList.add("02");
    arrayList.add("03");
    arrayList.add("04");
    arrayList.add("05");
    arrayList.add("06");
    arrayList.add("07");
    arrayList.add("08");
    arrayList.add("09");
    arrayList.add("10");
    arrayList.add("11");
    arrayList.add("12");
    arrayList.add("13");
    arrayList.add("14");
    arrayList.add("15");
    arrayList.add("16");
    arrayList.add("17");
    arrayList.add("18");
    arrayList.add("19");
    arrayList.add("20");
    arrayList.add("21");
    arrayList.add("22");
    arrayList.add("23");
    arrayList.add("24");
    arrayList.add("25");
    arrayList.add("26");
    arrayList.add("27");
    arrayList.add("28");
    hdt hdt = new hdt(this, getBaseContext(), 2130969470, arrayList);
    hdt.setDropDownViewResource(2130969469);
    this.J.setAdapter((SpinnerAdapter)hdt);
    this.J.setOnItemSelectedListener((AdapterView.OnItemSelectedListener)new hdu(this));
  }
  
  private void a(String paramString1, String paramString2) {
    List list = this.v.f().q().a();
    ArrayList<Conta> arrayList = new ArrayList();
    for (Conta conta : list) {
      if (conta.getAgencia().equals(paramString1) && conta.getCuenta().equals(paramString2))
        arrayList.add(conta); 
    } 
  }
  
  private void a(List<Conta> paramList) {
    // Byte code:
    //   0: aload_0
    //   1: aload_0
    //   2: ldc_w 2131756039
    //   5: invokevirtual findViewById : (I)Landroid/view/View;
    //   8: checkcast android/support/v4/view/ViewPager
    //   11: putfield N : Landroid/support/v4/view/ViewPager;
    //   14: aload_0
    //   15: ldc_w 2131756042
    //   18: invokevirtual findViewById : (I)Landroid/view/View;
    //   21: checkcast com/santander/app/widget/Indicator
    //   24: astore_3
    //   25: aload_0
    //   26: ldc_w 2131756232
    //   29: invokevirtual findViewById : (I)Landroid/view/View;
    //   32: checkcast android/widget/ImageView
    //   35: astore #4
    //   37: aload_0
    //   38: ldc_w 2131756233
    //   41: invokevirtual findViewById : (I)Landroid/view/View;
    //   44: checkcast android/widget/ImageView
    //   47: astore #5
    //   49: aload_0
    //   50: new hdg
    //   53: dup
    //   54: aload_0
    //   55: aload_0
    //   56: getfield N : Landroid/support/v4/view/ViewPager;
    //   59: aload_3
    //   60: aload #4
    //   62: aload #5
    //   64: iconst_0
    //   65: invokespecial <init> : (Landroid/app/Activity;Landroid/support/v4/view/ViewPager;Lcom/santander/app/widget/Indicator;Landroid/widget/ImageView;Landroid/widget/ImageView;I)V
    //   68: putfield O : Lhdg;
    //   71: aload_0
    //   72: getfield d : Landroid/widget/LinearLayout;
    //   75: invokevirtual getVisibility : ()I
    //   78: ifne -> 286
    //   81: aload_0
    //   82: getfield O : Lhdg;
    //   85: aload_1
    //   86: iconst_0
    //   87: invokevirtual a : (Ljava/util/List;I)V
    //   90: aload_0
    //   91: ldc_w 2131756042
    //   94: invokevirtual findViewById : (I)Landroid/view/View;
    //   97: iconst_0
    //   98: invokevirtual setVisibility : (I)V
    //   101: aload_0
    //   102: ldc_w 2131756232
    //   105: invokevirtual findViewById : (I)Landroid/view/View;
    //   108: iconst_0
    //   109: invokevirtual setVisibility : (I)V
    //   112: aload_0
    //   113: ldc_w 2131756233
    //   116: invokevirtual findViewById : (I)Landroid/view/View;
    //   119: iconst_0
    //   120: invokevirtual setVisibility : (I)V
    //   123: aload_0
    //   124: getfield O : Lhdg;
    //   127: new hec
    //   130: dup
    //   131: aload_0
    //   132: invokespecial <init> : (Lcom/santander/app/dpp/DPPPreenchimentoActivity;)V
    //   135: invokevirtual a : (Lnfd;)V
    //   138: aload_0
    //   139: getfield R : Lfuu;
    //   142: aload_0
    //   143: getfield O : Lhdg;
    //   146: invokevirtual g : ()Ljava/util/List;
    //   149: iconst_0
    //   150: invokeinterface get : (I)Ljava/lang/Object;
    //   155: checkcast com/santander/app/contacorrente/domain/Conta
    //   158: invokevirtual getAutorizado : ()Ljava/lang/String;
    //   161: invokevirtual setAutorizado : (Ljava/lang/String;)V
    //   164: aload_0
    //   165: getfield R : Lfuu;
    //   168: aload_0
    //   169: getfield O : Lhdg;
    //   172: invokevirtual g : ()Ljava/util/List;
    //   175: iconst_0
    //   176: invokeinterface get : (I)Ljava/lang/Object;
    //   181: checkcast com/santander/app/contacorrente/domain/Conta
    //   184: invokevirtual getCpf : ()Ljava/lang/String;
    //   187: invokevirtual setCpf : (Ljava/lang/String;)V
    //   190: aload_0
    //   191: getfield R : Lfuu;
    //   194: aload_0
    //   195: getfield O : Lhdg;
    //   198: invokevirtual g : ()Ljava/util/List;
    //   201: iconst_0
    //   202: invokeinterface get : (I)Ljava/lang/Object;
    //   207: checkcast com/santander/app/contacorrente/domain/Conta
    //   210: invokevirtual getAgencia : ()Ljava/lang/String;
    //   213: invokevirtual setAgencia : (Ljava/lang/String;)V
    //   216: aload_0
    //   217: getfield R : Lfuu;
    //   220: aload_0
    //   221: getfield O : Lhdg;
    //   224: invokevirtual g : ()Ljava/util/List;
    //   227: iconst_0
    //   228: invokeinterface get : (I)Ljava/lang/Object;
    //   233: checkcast com/santander/app/contacorrente/domain/Conta
    //   236: invokevirtual getCuenta : ()Ljava/lang/String;
    //   239: invokevirtual setCuenta : (Ljava/lang/String;)V
    //   242: aload_1
    //   243: invokeinterface size : ()I
    //   248: iconst_1
    //   249: if_icmpne -> 285
    //   252: aload_0
    //   253: ldc_w 2131756042
    //   256: invokevirtual findViewById : (I)Landroid/view/View;
    //   259: iconst_4
    //   260: invokevirtual setVisibility : (I)V
    //   263: aload_0
    //   264: ldc_w 2131756232
    //   267: invokevirtual findViewById : (I)Landroid/view/View;
    //   270: iconst_4
    //   271: invokevirtual setVisibility : (I)V
    //   274: aload_0
    //   275: ldc_w 2131756233
    //   278: invokevirtual findViewById : (I)Landroid/view/View;
    //   281: iconst_4
    //   282: invokevirtual setVisibility : (I)V
    //   285: return
    //   286: aload_0
    //   287: getfield M : Lhdi;
    //   290: invokevirtual g : ()Ljava/util/List;
    //   293: aload_0
    //   294: getfield M : Lhdi;
    //   297: invokevirtual a : ()I
    //   300: invokeinterface get : (I)Ljava/lang/Object;
    //   305: checkcast ftl
    //   308: astore_3
    //   309: aload_3
    //   310: invokevirtual m : ()Ljava/lang/String;
    //   313: ifnull -> 451
    //   316: new java/util/ArrayList
    //   319: dup
    //   320: invokespecial <init> : ()V
    //   323: astore #4
    //   325: iconst_0
    //   326: istore_2
    //   327: iload_2
    //   328: aload_1
    //   329: invokeinterface size : ()I
    //   334: if_icmpge -> 398
    //   337: aload_1
    //   338: iload_2
    //   339: invokeinterface get : (I)Ljava/lang/Object;
    //   344: checkcast com/santander/app/contacorrente/domain/Conta
    //   347: invokevirtual getAgencia : ()Ljava/lang/String;
    //   350: aload_3
    //   351: invokevirtual l : ()Ljava/lang/String;
    //   354: invokevirtual equals : (Ljava/lang/Object;)Z
    //   357: ifeq -> 444
    //   360: aload_1
    //   361: iload_2
    //   362: invokeinterface get : (I)Ljava/lang/Object;
    //   367: checkcast com/santander/app/contacorrente/domain/Conta
    //   370: invokevirtual getCuenta : ()Ljava/lang/String;
    //   373: aload_3
    //   374: invokevirtual m : ()Ljava/lang/String;
    //   377: invokevirtual equals : (Ljava/lang/Object;)Z
    //   380: ifeq -> 444
    //   383: aload #4
    //   385: aload_1
    //   386: iload_2
    //   387: invokeinterface get : (I)Ljava/lang/Object;
    //   392: invokeinterface add : (Ljava/lang/Object;)Z
    //   397: pop
    //   398: aload_0
    //   399: getfield O : Lhdg;
    //   402: aload #4
    //   404: iconst_0
    //   405: invokevirtual a : (Ljava/util/List;I)V
    //   408: aload_0
    //   409: ldc_w 2131756042
    //   412: invokevirtual findViewById : (I)Landroid/view/View;
    //   415: iconst_4
    //   416: invokevirtual setVisibility : (I)V
    //   419: aload_0
    //   420: ldc_w 2131756232
    //   423: invokevirtual findViewById : (I)Landroid/view/View;
    //   426: iconst_4
    //   427: invokevirtual setVisibility : (I)V
    //   430: aload_0
    //   431: ldc_w 2131756233
    //   434: invokevirtual findViewById : (I)Landroid/view/View;
    //   437: iconst_4
    //   438: invokevirtual setVisibility : (I)V
    //   441: goto -> 123
    //   444: iload_2
    //   445: iconst_1
    //   446: iadd
    //   447: istore_2
    //   448: goto -> 327
    //   451: aload_0
    //   452: getfield O : Lhdg;
    //   455: aload_1
    //   456: iconst_0
    //   457: invokevirtual a : (Ljava/util/List;I)V
    //   460: aload_0
    //   461: ldc_w 2131756042
    //   464: invokevirtual findViewById : (I)Landroid/view/View;
    //   467: iconst_0
    //   468: invokevirtual setVisibility : (I)V
    //   471: aload_0
    //   472: ldc_w 2131756232
    //   475: invokevirtual findViewById : (I)Landroid/view/View;
    //   478: iconst_0
    //   479: invokevirtual setVisibility : (I)V
    //   482: aload_0
    //   483: ldc_w 2131756233
    //   486: invokevirtual findViewById : (I)Landroid/view/View;
    //   489: iconst_0
    //   490: invokevirtual setVisibility : (I)V
    //   493: goto -> 123
  }
  
  private void a(Vector<ftl> paramVector, boolean paramBoolean) {
    this.L = (ViewPager)findViewById(2131757114);
    Indicator indicator = (Indicator)findViewById(2131757117);
    ImageView imageView1 = (ImageView)findViewById(2131757115);
    ImageView imageView2 = (ImageView)findViewById(2131757116);
    this.z.setVisibility(0);
    this.M = new hdi((Activity)this, this.L, indicator, imageView1, imageView2, 0);
    this.M.a(paramVector, 0, this.V, paramBoolean);
    this.M.a((nfd)new hds(this));
    a(this.v.f().q().a());
  }
  
  private void b() {
    int k = View.MeasureSpec.makeMeasureSpec(this.a.getWidth(), 0);
    int j = 80;
    View view = null;
    for (int i = 0; i < this.b.getCount(); i++) {
      view = this.b.getView(i, view, (ViewGroup)this.a);
      if (i == 0)
        view.setLayoutParams(new ViewGroup.LayoutParams(k, -2)); 
      view.measure(k, 0);
      j += view.getMeasuredHeight();
    } 
    ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
    layoutParams.height = this.a.getDividerHeight() * (this.b.getCount() - 1) + j;
    this.a.setLayoutParams(layoutParams);
    this.a.requestLayout();
  }
  
  private void c() {
    this.A = (Carrossel)findViewById(2131759255);
    this.A.setVisibility(0);
    this.B = (Indicator)findViewById(2131757079);
    foo foo = new foo((Context)this, this.v.f().q().a());
    this.A.setAdapter((fom)foo);
  }
  
  public void a(int paramInt) {}
  
  public void a(ArrayList<heq> paramArrayList) {
    if (paramArrayList.isEmpty()) {
      heb heb = new heb(this);
      this.b = new hcz(b(paramArrayList), (Context)this, (DataSetObserver)heb);
      this.a.setAdapter((ListAdapter)this.b);
      this.a.setVisibility(0);
      b();
      return;
    } 
    this.a.setVisibility(8);
  }
  
  public void a(boolean paramBoolean) {
    if (this.d.getVisibility() == 0) {
      if (paramBoolean) {
        this.e.setVisibility(0);
        return;
      } 
    } else {
      return;
    } 
    this.e.setVisibility(8);
  }
  
  public ArrayList<heq> b(ArrayList<heq> paramArrayList) {
    ArrayList<heq> arrayList = new ArrayList();
    for (heq heq1 : paramArrayList) {
      if (heq1.d().equals(((ftl)this.M.g().get(this.M.a())).c().a()) && heq1.g().equals(((ftl)this.M.g().get(this.M.a())).c().d()))
        arrayList.add(heq1); 
    } 
    return arrayList;
  }
  
  public void b(int paramInt) {
    this.B.setSelected(paramInt);
    if (paramInt != this.B.a() - 1) {
      ftl ftl = null;
      Vector<ftl> vector = this.D.c();
      if (vector.size() > this.z.a())
        ftl = vector.get(this.z.a()); 
      if (ftl != null)
        a(ftl.l(), ftl.m()); 
      return;
    } 
    c();
  }
  
  public void onBackPressed() {
    Intent intent = new Intent((Context)this, HomeLogadaActivity.class);
    intent.addFlags(67108864);
    startActivity(intent);
    finish();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969003);
    Log.d("Preenchimento", "oncreate");
    this.E = this;
    this.D = new ftc();
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131297251));
    this.R = new fuu();
    this.S = new fwh();
    this.a = (ListView)findViewById(2131757096);
    this.F = (Button)findViewById(2131757109);
    LinearLayout linearLayout2 = (LinearLayout)findViewById(2131757070);
    this.c = (LinearLayout)findViewById(2131757071);
    LinearLayout linearLayout1 = (LinearLayout)findViewById(2131757072);
    this.d = (LinearLayout)findViewById(2131757073);
    this.G = (EditText)findViewById(2131757100);
    this.e = (LinearLayout)findViewById(2131757080);
    this.f = (LinearLayout)findViewById(2131757085);
    this.I = (EditText)findViewById(2131757097);
    this.P = (EditText)findViewById(2131757102);
    this.T = (EditText)findViewById(2131757083);
    this.U = (EditText)findViewById(2131757084);
    this.J = (Spinner)findViewById(2131757098);
    this.z = (Carrossel)findViewById(2131757076);
    this.a.setVisibility(0);
    Bundle bundle = getIntent().getExtras();
    this.V = bundle.getInt("opcao");
    this.T.setText("");
    this.U.setText("");
    if (bundle.getSerializable("dpp") != null) {
      this.K = (heq)bundle.getSerializable("dpp");
    } else {
      this.K = new heq();
    } 
    if (this.V == 1)
      linearLayout2.setEnabled(false); 
    this.P.setOnClickListener((View.OnClickListener)new hdr(this));
    linearLayout2.setOnClickListener((View.OnClickListener)new hdv(this));
    linearLayout1.setOnClickListener((View.OnClickListener)new hdw(this));
    this.H = hej.a("##/####", this.G);
    this.G.addTextChangedListener(this.H);
    this.G.setOnClickListener((View.OnClickListener)new hdx(this));
    this.I.addTextChangedListener((TextWatcher)new hdy(this));
    this.I.setOnClickListener((View.OnClickListener)new hdz(this));
    a();
    this.F.setOnClickListener((View.OnClickListener)new hea(this));
    if (this.D.c() != null && this.D.c().isEmpty()) {
      this.Y = new hee(this, null);
      this.Y.execute((Object[])new Void[0]);
    } else if (this.d.getVisibility() == 0) {
      if (!this.W) {
        a(this.D.c(), false);
        if (this.D.c().isEmpty())
          this.Q = true; 
      } 
    } else {
      a(this.D.c(), true);
      if (this.D.c().isEmpty())
        this.Q = true; 
    } 
    if (this.V == 1 && this.K != null) {
      Vector<ftl> vector = new Vector();
      for (int i = 0; i < 1; i++) {
        ftl ftl = new ftl();
        ftl.c().a(this.K.d());
        ftl.c().d(this.K.g());
        vector.add(ftl);
      } 
      if (this.d.getVisibility() == 0) {
        a(vector, false);
        if (this.D.c().isEmpty())
          this.Q = true; 
      } else {
        a(vector, true);
        if (this.D.c().isEmpty())
          this.Q = true; 
      } 
      findViewById(2131757117).setVisibility(4);
      findViewById(2131757115).setVisibility(4);
      findViewById(2131757116).setVisibility(4);
      ArrayList<Conta> arrayList = new ArrayList();
      Conta conta = new Conta();
      for (Conta conta1 : this.v.f().q().a()) {
        if (this.K.f().equals(conta1.getCuenta())) {
          conta.setAutorizado(conta1.getAutorizado());
          conta.setCpf(this.v.f().k());
          conta.setAgencia(this.K.c());
          conta.setCuenta(this.K.f());
          conta.setValor(conta1.getValor());
          conta.setExtractoHome(new fuy());
          conta.getExtractoHome().u(conta1.getExtractoHome().u());
          arrayList.add(conta);
        } 
      } 
      a(arrayList);
      findViewById(2131756042).setVisibility(4);
      findViewById(2131756232).setVisibility(4);
      findViewById(2131756233).setVisibility(4);
      this.I.setText(this.K.s());
      String[] arrayOfString = this.K.k().split("/");
      this.G.setText(arrayOfString[1] + "/" + arrayOfString[2]);
      if (this.K.r() != null)
        this.P.setText(String.valueOf(Integer.parseInt(this.K.r()))); 
      this.J.setSelection(Integer.parseInt(this.K.n()) - 1);
      if (this.K.o().equals("T")) {
        this.c.setVisibility(4);
        this.d.setVisibility(0);
        this.e.setVisibility(8);
      } else {
        this.c.setVisibility(0);
        this.d.setVisibility(4);
        this.e.setVisibility(8);
        linearLayout1.setEnabled(false);
      } 
    } 
    (new hed(this)).execute((Object[])new Void[0]);
  }
  
  public void onDateSet(DatePicker paramDatePicker, int paramInt1, int paramInt2, int paramInt3) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\dpp\DPPPreenchimentoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */