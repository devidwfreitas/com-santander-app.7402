package com.santander.app.homenaologada.presentation;

import ala;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.Adapter;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import bla;
import com.datami.smi.SmiSdk;
import com.santander.app.ExitActivity;
import com.santander.app.MinhaConta;
import com.santander.app.analytics.util.TriggerService;
import com.santander.app.boasvindas.BoasVindasActivity;
import com.santander.app.components.view.scrollcolumnlayout.ScrollColumnLayout;
import com.santander.app.faq.presentation.FaqActivity;
import com.santander.app.integrationway.presentation.IntegrationWayActivity;
import com.santander.app.localizadoragencias.presentation.MapaLocalizadorAgenciaActivity;
import com.santander.app.novidades.view.NovidadesActivity;
import frq;
import guh;
import irw;
import irz;
import ism;
import itw;
import itx;
import ity;
import itz;
import iua;
import iub;
import iuc;
import iud;
import iue;
import iuf;
import iug;
import iuh;
import iui;
import iuj;
import iuk;
import iul;
import ium;
import iun;
import iuo;
import java.util.List;
import miq;
import mxn;
import myn;
import myo;
import myz;

@SuppressLint({"NewApi"})
public class HomeActivity extends AppCompatActivity implements ium {
  private static final String a = "HomeActivity";
  
  private boolean b = false;
  
  private boolean c;
  
  private boolean d = false;
  
  private ScrollColumnLayout e;
  
  private ImageButton f;
  
  private iun g;
  
  private Dialog h;
  
  private Dialog i;
  
  private Dialog j;
  
  private ism k;
  
  private AlertDialog.Builder l;
  
  private Dialog m;
  
  private String n;
  
  private int o = 0;
  
  private String p;
  
  private String q;
  
  private String r;
  
  private String s;
  
  private DialogInterface.OnClickListener A() {
    return (DialogInterface.OnClickListener)new itx(this);
  }
  
  private void B() {
    AlertDialog.Builder builder = new AlertDialog.Builder((Context)this);
    builder.setTitle("Atenção").setMessage("Para melhorar sua experiência, habilite o GPS para podermos mandar ofertas especiais.").setCancelable(false).setPositiveButton("Ok", (DialogInterface.OnClickListener)new itz(this)).setNegativeButton(2131296665, (DialogInterface.OnClickListener)new ity(this));
    AlertDialog alertDialog = builder.create();
    alertDialog.setOnShowListener((DialogInterface.OnShowListener)new iua(this, alertDialog));
    alertDialog.show();
  }
  
  private View.OnClickListener C() {
    return (View.OnClickListener)new iub(this);
  }
  
  private View.OnClickListener b(int paramInt) {
    return (View.OnClickListener)new iug(this, paramInt);
  }
  
  private View.OnClickListener b(String paramString1, String paramString2) {
    return (View.OnClickListener)new iuj(this, paramString1, paramString2);
  }
  
  private void c(boolean paramBoolean) {
    if (Build.VERSION.SDK_INT >= 23) {
      if (ContextCompat.checkSelfPermission((Context)this, "android.permission.ACCESS_COARSE_LOCATION") != 0) {
        byte b;
        if (paramBoolean) {
          b = 10;
        } else {
          b = 11;
        } 
        ActivityCompat.requestPermissions((Activity)this, new String[] { "android.permission.ACCESS_COARSE_LOCATION" }, b);
        return;
      } 
      i();
      return;
    } 
    i();
  }
  
  private void v() {
    setTheme(2131427510);
    setContentView(2130968688);
    MinhaConta.a(getApplicationContext());
    myn.c(MinhaConta.a());
    this.e = (ScrollColumnLayout)findViewById(2131755810);
    this.e.setOnItemClickListener(z());
    this.f = (ImageButton)findViewById(2131755809);
    this.f.setOnClickListener(w());
    this.l = new AlertDialog.Builder((Context)this);
    ((LinearLayout)findViewById(2131755811)).setOnClickListener((View.OnClickListener)new itw(this));
    this.g = (iun)new iuo(this);
    r();
  }
  
  private View.OnClickListener w() {
    return (View.OnClickListener)new iud(this);
  }
  
  private View.OnClickListener x() {
    return (View.OnClickListener)new iue(this);
  }
  
  private View.OnClickListener y() {
    return (View.OnClickListener)new iuf(this);
  }
  
  private guh z() {
    return (guh)new iui(this);
  }
  
  public void a() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setBackgroundDrawable(getResources().getDrawable(2130838298));
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setHomeAsUpIndicator(2130838692);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setElevation(0.0F);
    actionBar.setDisplayHomeAsUpEnabled(true);
  }
  
  public void a(int paramInt) {
    this.j = mxn.a((Activity)this, b(paramInt), getResources().getString(2131296563), getResources().getString(2131296657), getResources().getString(2131296654));
  }
  
  public void a(Bitmap paramBitmap) {
    this.f.setImageBitmap(paramBitmap);
  }
  
  public void a(String paramString) {
    myo.b((Context)this, paramString);
  }
  
  public void a(String paramString1, String paramString2) {
    myo.a((Activity)this, paramString1);
  }
  
  public void a(String paramString, boolean paramBoolean) {
    if (paramBoolean) {
      mxn.a((Activity)this, C(), paramString, "OK", "Cancelar");
      return;
    } 
    mxn.d((Activity)this, paramString);
  }
  
  public void a(List<irz> paramList) {
    this.e.setAdapter((Adapter)new iul((Context)this, paramList));
    int i = paramList.size();
    this.o = 0;
    this.e.getViewTreeObserver().addOnScrollChangedListener((ViewTreeObserver.OnScrollChangedListener)new iuh(this, i * 3));
  }
  
  public void a(boolean paramBoolean) {
    irw.a().a("INPUT_TYPE_SENHA", Boolean.valueOf(paramBoolean));
    this.b = paramBoolean;
  }
  
  public void a(String[] paramArrayOfString) {
    ActivityCompat.requestPermissions((Activity)this, paramArrayOfString, 4);
  }
  
  public void b() {
    this.i = mxn.a((Activity)this, x(), getResources().getString(2131296566), getResources().getString(2131296657), getResources().getString(2131296654));
  }
  
  public void b(String paramString) {
    myo.a((Context)this, paramString);
  }
  
  public void b(boolean paramBoolean) {
    try {
      this.k = new ism(this.n, Boolean.valueOf(paramBoolean), this);
      FragmentTransaction fragmentTransaction = getSupportFragmentManager().beginTransaction();
      fragmentTransaction.replace(2131755808, (Fragment)this.k);
      fragmentTransaction.commitAllowingStateLoss();
      return;
    } catch (NullPointerException nullPointerException) {
      Log.e("MONTAR_LOGIN", nullPointerException.getMessage());
      frq.d("Outros_Login_Tratamento_Excecao", "montarTelaLogin() " + nullPointerException.getMessage());
      return;
    } 
  }
  
  public void c() {
    if (this.i.isShowing()) {
      this.i.dismiss();
      this.i = null;
    } 
  }
  
  public void c(String paramString) {
    myo.b((Context)this, paramString);
  }
  
  public void d() {
    this.j = mxn.a((Activity)this, y(), getResources().getString(2131296570), getResources().getString(2131296657), getResources().getString(2131296654));
  }
  
  public void d(String paramString) {
    ism.b = true;
    Intent intent = new Intent((Context)this, IntegrationWayActivity.class);
    intent.putExtra("dlb-ticket", paramString);
    intent.setFlags(1140850688);
    startActivity(intent);
    finish();
  }
  
  public void e() {
    if (this.j.isShowing()) {
      this.j.dismiss();
      this.j = null;
    } 
  }
  
  public void f() {
    this.h = mxn.a((Activity)this, b(this.s + "_PopUp_Acao", "Continuar"), this.s + "_PopUp_Acao", "Cancelar", getResources().getString(2131296563), getResources().getString(2131297587), getResources().getString(2131297585));
  }
  
  public void g() {
    if (this.h != null) {
      this.h.dismiss();
      this.h = null;
    } 
  }
  
  public void h() {
    frq.d("Login_Acao", "SelecionarAjudaHomeNaoLogada");
    startActivityForResult(new Intent((Context)this, FaqActivity.class), 0);
  }
  
  public void i() {
    frq.d("Login_Acao", "MapaAgencias");
    Intent intent = new Intent((Context)this, MapaLocalizadorAgenciaActivity.class);
    intent.setFlags(67108864);
    intent.putExtra("from", "home");
    startActivity(intent);
  }
  
  public boolean j() {
    return this.b;
  }
  
  public void k() {
    try {
      this.l.setCancelable(false);
      this.l.setView(getLayoutInflater().inflate(2130969211, null));
      this.l.setPositiveButton(2131296657, A());
      AlertDialog alertDialog = this.l.create();
      alertDialog.setOnShowListener((DialogInterface.OnShowListener)new iuk(this, alertDialog));
      alertDialog.show();
      return;
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return;
    } 
  }
  
  public void l() {
    this.m = mxn.b((Activity)this);
  }
  
  public void m() {
    if (this.m != null) {
      this.m.dismiss();
      this.m = null;
    } 
  }
  
  public void n() {
    startActivityForResult(new Intent((Context)this, NovidadesActivity.class), 2);
  }
  
  public void o() {
    startActivityForResult(new Intent((Context)this, BoasVindasActivity.class), 9920);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    this.g.a(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed() {
    if (this.k != null)
      this.k.t(); 
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    paramBundle = getIntent().getExtras();
    if (paramBundle != null) {
      this.p = paramBundle.getString("msg_noti_stimulum_id");
      this.q = paramBundle.getString("msg_noti_intent_extra");
    } 
    if (this.p != null && !"".equals(this.p) && this.q != null && !"".equals(this.q)) {
      if (miq.C().f().k() != null) {
        setTheme(16973841);
        finish();
        return;
      } 
      v();
      return;
    } 
    v();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    if (!myz.b((Context)this)) {
      a(getString(2131298458), false);
      return true;
    } 
    c(true);
    return true;
  }
  
  protected void onPause() {
    super.onPause();
    this.d = true;
    SmiSdk.appVisibility((Context)this, false);
    if (Build.VERSION.SDK_INT >= 15)
      bla.b((Context)this); 
    if (!this.c)
      MinhaConta.a(true); 
  }
  
  public void onRequestPermissionsResult(int paramInt, @NonNull String[] paramArrayOfString, @NonNull int[] paramArrayOfint) {
    super.onRequestPermissionsResult(paramInt, paramArrayOfString, paramArrayOfint);
    this.g.a(paramInt, paramArrayOfString, paramArrayOfint, (Activity)this);
  }
  
  public void onResume() {
    super.onResume();
    this.d = false;
    SmiSdk.appVisibility((Context)this, true);
    if (Build.VERSION.SDK_INT >= 15)
      bla.a((Context)this); 
    if (!this.c)
      MinhaConta.a(false); 
    if (MinhaConta.f()) {
      Intent intent = new Intent((Context)this, ExitActivity.class);
      intent.addFlags(268435456);
      intent.addFlags(67108864);
      intent.putExtra("errorMessage", MinhaConta.d());
      intent.putExtra("showHome", MinhaConta.e());
      startActivity(intent);
    } 
  }
  
  protected void onStop() {
    super.onStop();
    this.d = true;
  }
  
  public Bundle p() {
    return getIntent().getExtras();
  }
  
  public void q() {
    if (Build.VERSION.SDK_INT >= 23 && ContextCompat.checkSelfPermission((Context)this, "android.permission.ACCESS_COARSE_LOCATION") != 0)
      c(false); 
  }
  
  public void r() {
    if (ContextCompat.checkSelfPermission((Context)this, "android.permission.READ_PHONE_STATE") == 0) {
      myn.a(MinhaConta.a(), (ala)new iuc(this));
      return;
    } 
    this.g.l();
  }
  
  public void s() {
    // Byte code:
    //   0: getstatic android/os/Build$VERSION.SDK_INT : I
    //   3: bipush #23
    //   5: if_icmplt -> 35
    //   8: aload_0
    //   9: ldc_w 'android.permission.READ_EXTERNAL_STORAGE'
    //   12: invokestatic checkSelfPermission : (Landroid/content/Context;Ljava/lang/String;)I
    //   15: ifeq -> 35
    //   18: aload_0
    //   19: iconst_1
    //   20: anewarray java/lang/String
    //   23: dup
    //   24: iconst_0
    //   25: ldc_w 'android.permission.READ_EXTERNAL_STORAGE'
    //   28: aastore
    //   29: bipush #13
    //   31: invokestatic requestPermissions : (Landroid/app/Activity;[Ljava/lang/String;I)V
    //   34: return
    //   35: new java/io/File
    //   38: dup
    //   39: invokestatic getExternalStorageDirectory : ()Ljava/io/File;
    //   42: ldc_w 'SantanderBrasil/Analytics'
    //   45: invokespecial <init> : (Ljava/io/File;Ljava/lang/String;)V
    //   48: astore_1
    //   49: aload_1
    //   50: invokevirtual exists : ()Z
    //   53: ifne -> 61
    //   56: aload_1
    //   57: invokevirtual mkdirs : ()Z
    //   60: pop
    //   61: new java/io/File
    //   64: dup
    //   65: aload_1
    //   66: ldc_w 'MBBPFlog.txt'
    //   69: invokespecial <init> : (Ljava/io/File;Ljava/lang/String;)V
    //   72: astore_2
    //   73: aload_2
    //   74: invokevirtual exists : ()Z
    //   77: ifeq -> 85
    //   80: aload_2
    //   81: invokevirtual delete : ()Z
    //   84: pop
    //   85: aload_2
    //   86: invokevirtual createNewFile : ()Z
    //   89: pop
    //   90: aload_2
    //   91: invokestatic getInstance : ()Ljava/util/Calendar;
    //   94: invokevirtual getTime : ()Ljava/util/Date;
    //   97: invokevirtual getTime : ()J
    //   100: invokevirtual setLastModified : (J)Z
    //   103: pop
    //   104: new java/io/FileOutputStream
    //   107: dup
    //   108: aload_2
    //   109: invokespecial <init> : (Ljava/io/File;)V
    //   112: astore_3
    //   113: aconst_null
    //   114: astore_1
    //   115: aload_3
    //   116: invokevirtual flush : ()V
    //   119: aload_3
    //   120: ifnull -> 131
    //   123: iconst_0
    //   124: ifeq -> 255
    //   127: aload_3
    //   128: invokevirtual close : ()V
    //   131: invokestatic getRuntime : ()Ljava/lang/Runtime;
    //   134: ldc_w 'logcat -c'
    //   137: invokevirtual exec : (Ljava/lang/String;)Ljava/lang/Process;
    //   140: pop
    //   141: invokestatic getRuntime : ()Ljava/lang/Runtime;
    //   144: iconst_5
    //   145: anewarray java/lang/String
    //   148: dup
    //   149: iconst_0
    //   150: ldc_w 'logcat'
    //   153: aastore
    //   154: dup
    //   155: iconst_1
    //   156: ldc_w '-f'
    //   159: aastore
    //   160: dup
    //   161: iconst_2
    //   162: new java/lang/StringBuilder
    //   165: dup
    //   166: invokespecial <init> : ()V
    //   169: ldc_w ''
    //   172: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: aload_2
    //   176: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   179: invokevirtual toString : ()Ljava/lang/String;
    //   182: aastore
    //   183: dup
    //   184: iconst_3
    //   185: ldc_w '*:I'
    //   188: aastore
    //   189: dup
    //   190: iconst_4
    //   191: ldc_w 'APM:D *:S'
    //   194: aastore
    //   195: invokevirtual exec : ([Ljava/lang/String;)Ljava/lang/Process;
    //   198: pop
    //   199: aload_0
    //   200: new android/content/Intent
    //   203: dup
    //   204: aload_0
    //   205: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   208: ldc_w com/santander/app/analytics/util/TriggerService
    //   211: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   214: invokevirtual startService : (Landroid/content/Intent;)Landroid/content/ComponentName;
    //   217: pop
    //   218: return
    //   219: astore_1
    //   220: aload_0
    //   221: invokevirtual getApplicationContext : ()Landroid/content/Context;
    //   224: ldc_w 'Storage permission needed'
    //   227: iconst_0
    //   228: invokestatic makeText : (Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    //   231: invokevirtual show : ()V
    //   234: ldc_w 'ERROR'
    //   237: aload_1
    //   238: invokevirtual getMessage : ()Ljava/lang/String;
    //   241: invokestatic e : (Ljava/lang/String;Ljava/lang/String;)I
    //   244: pop
    //   245: return
    //   246: astore_1
    //   247: new java/lang/NullPointerException
    //   250: dup
    //   251: invokespecial <init> : ()V
    //   254: athrow
    //   255: aload_3
    //   256: invokevirtual close : ()V
    //   259: goto -> 131
    //   262: astore_2
    //   263: aload_2
    //   264: astore_1
    //   265: aload_2
    //   266: athrow
    //   267: astore_2
    //   268: aload_3
    //   269: ifnull -> 280
    //   272: aload_1
    //   273: ifnull -> 291
    //   276: aload_3
    //   277: invokevirtual close : ()V
    //   280: aload_2
    //   281: athrow
    //   282: astore_3
    //   283: aload_1
    //   284: aload_3
    //   285: invokevirtual addSuppressed : (Ljava/lang/Throwable;)V
    //   288: goto -> 280
    //   291: aload_3
    //   292: invokevirtual close : ()V
    //   295: goto -> 280
    // Exception table:
    //   from	to	target	type
    //   35	61	219	java/io/IOException
    //   61	85	219	java/io/IOException
    //   85	113	219	java/io/IOException
    //   115	119	262	java/lang/Throwable
    //   115	119	267	finally
    //   127	131	246	java/lang/Throwable
    //   127	131	219	java/io/IOException
    //   131	218	219	java/io/IOException
    //   247	255	219	java/io/IOException
    //   255	259	219	java/io/IOException
    //   265	267	267	finally
    //   276	280	282	java/lang/Throwable
    //   276	280	219	java/io/IOException
    //   280	282	219	java/io/IOException
    //   283	288	219	java/io/IOException
    //   291	295	219	java/io/IOException
  }
  
  public void t() {
    stopService(new Intent(getApplicationContext(), TriggerService.class));
  }
  
  public void u() {
    if (this.k != null)
      this.k.P().K(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\homenaologada\presentation\HomeActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */