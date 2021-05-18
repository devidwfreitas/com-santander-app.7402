package com.santander.app.cadastrocanal.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.santander.app.components.view.SegmentTextView;
import fxl;
import fxo;
import fxq;
import fxs;
import fxt;
import fxv;
import fyf;
import fyg;
import fyl;
import fza;
import fzd;
import fzi;
import fzj;
import java.util.ArrayList;
import java.util.List;
import nai;

@SuppressLint({"NewApi"})
public class QuizStartActivity extends AppCompatActivity {
  private static String B;
  
  public static List<fyg> a;
  
  protected static List<fyg> b;
  
  public static List<fyl> c;
  
  public static ArrayList d;
  
  private static String j = "";
  
  private static String k = "";
  
  private static String l = "";
  
  private static String m = "";
  
  private static String n = "";
  
  private static String o = "";
  
  private static String p = "";
  
  private static String q = "";
  
  private static String r = "";
  
  private static String s = "";
  
  private static String t = "";
  
  private static String u = "";
  
  private static String v = "";
  
  private static String w = "";
  
  private static boolean x;
  
  private static fyg y = new fyg();
  
  private static Boolean z = Boolean.valueOf(false);
  
  private fyf A = new fyf();
  
  private String C = "";
  
  private String D = "";
  
  private boolean E;
  
  private fzd F;
  
  private final String e = "CadastroFinalizadoSucessoActivity";
  
  private ListView f;
  
  private fxv g;
  
  private Activity h;
  
  private Button i;
  
  static {
    B = "";
    a = new ArrayList<fyg>();
    b = new ArrayList<fyg>();
    c = new ArrayList<fyl>();
    d = new ArrayList();
  }
  
  public static String a() {
    return r;
  }
  
  private void a(int paramInt) {
    Dialog dialog = new Dialog((Context)this, 2131427876);
    dialog.setContentView(2130968968);
    TextView textView = (TextView)dialog.findViewById(2131756914);
    if (paramInt == 1) {
      textView.setText("Sistema indisponível. Por favor, entre em contato com a Central de Atendimento Santander.");
    } else if (paramInt == 2) {
      textView.setText("Dados Inválidos.");
    } else {
      textView.setText("Você excedeu o número de tentativas.");
    } 
    ((SegmentTextView)dialog.findViewById(2131756525)).setText("Alerta");
    ((Button)dialog.findViewById(2131756931)).setOnClickListener((View.OnClickListener)new fxt(this, paramInt, dialog));
    dialog.show();
  }
  
  public static void a(fyg paramfyg) {
    y = paramfyg;
  }
  
  public static void a(String paramString) {
    r = paramString;
  }
  
  public static void a(ArrayList paramArrayList) {
    d = paramArrayList;
  }
  
  public static void a(List<fyg> paramList) {
    a = paramList;
  }
  
  public static void a(boolean paramBoolean) {
    x = paramBoolean;
  }
  
  public static String b() {
    return s;
  }
  
  public static void b(String paramString) {
    s = paramString;
  }
  
  public static void b(List<fyg> paramList) {
    b = paramList;
  }
  
  public static String c() {
    return t;
  }
  
  public static void c(String paramString) {
    t = paramString;
  }
  
  public static void c(List<fyl> paramList) {
    c = paramList;
  }
  
  public static String d() {
    return u;
  }
  
  public static void d(String paramString) {
    u = paramString;
  }
  
  public static String e() {
    return v;
  }
  
  public static void e(String paramString) {
    v = paramString;
  }
  
  public static String f() {
    return j;
  }
  
  public static void f(String paramString) {
    j = paramString;
  }
  
  public static String g() {
    return k;
  }
  
  public static void g(String paramString) {
    k = paramString;
  }
  
  public static String h() {
    return l;
  }
  
  public static void h(String paramString) {
    l = paramString;
  }
  
  public static String i() {
    return m;
  }
  
  public static void i(String paramString) {
    m = paramString;
  }
  
  public static String j() {
    return n;
  }
  
  public static void j(String paramString) {
    n = paramString;
  }
  
  public static String k() {
    return o;
  }
  
  public static void k(String paramString) {
    o = paramString;
  }
  
  public static String l() {
    return p;
  }
  
  public static void l(String paramString) {
    p = paramString;
  }
  
  public static boolean m() {
    return x;
  }
  
  public static fyg n() {
    return y;
  }
  
  public static List<fyg> o() {
    return a;
  }
  
  public static List<fyg> p() {
    return b;
  }
  
  public static List<fyl> q() {
    return c;
  }
  
  public static ArrayList r() {
    return d;
  }
  
  private void u() {
    if (this.E) {
      (new fza((fzi)new fxo(this), this.h)).c((Object[])new Void[0]);
      return;
    } 
    (new fzj((fzi)new fxq(this), this.h)).c((Object[])new Void[0]);
  }
  
  private void v() {
    int k = View.MeasureSpec.makeMeasureSpec(this.f.getWidth(), 0);
    int j = 150;
    View view = null;
    for (int i = 0; i < this.g.getCount(); i++) {
      view = this.g.getView(i, view, (ViewGroup)this.f);
      if (i == 0)
        view.setLayoutParams(new ViewGroup.LayoutParams(k, -2)); 
      view.measure(k, 0);
      j += view.getMeasuredHeight();
    } 
    ViewGroup.LayoutParams layoutParams = this.f.getLayoutParams();
    layoutParams.height = this.f.getDividerHeight() * (this.g.getCount() - 1) + j;
    this.f.setLayoutParams(layoutParams);
    this.f.requestLayout();
  }
  
  private boolean w() {
    // Byte code:
    //   0: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.a : Ljava/util/List;
    //   3: new fxu
    //   6: dup
    //   7: aload_0
    //   8: invokespecial <init> : (Lcom/santander/app/cadastrocanal/activity/QuizStartActivity;)V
    //   11: invokestatic sort : (Ljava/util/List;Ljava/util/Comparator;)V
    //   14: new java/util/ArrayList
    //   17: dup
    //   18: invokespecial <init> : ()V
    //   21: putstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.b : Ljava/util/List;
    //   24: new naf
    //   27: dup
    //   28: invokespecial <init> : ()V
    //   31: astore #4
    //   33: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.a : Ljava/util/List;
    //   36: invokeinterface iterator : ()Ljava/util/Iterator;
    //   41: astore #5
    //   43: iconst_0
    //   44: istore_2
    //   45: aload #5
    //   47: invokeinterface hasNext : ()Z
    //   52: ifeq -> 629
    //   55: aload #5
    //   57: invokeinterface next : ()Ljava/lang/Object;
    //   62: checkcast fyg
    //   65: astore #6
    //   67: aload #6
    //   69: invokevirtual a : ()Ljava/lang/String;
    //   72: ldc_w '01'
    //   75: invokevirtual matches : (Ljava/lang/String;)Z
    //   78: ifeq -> 335
    //   81: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.j : Ljava/lang/String;
    //   84: ldc_w '/'
    //   87: ldc ''
    //   89: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   92: putstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.j : Ljava/lang/String;
    //   95: iload_2
    //   96: istore_1
    //   97: aload #6
    //   99: invokevirtual e : ()Ljava/lang/String;
    //   102: ldc_w 'OBR'
    //   105: invokevirtual matches : (Ljava/lang/String;)Z
    //   108: ifeq -> 124
    //   111: iload_2
    //   112: istore_1
    //   113: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.j : Ljava/lang/String;
    //   116: invokevirtual length : ()I
    //   119: ifne -> 124
    //   122: iconst_1
    //   123: istore_1
    //   124: aload #6
    //   126: aload #4
    //   128: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.j : Ljava/lang/String;
    //   131: ldc_w 'UTF-8'
    //   134: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   137: invokevirtual b : ([B)Ljava/lang/String;
    //   140: invokevirtual c : (Ljava/lang/String;)V
    //   143: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.b : Ljava/util/List;
    //   146: aload #6
    //   148: invokeinterface add : (Ljava/lang/Object;)Z
    //   153: pop
    //   154: iload_1
    //   155: istore_3
    //   156: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.x : Z
    //   159: ifne -> 612
    //   162: iload_1
    //   163: istore_2
    //   164: aload #6
    //   166: invokevirtual a : ()Ljava/lang/String;
    //   169: ldc_w '02'
    //   172: invokevirtual matches : (Ljava/lang/String;)Z
    //   175: ifeq -> 237
    //   178: iload_1
    //   179: istore_2
    //   180: aload #6
    //   182: invokevirtual e : ()Ljava/lang/String;
    //   185: ldc_w 'OBR'
    //   188: invokevirtual matches : (Ljava/lang/String;)Z
    //   191: ifeq -> 207
    //   194: iload_1
    //   195: istore_2
    //   196: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.n : Ljava/lang/String;
    //   199: invokevirtual length : ()I
    //   202: ifne -> 207
    //   205: iconst_1
    //   206: istore_2
    //   207: aload #6
    //   209: aload #4
    //   211: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.n : Ljava/lang/String;
    //   214: ldc_w 'UTF-8'
    //   217: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   220: invokevirtual b : ([B)Ljava/lang/String;
    //   223: invokevirtual c : (Ljava/lang/String;)V
    //   226: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.b : Ljava/util/List;
    //   229: aload #6
    //   231: invokeinterface add : (Ljava/lang/Object;)Z
    //   236: pop
    //   237: aload #6
    //   239: invokevirtual a : ()Ljava/lang/String;
    //   242: ldc_w '04'
    //   245: invokevirtual matches : (Ljava/lang/String;)Z
    //   248: ifeq -> 537
    //   251: iload_2
    //   252: istore_1
    //   253: aload #6
    //   255: invokevirtual e : ()Ljava/lang/String;
    //   258: ldc_w 'OBR'
    //   261: invokevirtual matches : (Ljava/lang/String;)Z
    //   264: ifeq -> 280
    //   267: iload_2
    //   268: istore_1
    //   269: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.m : Ljava/lang/String;
    //   272: invokevirtual length : ()I
    //   275: ifne -> 280
    //   278: iconst_1
    //   279: istore_1
    //   280: aload #6
    //   282: aload #4
    //   284: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.m : Ljava/lang/String;
    //   287: ldc_w 'UTF-8'
    //   290: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   293: invokevirtual b : ([B)Ljava/lang/String;
    //   296: invokevirtual c : (Ljava/lang/String;)V
    //   299: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.b : Ljava/util/List;
    //   302: aload #6
    //   304: invokeinterface add : (Ljava/lang/Object;)Z
    //   309: pop
    //   310: new fyg
    //   313: dup
    //   314: invokespecial <init> : ()V
    //   317: pop
    //   318: iload_1
    //   319: istore_2
    //   320: goto -> 45
    //   323: astore #7
    //   325: aload #6
    //   327: ldc ''
    //   329: invokevirtual c : (Ljava/lang/String;)V
    //   332: goto -> 143
    //   335: aload #6
    //   337: invokevirtual a : ()Ljava/lang/String;
    //   340: ldc_w '05'
    //   343: invokevirtual matches : (Ljava/lang/String;)Z
    //   346: ifeq -> 423
    //   349: iload_2
    //   350: istore_1
    //   351: aload #6
    //   353: invokevirtual e : ()Ljava/lang/String;
    //   356: ldc_w 'OBR'
    //   359: invokevirtual matches : (Ljava/lang/String;)Z
    //   362: ifeq -> 378
    //   365: iload_2
    //   366: istore_1
    //   367: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.k : Ljava/lang/String;
    //   370: invokevirtual length : ()I
    //   373: ifne -> 378
    //   376: iconst_1
    //   377: istore_1
    //   378: aload #6
    //   380: aload #4
    //   382: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.k : Ljava/lang/String;
    //   385: ldc_w 'UTF-8'
    //   388: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   391: invokevirtual b : ([B)Ljava/lang/String;
    //   394: invokevirtual c : (Ljava/lang/String;)V
    //   397: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.b : Ljava/util/List;
    //   400: aload #6
    //   402: invokeinterface add : (Ljava/lang/Object;)Z
    //   407: pop
    //   408: goto -> 154
    //   411: astore #7
    //   413: aload #6
    //   415: ldc ''
    //   417: invokevirtual c : (Ljava/lang/String;)V
    //   420: goto -> 397
    //   423: iload_2
    //   424: istore_1
    //   425: aload #6
    //   427: invokevirtual a : ()Ljava/lang/String;
    //   430: ldc_w '06'
    //   433: invokevirtual matches : (Ljava/lang/String;)Z
    //   436: ifeq -> 154
    //   439: iload_2
    //   440: istore_1
    //   441: aload #6
    //   443: invokevirtual e : ()Ljava/lang/String;
    //   446: ldc_w 'OBR'
    //   449: invokevirtual matches : (Ljava/lang/String;)Z
    //   452: ifeq -> 468
    //   455: iload_2
    //   456: istore_1
    //   457: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.l : Ljava/lang/String;
    //   460: invokevirtual length : ()I
    //   463: ifne -> 468
    //   466: iconst_1
    //   467: istore_1
    //   468: aload #6
    //   470: aload #4
    //   472: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.l : Ljava/lang/String;
    //   475: ldc_w 'UTF-8'
    //   478: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   481: invokevirtual b : ([B)Ljava/lang/String;
    //   484: invokevirtual c : (Ljava/lang/String;)V
    //   487: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.b : Ljava/util/List;
    //   490: aload #6
    //   492: invokeinterface add : (Ljava/lang/Object;)Z
    //   497: pop
    //   498: goto -> 154
    //   501: astore #7
    //   503: aload #6
    //   505: ldc ''
    //   507: invokevirtual c : (Ljava/lang/String;)V
    //   510: goto -> 487
    //   513: astore #7
    //   515: aload #6
    //   517: ldc ''
    //   519: invokevirtual c : (Ljava/lang/String;)V
    //   522: goto -> 226
    //   525: astore #7
    //   527: aload #6
    //   529: ldc ''
    //   531: invokevirtual c : (Ljava/lang/String;)V
    //   534: goto -> 299
    //   537: iload_2
    //   538: istore_3
    //   539: aload #6
    //   541: invokevirtual a : ()Ljava/lang/String;
    //   544: ldc_w '03'
    //   547: invokevirtual matches : (Ljava/lang/String;)Z
    //   550: ifeq -> 612
    //   553: iload_2
    //   554: istore_3
    //   555: aload #6
    //   557: invokevirtual e : ()Ljava/lang/String;
    //   560: ldc_w 'OBR'
    //   563: invokevirtual matches : (Ljava/lang/String;)Z
    //   566: ifeq -> 582
    //   569: iload_2
    //   570: istore_3
    //   571: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.p : Ljava/lang/String;
    //   574: invokevirtual length : ()I
    //   577: ifne -> 582
    //   580: iconst_1
    //   581: istore_3
    //   582: aload #6
    //   584: aload #4
    //   586: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.p : Ljava/lang/String;
    //   589: ldc_w 'UTF-8'
    //   592: invokevirtual getBytes : (Ljava/lang/String;)[B
    //   595: invokevirtual b : ([B)Ljava/lang/String;
    //   598: invokevirtual c : (Ljava/lang/String;)V
    //   601: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.b : Ljava/util/List;
    //   604: aload #6
    //   606: invokeinterface add : (Ljava/lang/Object;)Z
    //   611: pop
    //   612: iload_3
    //   613: istore_1
    //   614: goto -> 310
    //   617: astore #7
    //   619: aload #6
    //   621: ldc ''
    //   623: invokevirtual c : (Ljava/lang/String;)V
    //   626: goto -> 601
    //   629: new java/util/ArrayList
    //   632: dup
    //   633: invokespecial <init> : ()V
    //   636: putstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.a : Ljava/util/List;
    //   639: getstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.b : Ljava/util/List;
    //   642: putstatic com/santander/app/cadastrocanal/activity/QuizStartActivity.a : Ljava/util/List;
    //   645: iload_2
    //   646: ireturn
    // Exception table:
    //   from	to	target	type
    //   124	143	323	java/lang/Exception
    //   207	226	513	java/lang/Exception
    //   280	299	525	java/lang/Exception
    //   378	397	411	java/lang/Exception
    //   468	487	501	java/lang/Exception
    //   582	601	617	java/lang/Exception
  }
  
  private void x() {
    Dialog dialog = new Dialog((Context)this, 2131427876);
    dialog.setContentView(2130968968);
    ((TextView)dialog.findViewById(2131756914)).setText(getResources().getString(2131297342));
    ((SegmentTextView)dialog.findViewById(2131756525)).setText("Alerta");
    ((Button)dialog.findViewById(2131756931)).setOnClickListener((View.OnClickListener)new fxs(this, dialog));
    dialog.show();
  }
  
  protected void onCreate(Bundle paramBundle) {
    new Dialog((Context)this, 2131427876);
    super.onCreate(paramBundle);
    setContentView(2130969423);
    this.f = (ListView)findViewById(2131759270);
    this.h = (Activity)this;
    this.C = getIntent().getStringExtra("cpf");
    this.D = getIntent().getStringExtra("Nome");
    this.E = getIntent().getBooleanExtra("cadastro", true);
    ((TextView)findViewById(2131759268)).setText(this.D);
    ((TextView)findViewById(2131759269)).setText("CPF:" + new StringBuilder(new String(nai.c(this.C))));
    this.i = (Button)findViewById(2131756381);
    this.i.setOnClickListener((View.OnClickListener)new fxl(this));
    ActionBar actionBar = getSupportActionBar();
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130839071));
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    u();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\cadastrocanal\activity\QuizStartActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */