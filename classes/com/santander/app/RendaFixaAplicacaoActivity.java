package com.santander.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.TextWatcher;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.widget.Carrossel;
import flz;
import fma;
import fmb;
import fmc;
import fmd;
import fme;
import fmf;
import fmg;
import fmh;
import fom;
import fos;
import fpb;
import fpk;
import frq;
import ftd;
import ftq;
import ftt;
import fuu;
import gpu;
import grs;
import gui;
import hav;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import myg;
import myh;
import mzq;
import naj;
import nak;
import nez;

public class RendaFixaAplicacaoActivity extends grs implements nez {
  private Carrossel A;
  
  private Vector<fos> B;
  
  private fos C;
  
  private fmf D;
  
  private fmg E;
  
  private fmh F;
  
  private List<ftq> G;
  
  private String H;
  
  private String I;
  
  private String J;
  
  private String K;
  
  private String L;
  
  private String M;
  
  private String N;
  
  private boolean O;
  
  private SharedPreferences P;
  
  private SharedPreferences Q;
  
  private Dialog R;
  
  private String S;
  
  private String T;
  
  private final String a = "RendaFixaAplicacaoActivity";
  
  private ftq b = null;
  
  private List<Conta> c = null;
  
  private RendaFixaAplicacaoActivity d;
  
  private EditText e;
  
  private Dialog f = null;
  
  private int g = 0;
  
  private boolean w = false;
  
  private Carrossel x;
  
  private Carrossel y;
  
  private Carrossel z;
  
  private void a() {
    for (int i = 0; i < this.G.size(); i++) {
      fmd fmd = new fmd(this, null);
      fmd.a(i);
      fmd.execute((Object[])new Void[0]);
    } 
    this.c = this.v.f().q().a();
    this.e = (EditText)findViewById(2131756129);
    gui gui = new gui();
    gui.a(this.e);
    this.e.addTextChangedListener((TextWatcher)gui);
    if (this.H != null && !this.H.equals(""))
      this.e.setText(this.H); 
  }
  
  private void a(String paramString) {
    mzq.a((Activity)this.d, false);
    Dialog dialog = new Dialog((Context)this.d, 2131427876);
    dialog.setContentView(2130969436);
    ((TextView)dialog.findViewById(2131759315)).setText(paramString);
    ((CheckBox)dialog.findViewById(2131759316)).setOnCheckedChangeListener((CompoundButton.OnCheckedChangeListener)new fma(this, dialog));
    dialog.findViewById(2131759317).setOnClickListener((View.OnClickListener)new fmb(this, dialog));
    dialog.findViewById(2131759318).setOnClickListener((View.OnClickListener)new fmc(this, dialog));
    dialog.setOnDismissListener((DialogInterface.OnDismissListener)new myg((Activity)this.d));
    dialog.setOnShowListener((DialogInterface.OnShowListener)new myh((Activity)this.d));
    dialog.show();
  }
  
  private void b() {
    try {
      this.P = getSharedPreferences("CDBPreferences", 0);
      this.I = new String(Base64.decode(this.P.getString("contaCDB", ""), 0));
      this.J = new String(Base64.decode(this.P.getString("agenciaCDB", ""), 0));
      this.H = new String(Base64.decode(this.P.getString("valorCDB", ""), 0));
      this.L = new String(Base64.decode(this.P.getString("nomeProdutoCDB", ""), 0));
      this.K = new String(Base64.decode(this.P.getString("codigoProdutoCDB", ""), 0));
      this.M = new String(Base64.decode(this.P.getString("prazoCDB", ""), 0));
      this.N = new String(Base64.decode(this.P.getString("agendadoCDB", ""), 0));
      return;
    } catch (Exception exception) {
      Log.e("ERROR", exception.getMessage());
      return;
    } 
  }
  
  private void c() {
    SharedPreferences.Editor editor1 = this.d.getSharedPreferences("CDBPreferences", 0).edit();
    SharedPreferences.Editor editor2 = this.d.getSharedPreferences("cardPreferences", 0).edit();
    editor1.putString("contaCDB", "");
    editor1.putString("agenciaCDB", "");
    editor1.putString("valorCDB", "");
    editor1.putString("codigoProdutoCDB", "");
    editor1.putString("nomeProdutoCDB", "");
    editor1.putString("prazoCDB", "");
    editor1.putString("agendadoCDB", "");
    editor2.putString("cpfCDB", "");
    editor1.commit();
  }
  
  private void d() {
    // Byte code:
    //   0: aload_0
    //   1: aload_0
    //   2: ldc_w 2131758473
    //   5: invokevirtual findViewById : (I)Landroid/view/View;
    //   8: checkcast com/santander/app/widget/Carrossel
    //   11: putfield y : Lcom/santander/app/widget/Carrossel;
    //   14: aload_0
    //   15: aload_0
    //   16: ldc_w 2131758479
    //   19: invokevirtual findViewById : (I)Landroid/view/View;
    //   22: checkcast com/santander/app/widget/Carrossel
    //   25: putfield x : Lcom/santander/app/widget/Carrossel;
    //   28: new java/util/Vector
    //   31: dup
    //   32: invokespecial <init> : ()V
    //   35: astore_3
    //   36: aload_0
    //   37: getfield K : Ljava/lang/String;
    //   40: ifnull -> 216
    //   43: aload_0
    //   44: getfield K : Ljava/lang/String;
    //   47: ldc ''
    //   49: invokevirtual equals : (Ljava/lang/Object;)Z
    //   52: ifne -> 216
    //   55: iconst_0
    //   56: istore_1
    //   57: iload_1
    //   58: aload_0
    //   59: getfield G : Ljava/util/List;
    //   62: invokeinterface size : ()I
    //   67: if_icmpge -> 610
    //   70: aload_0
    //   71: getfield G : Ljava/util/List;
    //   74: iload_1
    //   75: invokeinterface get : (I)Ljava/lang/Object;
    //   80: checkcast ftq
    //   83: invokevirtual a : ()Ljava/lang/String;
    //   86: aload_0
    //   87: getfield K : Ljava/lang/String;
    //   90: invokevirtual equals : (Ljava/lang/Object;)Z
    //   93: ifeq -> 209
    //   96: iconst_0
    //   97: istore_2
    //   98: iload_2
    //   99: aload_0
    //   100: getfield G : Ljava/util/List;
    //   103: invokeinterface size : ()I
    //   108: if_icmpge -> 273
    //   111: aload_0
    //   112: getfield G : Ljava/util/List;
    //   115: iload_2
    //   116: invokeinterface get : (I)Ljava/lang/Object;
    //   121: checkcast ftq
    //   124: astore #4
    //   126: new fpb
    //   129: dup
    //   130: invokespecial <init> : ()V
    //   133: astore #5
    //   135: aload #5
    //   137: aload #4
    //   139: invokevirtual b : ()Ljava/lang/String;
    //   142: invokevirtual a : (Ljava/lang/String;)V
    //   145: aload #4
    //   147: invokevirtual c : ()Lftd;
    //   150: ifnull -> 233
    //   153: aload #5
    //   155: new java/lang/StringBuilder
    //   158: dup
    //   159: invokespecial <init> : ()V
    //   162: aload_0
    //   163: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   166: ldc_w 2131297716
    //   169: invokevirtual getString : (I)Ljava/lang/String;
    //   172: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   175: aload #4
    //   177: invokevirtual c : ()Lftd;
    //   180: invokevirtual j : ()Ljava/lang/String;
    //   183: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   186: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: invokevirtual toString : ()Ljava/lang/String;
    //   192: invokevirtual b : (Ljava/lang/String;)V
    //   195: aload_3
    //   196: aload #5
    //   198: invokevirtual add : (Ljava/lang/Object;)Z
    //   201: pop
    //   202: iload_2
    //   203: iconst_1
    //   204: iadd
    //   205: istore_2
    //   206: goto -> 98
    //   209: iload_1
    //   210: iconst_1
    //   211: iadd
    //   212: istore_1
    //   213: goto -> 57
    //   216: aload_0
    //   217: getfield G : Ljava/util/List;
    //   220: aload_0
    //   221: getfield b : Lftq;
    //   224: invokeinterface indexOf : (Ljava/lang/Object;)I
    //   229: istore_1
    //   230: goto -> 96
    //   233: aload #5
    //   235: new java/lang/StringBuilder
    //   238: dup
    //   239: invokespecial <init> : ()V
    //   242: aload_0
    //   243: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   246: ldc_w 2131297716
    //   249: invokevirtual getString : (I)Ljava/lang/String;
    //   252: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   255: ldc_w '0'
    //   258: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   261: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: invokevirtual toString : ()Ljava/lang/String;
    //   267: invokevirtual b : (Ljava/lang/String;)V
    //   270: goto -> 195
    //   273: new fpc
    //   276: dup
    //   277: aload_0
    //   278: aload_3
    //   279: invokespecial <init> : (Landroid/content/Context;Ljava/util/Vector;)V
    //   282: astore_3
    //   283: new foo
    //   286: dup
    //   287: aload_0
    //   288: aload_0
    //   289: getfield c : Ljava/util/List;
    //   292: invokespecial <init> : (Landroid/content/Context;Ljava/util/List;)V
    //   295: astore #4
    //   297: aload_0
    //   298: getfield y : Lcom/santander/app/widget/Carrossel;
    //   301: aload_0
    //   302: invokevirtual setListener : (Lnez;)V
    //   305: aload_0
    //   306: getfield y : Lcom/santander/app/widget/Carrossel;
    //   309: aload_3
    //   310: invokevirtual setAdapter : (Lfom;)V
    //   313: aload_0
    //   314: getfield y : Lcom/santander/app/widget/Carrossel;
    //   317: iload_1
    //   318: invokevirtual setCurrentItem : (I)V
    //   321: aload_0
    //   322: getfield x : Lcom/santander/app/widget/Carrossel;
    //   325: aload #4
    //   327: invokevirtual setAdapter : (Lfom;)V
    //   330: aload_0
    //   331: getfield x : Lcom/santander/app/widget/Carrossel;
    //   334: new flx
    //   337: dup
    //   338: aload_0
    //   339: invokespecial <init> : (Lcom/santander/app/RendaFixaAplicacaoActivity;)V
    //   342: invokevirtual setListener : (Lnez;)V
    //   345: aload_0
    //   346: aload_0
    //   347: ldc_w 2131758477
    //   350: invokevirtual findViewById : (I)Landroid/view/View;
    //   353: checkcast com/santander/app/widget/Carrossel
    //   356: putfield z : Lcom/santander/app/widget/Carrossel;
    //   359: aload_0
    //   360: new java/util/Vector
    //   363: dup
    //   364: invokespecial <init> : ()V
    //   367: putfield B : Ljava/util/Vector;
    //   370: new java/text/SimpleDateFormat
    //   373: dup
    //   374: ldc_w 'dd/MM/yyyy'
    //   377: invokespecial <init> : (Ljava/lang/String;)V
    //   380: astore_3
    //   381: new fos
    //   384: dup
    //   385: invokespecial <init> : ()V
    //   388: astore #4
    //   390: aload #4
    //   392: aload_0
    //   393: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   396: ldc_w 2131296699
    //   399: invokevirtual getString : (I)Ljava/lang/String;
    //   402: invokevirtual a : (Ljava/lang/String;)V
    //   405: aload #4
    //   407: aload_3
    //   408: new java/util/Date
    //   411: dup
    //   412: invokespecial <init> : ()V
    //   415: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   418: invokevirtual b : (Ljava/lang/String;)V
    //   421: aload_0
    //   422: new fos
    //   425: dup
    //   426: invokespecial <init> : ()V
    //   429: putfield C : Lfos;
    //   432: aload_0
    //   433: getfield C : Lfos;
    //   436: aload_0
    //   437: invokevirtual getResources : ()Landroid/content/res/Resources;
    //   440: ldc_w 2131296698
    //   443: invokevirtual getString : (I)Ljava/lang/String;
    //   446: invokevirtual a : (Ljava/lang/String;)V
    //   449: invokestatic getInstance : ()Ljava/util/Calendar;
    //   452: astore #5
    //   454: aload #5
    //   456: new java/util/Date
    //   459: dup
    //   460: invokespecial <init> : ()V
    //   463: invokevirtual setTime : (Ljava/util/Date;)V
    //   466: aload #5
    //   468: iconst_5
    //   469: iconst_1
    //   470: invokevirtual add : (II)V
    //   473: aload_0
    //   474: getfield C : Lfos;
    //   477: aload_3
    //   478: aload #5
    //   480: invokevirtual getTime : ()Ljava/util/Date;
    //   483: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   486: invokevirtual b : (Ljava/lang/String;)V
    //   489: aload_0
    //   490: getfield C : Lfos;
    //   493: getstatic fot.PICKER : Lfot;
    //   496: invokevirtual a : (Lfot;)V
    //   499: aload_0
    //   500: getfield B : Ljava/util/Vector;
    //   503: aload #4
    //   505: invokevirtual add : (Ljava/lang/Object;)Z
    //   508: pop
    //   509: aload_0
    //   510: getfield B : Ljava/util/Vector;
    //   513: aload_0
    //   514: getfield C : Lfos;
    //   517: invokevirtual add : (Ljava/lang/Object;)Z
    //   520: pop
    //   521: new fou
    //   524: dup
    //   525: aload_0
    //   526: aload_0
    //   527: getfield B : Ljava/util/Vector;
    //   530: aload_0
    //   531: invokespecial <init> : (Landroid/content/Context;Ljava/util/Vector;Landroid/app/Activity;)V
    //   534: astore_3
    //   535: aload_0
    //   536: getfield z : Lcom/santander/app/widget/Carrossel;
    //   539: aload_3
    //   540: invokevirtual setAdapter : (Lfom;)V
    //   543: aload_0
    //   544: getfield z : Lcom/santander/app/widget/Carrossel;
    //   547: new fly
    //   550: dup
    //   551: aload_0
    //   552: invokespecial <init> : (Lcom/santander/app/RendaFixaAplicacaoActivity;)V
    //   555: invokevirtual setListener : (Lnez;)V
    //   558: aload_0
    //   559: getfield O : Z
    //   562: ifeq -> 593
    //   565: aload_0
    //   566: getfield N : Ljava/lang/String;
    //   569: ifnull -> 599
    //   572: aload_0
    //   573: getfield N : Ljava/lang/String;
    //   576: ldc_w 'true'
    //   579: invokevirtual equals : (Ljava/lang/Object;)Z
    //   582: ifeq -> 599
    //   585: aload_0
    //   586: getfield z : Lcom/santander/app/widget/Carrossel;
    //   589: iconst_1
    //   590: invokevirtual setCurrentItem : (I)V
    //   593: aload_0
    //   594: iload_1
    //   595: invokespecial d : (I)V
    //   598: return
    //   599: aload_0
    //   600: getfield z : Lcom/santander/app/widget/Carrossel;
    //   603: iconst_0
    //   604: invokevirtual setCurrentItem : (I)V
    //   607: goto -> 593
    //   610: iconst_0
    //   611: istore_1
    //   612: goto -> 96
  }
  
  private void d(int paramInt) {
    boolean bool = false;
    this.A = (Carrossel)findViewById(2131758475);
    Vector<fpb> vector = new Vector();
    if (this.G != null && this.G.get(paramInt) != null && ((ftq)this.G.get(paramInt)).c() != null && ((ftq)this.G.get(paramInt)).c().f() != null) {
      Vector<String> vector1 = ((ftq)this.G.get(paramInt)).c().f();
      for (paramInt = 0; paramInt < vector1.size(); paramInt++) {
        String str = vector1.get(paramInt);
        fpb fpb1 = new fpb();
        fpb1.a(str + " " + getResources().getString(2131297708));
        fpb1.a(0);
        vector.add(fpb1);
      } 
      fpb fpb = new fpb();
      fpb.a(1);
      vector.add(fpb);
      fpk fpk = new fpk((Context)this, vector);
      this.A.setAdapter((fom)fpk);
      this.A.setCurrentItem(0);
      this.A.setListener((nez)new flz(this, vector));
      if (this.M != null && !this.M.equals(""))
        for (paramInt = bool;; paramInt++) {
          if (paramInt < vector.size()) {
            if (((fpb)vector.get(paramInt)).a() != null) {
              if (((fpb)vector.get(paramInt)).a().replace(" DIAS", "").equals(this.M)) {
                this.A.setCurrentItem(paramInt);
                return;
              } 
            } else {
              this.A.setCurrentItem(paramInt);
              ((fpb)vector.get(paramInt)).a(this.M);
            } 
          } else {
            return;
          } 
        }  
    } 
  }
  
  public void a(int paramInt) {}
  
  public void b(int paramInt) {
    this.b = this.G.get(paramInt);
    frq.d("Investimentos_RendaFixa_Aplicar_Acao", this.b.b());
    d(paramInt);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.d = this;
    Intent intent = getIntent();
    setContentView(2130969220);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    gpu.a((Activity)this, actionBar, getString(2131296460));
    this.G = (ArrayList)intent.getSerializableExtra("listaProdutos");
    this.b = (ftq)intent.getSerializableExtra("data");
    this.Q = getSharedPreferences("cardPreferences", 0);
    this.O = this.Q.getBoolean("isCardCDB", false);
    if (this.O) {
      this.Q.edit().putBoolean("isCardCDB", false).commit();
      b();
      c();
    } 
    if (intent.getBooleanExtra("chamarListaProdutos", false) || this.G == null) {
      if (intent.getSerializableExtra("CRMTipo") != null && intent.getStringExtra("CodProduto") != null) {
        this.S = intent.getStringExtra("CRMTipo");
        this.T = intent.getStringExtra("CodProduto");
      } else {
        this.S = this.L;
        this.T = this.K;
      } 
      (new fme(this, this.S, this.T)).execute((Object[])new Void[0]);
      return;
    } 
    a();
  }
  
  public void openConfirmar(ftt paramftt, String paramString1, fuu paramfuu, String paramString2, boolean paramBoolean, String paramString3, ftd paramftd) {
    Intent intent = new Intent((Context)this, RendaFixaAplicacaoConfirmacaoActivity.class);
    intent.putExtra("producto", (Serializable)this.b);
    intent.putExtra("respSimularAplicacao", (Serializable)paramftt);
    intent.putExtra("valorAplicado", paramString1);
    intent.putExtra("cuentaOrigen", (Serializable)paramfuu);
    intent.putExtra("prazo", naj.A(paramftt.d()));
    intent.putExtra("agendada", paramBoolean);
    intent.putExtra("fecha", nak.a());
    intent.putExtra("dataAgendamento", paramString3);
    intent.putExtra("dadoAplicacao", (Serializable)paramftd);
    startActivity(intent);
  }
  
  public void sendConfirmar(View paramView) {
    if (!this.e.getText().toString().equals(getResources().getString(2131299310))) {
      this.F = new fmh(this, null);
      this.F.execute((Object[])new Void[0]);
      return;
    } 
    hav.d((Activity)this.d, getResources().getString(2131297203));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\RendaFixaAplicacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */