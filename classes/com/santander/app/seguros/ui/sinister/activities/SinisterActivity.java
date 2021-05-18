package com.santander.app.seguros.ui.sinister.activities;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AlertDialog;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.widget.TextView;
import aor;
import br.com.zup.multistatelayout.MultiStateLayout;
import com.santander.app.seguros.ui.widgets.ExpandableLayoutV2;
import com.santander.app.seguros.ui.widgets.SimpleIndicatorStepV1;
import ejm;
import gkw;
import gnp;
import gnv;
import gpu;
import grs;
import ih;
import im;
import ir;
import is;
import java.io.File;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kuo;
import kuq;
import kuy;
import kva;
import kvb;
import kvo;
import kwr;
import kws;
import kxd;
import lrg;
import lrh;
import lri;
import lrj;
import lrk;
import lrm;
import mgs;
import mhg;
import mhj;
import mhv;
import mzx;
import nab;
import org.json.JSONException;
import org.json.JSONObject;

public class SinisterActivity extends grs {
  public static final String A = "phone-assistance";
  
  public static final String a = "coverage-step-fragment";
  
  public static final String b = "date-step-fragment";
  
  public static final String c = "audio-step-fragment";
  
  public static final String d = "slider-value-step-fragment";
  
  public static final String e = "equipment-list-step-fragment";
  
  public static final String f = "date-period-step-fragment";
  
  public static final String g = "summary-step-fragment";
  
  public static final String w = "email_phone_step_fragment";
  
  public static final String x = "id_family";
  
  public static final String y = "insurance-data-key";
  
  public static final String z = "higher_coverage_key";
  
  public String B;
  
  public List<kuy> C;
  
  public MultiStateLayout D;
  
  public ExpandableLayoutV2 E;
  
  private mgs F = new mgs();
  
  private boolean G = false;
  
  private boolean H = false;
  
  private String I;
  
  private String J;
  
  private SimpleIndicatorStepV1 K;
  
  private TextView L;
  
  private int M = 0;
  
  private int N = 0;
  
  private boolean O = false;
  
  private boolean P = true;
  
  private int Q;
  
  private List<kuo> R;
  
  private List<kvo> S = new ArrayList<kvo>();
  
  private kuy T;
  
  private boolean U = false;
  
  private boolean V = false;
  
  private boolean W = false;
  
  private float X = -1.0F;
  
  private void A() {
    if (this.S.size() > 0) {
      Iterator<kvo> iterator = this.S.iterator();
      for (String str = ""; iterator.hasNext(); str = str + " " + String.valueOf(kvo.b()))
        kvo kvo = iterator.next(); 
    } else {
      Log.e("PASSOS", "NULL");
    } 
  }
  
  private gkw<is> a(long paramLong, kva paramkva) {
    return (gkw<is>)new lrm(this, paramLong, paramkva);
  }
  
  private void a(int paramInt, List<kuo> paramList) {
    this.D.setState(aor.LOADING);
    kva kva = new kva();
    kva.b(paramInt);
    kva.b(paramList);
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject2.put("X-Application-Key", mzx.a().c().get("appKey"));
      jSONObject2.put("Content-Type", "application/json");
    } catch (Exception exception) {
      exception.printStackTrace();
    } 
    JSONObject jSONObject1 = new JSONObject();
    try {
      JSONObject jSONObject = new JSONObject((new ejm()).b(kva));
      jSONObject1 = jSONObject;
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
    } 
    ir ir = gnp.a().a(kwr.SINISTER_STEP_OPEN.getEndpoint(), im.POST, jSONObject2, jSONObject1, true);
    gnv gnv = new gnv(z(), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, (ih)gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        exception.printStackTrace();
        this.D.setState(aor.ERROR);
        ((TextView)this.D.findViewById(2131757215)).setText(getResources().getString(2131297122));
        r();
        return;
      }  
  }
  
  private void a(is paramis) {
    if (this.G) {
      this.D.setState(aor.CONTENT);
      mhj.c((Context)this, mhj.a(this, paramis));
      return;
    } 
    this.D.setState(aor.ERROR);
    try {
      ((TextView)this.D.findViewById(2131757215)).setText(mhj.a(this, paramis));
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5) {
    this.D.setState(aor.LOADING);
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    hashMap.put("branchOffice", paramString1);
    hashMap.put("branch", paramString2);
    hashMap.put("policy", Uri.encode(nab.a().b(paramString3)));
    hashMap.put("certificate", paramString4);
    hashMap.put("endorsement", paramString5);
    paramString1 = gnp.a(hashMap);
    ir ir = gnp.a().a(kwr.CAUSES_LIST.getEndpoint() + "?" + paramString1, im.GET, null, new JSONObject(), true);
    gnv gnv = new gnv(y(), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, (ih)gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        exception.printStackTrace();
        this.D.setState(aor.ERROR);
        ((TextView)this.D.findViewById(2131757215)).setText(getResources().getString(2131297122));
        return;
      }  
  }
  
  private void a(kva paramkva, kvb paramkvb) {
    mhv.INSTANCE.removeRequest(paramkva.g());
    mhv.INSTANCE.addRequest(paramkva.g(), paramkva);
    if (paramkvb.o() != kuq.SUMMARY) {
      mhv.INSTANCE.removeResponse(paramkvb.o());
      mhv.INSTANCE.addResponse(paramkvb.o(), paramkvb);
    } 
  }
  
  private void a(kvb paramkvb, boolean paramBoolean) {
    if (paramBoolean)
      n(); 
    kvo kvo = new kvo();
    kvo.a(paramkvb.o());
    kvo.a(this.N);
    this.S.add(kvo);
  }
  
  private void b(int paramInt) {
    this.M = paramInt;
    this.K.setSteps(paramInt);
  }
  
  private void b(kvb paramkvb) {
    a(paramkvb, true);
  }
  
  private void c(kvb paramkvb) {
    if (!d(paramkvb) && (paramkvb.c() == null || paramkvb.c().intValue() == 0)) {
      a(Integer.valueOf(1));
      return;
    } 
    a(paramkvb.c());
  }
  
  private boolean d(kvb paramkvb) {
    return (paramkvb != null && paramkvb.o() != null && paramkvb.o().equals(kuq.SUMMARY));
  }
  
  private void v() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130839140));
    actionBar.setDisplayShowCustomEnabled(true);
    ((TextView)((LayoutInflater)getSystemService("layout_inflater")).inflate(2130969499, null).findViewById(2131755121)).setText(2131298557);
    try {
      gpu.a((Activity)this, actionBar, getString(2131298557));
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void w() {
    this.E = (ExpandableLayoutV2)findViewById(2131755896);
    this.D = (MultiStateLayout)findViewById(2131755279);
    this.L = (TextView)findViewById(2131759008);
    this.K = (SimpleIndicatorStepV1)findViewById(2131759007);
  }
  
  private void x() {
    String str = Environment.getExternalStorageDirectory().getAbsolutePath();
    str = str + File.separator + "voices/audio_sinister.m4a";
    if (!TextUtils.isEmpty(str)) {
      File file = new File(str);
      if (file.exists())
        file.delete(); 
    } 
  }
  
  private gkw<is> y() {
    return (gkw<is>)new lrj(this);
  }
  
  private gkw<is> z() {
    return (gkw<is>)new lrk(this);
  }
  
  public kvo a(kuq paramkuq) {
    for (kvo kvo : this.S) {
      if (kvo.b().equals(paramkuq))
        return kvo; 
    } 
    return null;
  }
  
  public mgs a() {
    return this.F;
  }
  
  public void a(float paramFloat) {
    this.X = paramFloat;
  }
  
  public void a(int paramInt) {
    this.N = paramInt;
    this.K.setStep(paramInt);
    if (paramInt < 0) {
      this.L.setText("");
      return;
    } 
    this.L.setText(String.format(getResources().getString(2131298588), new Object[] { Integer.valueOf(paramInt) }));
  }
  
  public void a(long paramLong) {
    if (paramLong <= 0L)
      return; 
    ArrayList<kvo> arrayList = new ArrayList();
    for (int i = 0; i < paramLong; i++) {
      if (i < this.S.size())
        arrayList.add(this.S.get(i)); 
    } 
    this.S.clear();
    this.S.addAll(arrayList);
  }
  
  public void a(Integer paramInteger) {
    if (paramInteger != null)
      b(this.N + paramInteger.intValue()); 
  }
  
  public void a(String paramString) {
    this.I = paramString;
  }
  
  public void a(List<kvo> paramList) {
    this.S = paramList;
  }
  
  public void a(kuy paramkuy) {
    this.T = paramkuy;
  }
  
  public void a(kva paramkva) {
    this.D.setState(aor.LOADING);
    long l = this.N;
    JSONObject jSONObject2 = new JSONObject();
    try {
      jSONObject2.put("X-Application-Key", String.valueOf(mzx.a().c().get("appKey")));
      jSONObject2.put("userId", 1);
      jSONObject2.put("Content-Type", "application/json");
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
    } 
    JSONObject jSONObject1 = new JSONObject();
    try {
      JSONObject jSONObject = new JSONObject((new ejm()).b(paramkva));
      jSONObject1 = jSONObject;
    } catch (JSONException jSONException) {
      jSONException.printStackTrace();
    } 
    ir ir = gnp.a().a(kwr.SINISTER_STEP_CONTINUE.getEndpoint(), im.POST, jSONObject2, jSONObject1, true);
    gnv gnv = new gnv(a(l, paramkva), ir);
    if (gnp.a().b() != null)
      try {
        gnp.a().b().a(ir, (ih)gnv);
        return;
      } catch (Exception exception) {
        Log.e("ERROR_SERV", exception.getMessage());
        return;
      }  
  }
  
  public void a(kvb paramkvb) {
    a(paramkvb, true, false);
  }
  
  public void a(kvb paramkvb, kva paramkva) {
    kvb kvb1;
    if (this.F.c(paramkva.g())) {
      this.F.a(paramkva.g());
      this.F.a(paramkva.g(), paramkva);
    } 
    if (this.U) {
      int i;
      List<kvo> list = this.S;
      if (this.N > this.S.size() - 1) {
        i = this.S.size() - 1;
      } else {
        i = this.N;
      } 
      if (((kvo)list.get(i)).b() == paramkvb.o()) {
        a(paramkva, paramkvb);
        a(h());
        getSupportFragmentManager().popBackStackImmediate();
        return;
      } 
      a(paramkva, paramkvb);
      a(this.N);
      b(i() + 2);
      b(paramkvb);
      if (d(paramkvb))
        mhv.INSTANCE.setFlowCache(this.S); 
      this.V = false;
      kvb1 = mhv.INSTANCE.getResponse(paramkva.g());
      if (kvb1 != null) {
        this.O = true;
        r();
        a(kvb1, false, false);
      } 
      a(paramkvb);
      return;
    } 
    a((kva)kvb1, paramkvb);
    if (this.F.c(kvb1.g())) {
      this.F.a(kvb1.g());
      this.F.a(kvb1.g(), (kva)kvb1);
    } 
    b(paramkvb);
    c(paramkvb);
    if (d(paramkvb))
      mhv.INSTANCE.setFlowCache(this.S); 
    a(paramkvb);
    A();
  }
  
  public void a(kvb paramkvb, boolean paramBoolean1, boolean paramBoolean2) {
    a(paramkvb, paramBoolean1, paramBoolean2, false);
  }
  
  public void a(kvb paramkvb, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual getSupportFragmentManager : ()Landroid/support/v4/app/FragmentManager;
    //   4: invokevirtual beginTransaction : ()Landroid/support/v4/app/FragmentTransaction;
    //   7: astore #7
    //   9: ldc ''
    //   11: astore #6
    //   13: getstatic lrn.a : [I
    //   16: aload_1
    //   17: invokevirtual o : ()Lkuq;
    //   20: invokevirtual ordinal : ()I
    //   23: iaload
    //   24: tableswitch default -> 76, 1 -> 132, 2 -> 178, 3 -> 190, 4 -> 206, 5 -> 218, 6 -> 230, 7 -> 242, 8 -> 264, 9 -> 275
    //   76: invokestatic a : ()Landroid/support/v4/app/Fragment;
    //   79: astore #5
    //   81: aload #6
    //   83: astore_1
    //   84: iload_2
    //   85: ifeq -> 388
    //   88: aload #7
    //   90: ldc_w 2131034148
    //   93: ldc_w 2131034149
    //   96: ldc_w 2131034147
    //   99: ldc_w 2131034150
    //   102: invokevirtual setCustomAnimations : (IIII)Landroid/support/v4/app/FragmentTransaction;
    //   105: pop
    //   106: aload #7
    //   108: ldc_w 2131755534
    //   111: aload #5
    //   113: aload_1
    //   114: invokevirtual replace : (ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    //   117: pop
    //   118: aload #7
    //   120: aload_1
    //   121: invokevirtual addToBackStack : (Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
    //   124: pop
    //   125: aload #7
    //   127: invokevirtual commit : ()I
    //   130: pop
    //   131: return
    //   132: aload_1
    //   133: invokestatic a : (Lkvb;)Llzi;
    //   136: astore #5
    //   138: aload_1
    //   139: invokevirtual a : ()Ljava/lang/String;
    //   142: ifnull -> 169
    //   145: aload_1
    //   146: invokevirtual a : ()Ljava/lang/String;
    //   149: invokevirtual isEmpty : ()Z
    //   152: ifne -> 169
    //   155: aload_0
    //   156: aload_1
    //   157: invokevirtual a : ()Ljava/lang/String;
    //   160: invokevirtual a : (Ljava/lang/String;)V
    //   163: ldc 'coverage-step-fragment'
    //   165: astore_1
    //   166: goto -> 84
    //   169: aload_0
    //   170: ldc ''
    //   172: invokevirtual a : (Ljava/lang/String;)V
    //   175: goto -> 163
    //   178: aload_1
    //   179: invokestatic a : (Lkvb;)Llzp;
    //   182: astore #5
    //   184: ldc 'date-step-fragment'
    //   186: astore_1
    //   187: goto -> 84
    //   190: aload_0
    //   191: invokevirtual u : ()V
    //   194: aload_1
    //   195: invokestatic a : (Lkvb;)Llyy;
    //   198: astore #5
    //   200: ldc 'audio-step-fragment'
    //   202: astore_1
    //   203: goto -> 84
    //   206: aload_1
    //   207: invokestatic a : (Lkvb;)Lmad;
    //   210: astore #5
    //   212: ldc 'slider-value-step-fragment'
    //   214: astore_1
    //   215: goto -> 84
    //   218: aload_1
    //   219: invokestatic a : (Lkvb;)Llzx;
    //   222: astore #5
    //   224: ldc 'equipment-list-step-fragment'
    //   226: astore_1
    //   227: goto -> 84
    //   230: aload_1
    //   231: invokestatic a : (Lkvb;)Llzt;
    //   234: astore #5
    //   236: ldc 'email_phone_step_fragment'
    //   238: astore_1
    //   239: goto -> 84
    //   242: getstatic mhv.INSTANCE : Lmhv;
    //   245: getstatic kuq.DATE_PERIOD : Lkuq;
    //   248: invokevirtual removeRequest : (Lkuq;)Z
    //   251: pop
    //   252: aload_1
    //   253: invokestatic a : (Lkvb;)Lmaj;
    //   256: astore #5
    //   258: ldc 'date-period-step-fragment'
    //   260: astore_1
    //   261: goto -> 84
    //   264: invokestatic b : ()Lmaf;
    //   267: astore #5
    //   269: ldc 'summary-step-fragment'
    //   271: astore_1
    //   272: goto -> 84
    //   275: new android/content/Intent
    //   278: dup
    //   279: aload_0
    //   280: ldc_w com/santander/app/seguros/ui/sinister/activities/OpenSuccessSinisterActivity
    //   283: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   286: astore_1
    //   287: aload_1
    //   288: ldc_w 'inputed_client_data_key'
    //   291: new ejm
    //   294: dup
    //   295: invokespecial <init> : ()V
    //   298: getstatic mhv.INSTANCE : Lmhv;
    //   301: invokevirtual getAllRequest : ()Lkva;
    //   304: invokevirtual b : (Ljava/lang/Object;)Ljava/lang/String;
    //   307: invokevirtual putExtra : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   310: pop
    //   311: aload_1
    //   312: ldc_w 'insurance_response_key'
    //   315: new ejm
    //   318: dup
    //   319: invokespecial <init> : ()V
    //   322: aload_0
    //   323: getfield C : Ljava/util/List;
    //   326: invokevirtual b : (Ljava/lang/Object;)Ljava/lang/String;
    //   329: invokevirtual putExtra : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   332: pop
    //   333: aload_1
    //   334: ldc_w 'insurance_family_key'
    //   337: aload_0
    //   338: getfield J : Ljava/lang/String;
    //   341: invokevirtual putExtra : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   344: pop
    //   345: aload_1
    //   346: ldc_w 'all_client_coverages_key'
    //   349: new ejm
    //   352: dup
    //   353: invokespecial <init> : ()V
    //   356: aload_0
    //   357: getfield R : Ljava/util/List;
    //   360: invokevirtual b : (Ljava/lang/Object;)Ljava/lang/String;
    //   363: invokevirtual putExtra : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   366: pop
    //   367: aload_1
    //   368: ldc 'phone-assistance'
    //   370: aload_0
    //   371: invokevirtual f : ()Ljava/lang/String;
    //   374: invokevirtual putExtra : (Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   377: pop
    //   378: aload_0
    //   379: aload_1
    //   380: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   383: aload_0
    //   384: invokevirtual finish : ()V
    //   387: return
    //   388: iload_3
    //   389: ifeq -> 106
    //   392: aload #7
    //   394: ldc_w 2131034147
    //   397: ldc_w 2131034150
    //   400: ldc_w 2131034148
    //   403: ldc_w 2131034149
    //   406: invokevirtual setCustomAnimations : (IIII)Landroid/support/v4/app/FragmentTransaction;
    //   409: pop
    //   410: goto -> 106
  }
  
  public void a(boolean paramBoolean) {
    this.H = paramBoolean;
  }
  
  public List<kvo> b() {
    return this.S;
  }
  
  public void b(boolean paramBoolean) {
    this.O = paramBoolean;
  }
  
  public void c(boolean paramBoolean) {
    this.U = paramBoolean;
  }
  
  public boolean c() {
    return this.O;
  }
  
  public void d(boolean paramBoolean) {
    this.V = paramBoolean;
  }
  
  public boolean d() {
    return this.U;
  }
  
  public void e(boolean paramBoolean) {
    this.P = paramBoolean;
  }
  
  public boolean e() {
    return this.V;
  }
  
  public String f() {
    return this.I;
  }
  
  public void f(boolean paramBoolean) {
    this.W = paramBoolean;
  }
  
  public void finish() {
    super.finish();
    mhv.INSTANCE.clear();
    x();
  }
  
  public void g() {
    String str = this.J;
    a(str.substring(0, 2), str.substring(2, 6), str.substring(6, 13), str.substring(13, str.length()), "0");
  }
  
  public int h() {
    return this.M;
  }
  
  public int i() {
    return this.N;
  }
  
  public void j() {
    this.K.setVisibility(8);
    this.L.setVisibility(8);
  }
  
  public void k() {
    this.K.setVisibility(0);
    this.L.setVisibility(0);
  }
  
  public void n() {
    if (!this.K.a())
      a(this.N + 1); 
  }
  
  public boolean o() {
    return this.K.a();
  }
  
  public void onBackPressed() {
    boolean bool = this.P;
    kws.a().b().a(new kxd(this.P));
    if (bool && !c())
      if (getSupportFragmentManager().getBackStackEntryCount() <= 1) {
        AlertDialog alertDialog = (new AlertDialog.Builder((Context)this)).setTitle(null).setMessage(getResources().getString(2131296532)).setCancelable(true).setPositiveButton(getResources().getString(2131297398), (DialogInterface.OnClickListener)new lrh(this)).setNegativeButton(getResources().getString(2131296776), (DialogInterface.OnClickListener)new lrg(this)).create();
        alertDialog.setOnShowListener((DialogInterface.OnShowListener)new lri(this, alertDialog));
        alertDialog.show();
      } else {
        super.onBackPressed();
        String str = getSupportFragmentManager().getBackStackEntryAt(getSupportFragmentManager().getBackStackEntryCount() - 1).getName();
        if (str != null && str.equals("summary-step-fragment") && d()) {
          a(h());
        } else {
          q();
        } 
        this.D.setState(aor.CONTENT);
      }  
    this.O = false;
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968710);
    CookieHandler.setDefault(new CookieManager());
    w();
    v();
    u();
    if (getIntent() != null && getIntent().getExtras().containsKey("insurance-data-key")) {
      this.J = getIntent().getExtras().getString("insurance-data-key");
      this.Q = 100;
      this.B = getIntent().getExtras().getString("higher_coverage_key");
      g();
    } 
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
    if (paramInt == 4 && !this.U && !this.S.isEmpty() && getSupportFragmentManager().getBackStackEntryCount() > 0) {
      boolean bool;
      List<kvo> list = this.S;
      if (this.S.size() > 0) {
        bool = this.S.size() - 1;
      } else {
        bool = false;
      } 
      list.remove(bool);
      A();
    } 
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean p() {
    return this.P;
  }
  
  public void q() {
    a(this.N - 1);
  }
  
  public boolean r() {
    if (getSupportFragmentManager().getBackStackEntryCount() <= 0)
      return false; 
    getSupportFragmentManager().popBackStack(null, 1);
    return true;
  }
  
  public void s() {
    ArrayList<kuo> arrayList = new ArrayList();
    for (int i = 0; i < this.R.size(); i++) {
      kuo kuo = new kuo();
      kuo.i(String.valueOf(Integer.valueOf(((kuo)this.R.get(i)).i())));
      kuo.e(String.valueOf(Integer.valueOf(((kuo)this.R.get(i)).e())));
      arrayList.add(kuo);
    } 
    a(this.Q, arrayList);
  }
  
  public kuy t() {
    return this.T;
  }
  
  public void u() {
    mhg.a().c("audio-base64-key");
    x();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\sinister\activities\SinisterActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */