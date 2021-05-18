package com.santander.app.meuperfil.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import frq;
import gpu;
import grs;
import jpr;
import jps;
import jpt;
import jqd;
import jqk;
import jql;
import jqm;
import jrn;
import jro;
import mxn;
import myg;
import myh;
import naf;

public class MeuPerfilTrocarSenhaActivity extends grs implements View.OnClickListener {
  private Button a;
  
  private jqd b;
  
  private jqk c;
  
  private EditText d;
  
  private EditText e;
  
  private EditText f;
  
  private View g;
  
  private int a(EditText paramEditText) {
    return 18;
  }
  
  private void a() {
    (new jro((jrn)new jpt(this), (Activity)this, this.c)).c((Object[])new Void[0]);
  }
  
  private void a(String paramString) {
    mxn.e(this.i, paramString);
  }
  
  private void a(jqm paramjqm) {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: getfield b : Ljqd;
    //   6: aload_1
    //   7: invokevirtual c : (Ljqm;)Z
    //   10: ifeq -> 113
    //   13: new java/text/SimpleDateFormat
    //   16: dup
    //   17: ldc 'dd/MM/yyyy - HH:mm'
    //   19: invokespecial <init> : (Ljava/lang/String;)V
    //   22: astore #4
    //   24: new java/util/Date
    //   27: dup
    //   28: invokespecial <init> : ()V
    //   31: astore #5
    //   33: new gvb
    //   36: dup
    //   37: invokespecial <init> : ()V
    //   40: astore_3
    //   41: aload_3
    //   42: ldc 'Senha de acesso'
    //   44: invokevirtual c : (Ljava/lang/String;)V
    //   47: aload_3
    //   48: ldc 'Alteração de senha de acesso'
    //   50: invokevirtual g : (Ljava/lang/String;)V
    //   53: aload_3
    //   54: ldc 'Alteração da senha com sucesso'
    //   56: invokevirtual d : (Ljava/lang/String;)V
    //   59: aload_3
    //   60: aload_1
    //   61: invokevirtual b : ()Ljava/lang/String;
    //   64: invokevirtual e : (Ljava/lang/String;)V
    //   67: aload_3
    //   68: aload #4
    //   70: aload #5
    //   72: invokevirtual format : (Ljava/util/Date;)Ljava/lang/String;
    //   75: invokevirtual f : (Ljava/lang/String;)V
    //   78: aload_3
    //   79: iconst_0
    //   80: invokevirtual d : (Z)V
    //   83: aload_3
    //   84: iconst_1
    //   85: invokevirtual o : (Z)V
    //   88: new android/content/Intent
    //   91: dup
    //   92: aload_0
    //   93: ldc com/santander/app/comprovantes/activity/ComprovanteBaseActivity
    //   95: invokespecial <init> : (Landroid/content/Context;Ljava/lang/Class;)V
    //   98: astore_1
    //   99: aload_1
    //   100: ldc 'comprovanteBase'
    //   102: aload_3
    //   103: invokevirtual putExtra : (Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    //   106: pop
    //   107: aload_0
    //   108: aload_1
    //   109: invokevirtual startActivity : (Landroid/content/Intent;)V
    //   112: return
    //   113: aload_0
    //   114: getfield b : Ljqd;
    //   117: aload_1
    //   118: invokevirtual a : (Ljqm;)Z
    //   121: ifeq -> 136
    //   124: aload_0
    //   125: aload_1
    //   126: invokevirtual c : ()Ljava/lang/String;
    //   129: invokevirtual trim : ()Ljava/lang/String;
    //   132: invokespecial a : (Ljava/lang/String;)V
    //   135: return
    //   136: aload_0
    //   137: getfield b : Ljqd;
    //   140: aload_1
    //   141: invokevirtual e : (Ljqm;)Z
    //   144: ifeq -> 159
    //   147: aload_0
    //   148: aload_1
    //   149: invokevirtual c : ()Ljava/lang/String;
    //   152: invokevirtual trim : ()Ljava/lang/String;
    //   155: invokespecial a : (Ljava/lang/String;)V
    //   158: return
    //   159: aload_0
    //   160: getfield b : Ljqd;
    //   163: aload_1
    //   164: invokevirtual b : (Ljqm;)Z
    //   167: ifeq -> 177
    //   170: aload_0
    //   171: ldc 'Por favor, verifique se você digitou corretamente sua senha de acesso. Caso tenha dúvidas, consulte as orientações localizadas no "i" no topo da tela.'
    //   173: invokespecial a : (Ljava/lang/String;)V
    //   176: return
    //   177: aload_1
    //   178: invokevirtual a : ()Ljava/lang/String;
    //   181: astore_1
    //   182: aload_1
    //   183: invokevirtual hashCode : ()I
    //   186: lookupswitch default -> 268, -1268549548 -> 439, 46971378 -> 367, 46971440 -> 353, 46971442 -> 409, 46971535 -> 381, 46971565 -> 395, 46971566 -> 424, 46971567 -> 327, 46971589 -> 339
    //   268: iconst_m1
    //   269: istore_2
    //   270: iload_2
    //   271: tableswitch default -> 320, 0 -> 454, 1 -> 461, 2 -> 468, 3 -> 475, 4 -> 482, 5 -> 489, 6 -> 496, 7 -> 503, 8 -> 510
    //   320: aload_0
    //   321: ldc 'Sistema indisponível. Por favor, entre em contato com a Central de Atendimento Santander.'
    //   323: invokespecial a : (Ljava/lang/String;)V
    //   326: return
    //   327: aload_1
    //   328: ldc '18369'
    //   330: invokevirtual equals : (Ljava/lang/Object;)Z
    //   333: ifeq -> 268
    //   336: goto -> 270
    //   339: aload_1
    //   340: ldc '18370'
    //   342: invokevirtual equals : (Ljava/lang/Object;)Z
    //   345: ifeq -> 268
    //   348: iconst_1
    //   349: istore_2
    //   350: goto -> 270
    //   353: aload_1
    //   354: ldc '18326'
    //   356: invokevirtual equals : (Ljava/lang/Object;)Z
    //   359: ifeq -> 268
    //   362: iconst_2
    //   363: istore_2
    //   364: goto -> 270
    //   367: aload_1
    //   368: ldc '18306'
    //   370: invokevirtual equals : (Ljava/lang/Object;)Z
    //   373: ifeq -> 268
    //   376: iconst_3
    //   377: istore_2
    //   378: goto -> 270
    //   381: aload_1
    //   382: ldc '18358'
    //   384: invokevirtual equals : (Ljava/lang/Object;)Z
    //   387: ifeq -> 268
    //   390: iconst_4
    //   391: istore_2
    //   392: goto -> 270
    //   395: aload_1
    //   396: ldc '18367'
    //   398: invokevirtual equals : (Ljava/lang/Object;)Z
    //   401: ifeq -> 268
    //   404: iconst_5
    //   405: istore_2
    //   406: goto -> 270
    //   409: aload_1
    //   410: ldc '18328'
    //   412: invokevirtual equals : (Ljava/lang/Object;)Z
    //   415: ifeq -> 268
    //   418: bipush #6
    //   420: istore_2
    //   421: goto -> 270
    //   424: aload_1
    //   425: ldc '18368'
    //   427: invokevirtual equals : (Ljava/lang/Object;)Z
    //   430: ifeq -> 268
    //   433: bipush #7
    //   435: istore_2
    //   436: goto -> 270
    //   439: aload_1
    //   440: ldc 'FACSEG_30300019'
    //   442: invokevirtual equals : (Ljava/lang/Object;)Z
    //   445: ifeq -> 268
    //   448: bipush #8
    //   450: istore_2
    //   451: goto -> 270
    //   454: aload_0
    //   455: ldc 'Por medida de segurança, seu acesso foi cancelado. Por favor, entre em contato com a Central de Atendimento Santander. Capitais: 4004-3535 Demais localidades: 0800 702 3535'
    //   457: invokespecial a : (Ljava/lang/String;)V
    //   460: return
    //   461: aload_0
    //   462: ldc 'Por medidas de segurança, seu acesso foi bloqueado. Por favor, entre em contato com a Central de Atendimento Santander.Capitais: 4004-3535 Demais localidades: 0800 702 3535'
    //   464: invokespecial a : (Ljava/lang/String;)V
    //   467: return
    //   468: aload_0
    //   469: ldc 'Senha escolhida já foi utilizada e não poderá ser repetida. Por favor, escolha uma nova senha diferente.'
    //   471: invokespecial a : (Ljava/lang/String;)V
    //   474: return
    //   475: aload_0
    //   476: ldc 'Senha informada é inválida.'
    //   478: invokespecial a : (Ljava/lang/String;)V
    //   481: return
    //   482: aload_0
    //   483: ldc 'Senha inválida. Para sua segurança, a senha de acesso deve ter 6 (seis) números que não podem ser repetidos, nem sequenciais. Também não podem ser escolhidas as últimas senhas já utilizadas.'
    //   485: invokespecial a : (Ljava/lang/String;)V
    //   488: return
    //   489: aload_0
    //   490: ldc 'Senha inválida. Uma nova tentativa incorreta cancelará sua senha, e será necessário cadastrar uma nova.'
    //   492: invokespecial a : (Ljava/lang/String;)V
    //   495: return
    //   496: aload_0
    //   497: ldc 'Sua senha foi cancelada por medida preventiva de segurança. Por favor, acesse o Internet Banking com seu CPF e cadastre uma nova senha. Em caso de dúvidas, entre em contato com a Central de Atendimento.'
    //   499: invokespecial a : (Ljava/lang/String;)V
    //   502: return
    //   503: aload_0
    //   504: ldc 'Usuário Não localizado. Por favor, entre em contato com a Central de Atendimento Santander. Capitais: 4004-3535 Demais localidades: 0800 702 3535'
    //   506: invokespecial a : (Ljava/lang/String;)V
    //   509: return
    //   510: aload_0
    //   511: ldc 'Senha escolhida já foi utilizada e não poderá ser repetida. Por favor, escolha uma nova senha diferente.'
    //   513: invokespecial a : (Ljava/lang/String;)V
    //   516: return
  }
  
  private int b(EditText paramEditText) {
    return 129;
  }
  
  private void b(jqm paramjqm) {
    if (this.b.d(paramjqm)) {
      this.d.setInputType(a(this.d));
      this.e.setInputType(a(this.e));
      this.f.setInputType(a(this.f));
      return;
    } 
    if (this.b.e(paramjqm)) {
      this.d.setInputType(b(this.d));
      this.e.setInputType(a(this.e));
      this.f.setInputType(a(this.f));
      return;
    } 
  }
  
  public Dialog a(Boolean paramBoolean) {
    Dialog dialog = new Dialog((Context)this, 2131427876);
    dialog.setContentView(2130968955);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    if (paramBoolean.booleanValue())
      ((TextView)dialog.findViewById(2131756891)).setText("Senha inválida. Para sua segurança, a nova senha de acesso deve cumprir as seguintes regras:"); 
    ((Button)dialog.findViewById(2131756828)).setOnClickListener((View.OnClickListener)new jpr(this, dialog));
    dialog.setOnDismissListener((DialogInterface.OnDismissListener)new myg((Activity)this));
    dialog.setOnShowListener((DialogInterface.OnShowListener)new myh((Activity)this));
    dialog.show();
    return dialog;
  }
  
  public void onClick(View paramView) {
    frq.d("TrocarSenha", "Confirmar");
    this.c.c(this.d.getText().toString());
    this.c.a(this.e.getText().toString());
    this.c.b(this.f.getText().toString());
    this.c.a(jql.TROCAR_SENHA);
    if (this.b.d(this.c)) {
      a("Por favor, preencha todos os campos.");
      return;
    } 
    if (!this.b.b(this.c)) {
      a("A senha de acesso e sua confirmação devem ser iguais. Por favor, digite novamente");
      return;
    } 
    if (this.b.a(this.c)) {
      a(Boolean.valueOf(true));
      return;
    } 
    naf naf = new naf();
    try {
      String str1 = naf.b(this.d.getText().toString().getBytes("UTF-8"));
      String str2 = naf.b(this.e.getText().toString().getBytes("UTF-8"));
      String str3 = naf.b(this.f.getText().toString().getBytes("UTF-8"));
      this.c.c(str1);
      this.c.a(str2);
      this.c.b(str3);
    } catch (Exception exception) {
      this.c.c("");
      this.c.a("");
      this.c.b("");
    } 
    (new jro((jrn)new jps(this), (Activity)this, this.c)).c((Object[])new Void[0]);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969375);
    this.i = (Activity)this;
    this.b = new jqd();
    this.c = new jqk();
    this.a = (Button)findViewById(2131759096);
    this.a.setOnClickListener(this);
    this.d = (EditText)findViewById(2131759093);
    this.e = (EditText)findViewById(2131759094);
    this.f = (EditText)findViewById(2131759095);
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131298153));
    findViewById(2131756230).requestFocus();
    this.c.a(jql.GET_USUARIO_SN);
    a();
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu) {
    getMenuInflater().inflate(2131886095, paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem) {
    a(Boolean.valueOf(false));
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\meuperfil\activity\MeuPerfilTrocarSenhaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */