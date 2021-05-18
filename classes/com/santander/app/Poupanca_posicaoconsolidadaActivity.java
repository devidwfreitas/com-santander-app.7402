package com.santander.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.santander.app.dpp.DPPListaProgramadaActivity;
import com.santander.app.dpp.DPPPreenchimentoActivity;
import com.santander.app.validation.presentation.IdSantanderUsuarioConsultivoActivity;
import fky;
import fkz;
import fla;
import flb;
import flc;
import frq;
import ftb;
import ftc;
import ftl;
import gpu;
import grs;
import java.io.Serializable;
import java.util.Vector;
import mzr;
import naj;
import naq;
import nat;

public class Poupanca_posicaoconsolidadaActivity extends grs {
  public int a = -1;
  
  private String b = "Poupanca_posicaoconsolidadaActivity";
  
  private Poupanca_posicaoconsolidadaActivity c;
  
  private ActionBar d;
  
  private ftc e;
  
  private flc f = null;
  
  private Dialog g = null;
  
  private ProgressBar w;
  
  private void a(View paramView) {
    ((LinearLayout)paramView.findViewById(2131758522)).setOnClickListener((View.OnClickListener)new fky(this));
    Button button2 = (Button)paramView.findViewById(2131758521);
    button2.setOnClickListener((View.OnClickListener)new fkz(this));
    Button button1 = (Button)paramView.findViewById(2131758520);
    button1.setOnClickListener((View.OnClickListener)new fla(this));
    if (mzr.a()) {
      button2.setEnabled(false);
      button1.setEnabled(false);
      return;
    } 
    button2.setEnabled(true);
    button1.setEnabled(true);
  }
  
  private void a(View paramView, ftb paramftb) {
    LinearLayout linearLayout = (LinearLayout)paramView.findViewById(2131758530);
    Vector<ftl> vector = new Vector();
    if (paramftb.a() != null)
      vector = paramftb.a(); 
    for (int i = 0; i < vector.size(); i++) {
      View view = getLayoutInflater().inflate(2130969224, null);
      ftl ftl = vector.get(i);
      TextView textView1 = (TextView)view.findViewById(2131758488);
      TextView textView2 = (TextView)view.findViewById(2131758494);
      TextView textView3 = (TextView)view.findViewById(2131758495);
      TextView textView4 = (TextView)view.findViewById(2131758496);
      TextView textView5 = (TextView)view.findViewById(2131758497);
      TextView textView6 = (TextView)view.findViewById(2131758498);
      TextView textView7 = (TextView)view.findViewById(2131758489);
      textView1.setText(naq.c(ftl.c().a(), ftl.c().d()));
      textView2.setText(naj.f(ftl.f()));
      textView3.setText(naj.f(ftl.e()));
      textView4.setText(naj.f(ftl.d()));
      textView5.setText(naj.f(ftl.h()));
      textView6.setText(naj.f(ftl.g()));
      textView7.setText(naj.f(ftl.i()));
      linearLayout.addView(view);
    } 
  }
  
  private void b() {
    // Byte code:
    //   0: aload_0
    //   1: ldc 2131758531
    //   3: invokevirtual findViewById : (I)Landroid/view/View;
    //   6: checkcast android/widget/LinearLayout
    //   9: astore #4
    //   11: iconst_0
    //   12: istore_1
    //   13: iconst_1
    //   14: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   17: astore_2
    //   18: iload_1
    //   19: aload_0
    //   20: getfield e : Lftc;
    //   23: invokevirtual a : ()Ljava/util/Vector;
    //   26: invokevirtual size : ()I
    //   29: if_icmpge -> 349
    //   32: aload_0
    //   33: invokevirtual getLayoutInflater : ()Landroid/view/LayoutInflater;
    //   36: ldc 2130969231
    //   38: aconst_null
    //   39: invokevirtual inflate : (ILandroid/view/ViewGroup;)Landroid/view/View;
    //   42: astore #5
    //   44: aload_0
    //   45: getfield e : Lftc;
    //   48: invokevirtual a : ()Ljava/util/Vector;
    //   51: iload_1
    //   52: invokevirtual get : (I)Ljava/lang/Object;
    //   55: checkcast ftb
    //   58: astore #6
    //   60: aload #6
    //   62: invokevirtual l : ()Ljava/lang/String;
    //   65: ifnull -> 86
    //   68: aload_2
    //   69: astore_3
    //   70: aload #6
    //   72: invokevirtual l : ()Ljava/lang/String;
    //   75: invokevirtual trim : ()Ljava/lang/String;
    //   78: ldc '0'
    //   80: invokevirtual equals : (Ljava/lang/Object;)Z
    //   83: ifeq -> 322
    //   86: aload #5
    //   88: ldc 2131758506
    //   90: invokevirtual findViewById : (I)Landroid/view/View;
    //   93: checkcast android/widget/TextView
    //   96: astore_3
    //   97: aload #5
    //   99: ldc 2131758507
    //   101: invokevirtual findViewById : (I)Landroid/view/View;
    //   104: checkcast android/widget/TextView
    //   107: astore #7
    //   109: aload #5
    //   111: ldc 2131758524
    //   113: invokevirtual findViewById : (I)Landroid/view/View;
    //   116: checkcast android/widget/TextView
    //   119: astore #8
    //   121: aload #5
    //   123: ldc 2131758525
    //   125: invokevirtual findViewById : (I)Landroid/view/View;
    //   128: checkcast android/widget/TextView
    //   131: astore #9
    //   133: aload #5
    //   135: ldc 2131758526
    //   137: invokevirtual findViewById : (I)Landroid/view/View;
    //   140: checkcast android/widget/TextView
    //   143: astore #10
    //   145: aload #5
    //   147: ldc 2131758527
    //   149: invokevirtual findViewById : (I)Landroid/view/View;
    //   152: checkcast android/widget/TextView
    //   155: astore #11
    //   157: aload #5
    //   159: ldc 2131758528
    //   161: invokevirtual findViewById : (I)Landroid/view/View;
    //   164: checkcast android/widget/TextView
    //   167: astore #12
    //   169: aload #5
    //   171: ldc 2131758529
    //   173: invokevirtual findViewById : (I)Landroid/view/View;
    //   176: checkcast android/widget/TextView
    //   179: astore #13
    //   181: aload_3
    //   182: aload #6
    //   184: invokevirtual j : ()Ljava/lang/String;
    //   187: aload #6
    //   189: invokevirtual k : ()Ljava/lang/String;
    //   192: invokestatic c : (Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   195: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   198: aload #7
    //   200: invokestatic a : ()Ljava/lang/String;
    //   203: invokestatic m : (Ljava/lang/String;)Ljava/lang/String;
    //   206: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   209: aload #8
    //   211: aload #6
    //   213: invokevirtual f : ()Ljava/lang/String;
    //   216: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   219: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   222: aload #9
    //   224: aload #6
    //   226: invokevirtual e : ()Ljava/lang/String;
    //   229: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   232: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   235: aload #10
    //   237: aload #6
    //   239: invokevirtual d : ()Ljava/lang/String;
    //   242: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   245: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   248: aload #11
    //   250: aload #6
    //   252: invokevirtual h : ()Ljava/lang/String;
    //   255: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   258: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   261: aload #12
    //   263: aload #6
    //   265: invokevirtual g : ()Ljava/lang/String;
    //   268: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   271: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   274: aload #13
    //   276: aload #6
    //   278: invokevirtual i : ()Ljava/lang/String;
    //   281: invokestatic f : (Ljava/lang/String;)Ljava/lang/String;
    //   284: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   287: aload_0
    //   288: aload #5
    //   290: aload #6
    //   292: invokespecial a : (Landroid/view/View;Lftb;)V
    //   295: aload_2
    //   296: invokevirtual booleanValue : ()Z
    //   299: ifeq -> 331
    //   302: aload_0
    //   303: aload #5
    //   305: invokespecial a : (Landroid/view/View;)V
    //   308: iconst_0
    //   309: invokestatic valueOf : (Z)Ljava/lang/Boolean;
    //   312: astore_2
    //   313: aload #4
    //   315: aload #5
    //   317: invokevirtual addView : (Landroid/view/View;)V
    //   320: aload_2
    //   321: astore_3
    //   322: iload_1
    //   323: iconst_1
    //   324: iadd
    //   325: istore_1
    //   326: aload_3
    //   327: astore_2
    //   328: goto -> 18
    //   331: aload #5
    //   333: ldc 2131758359
    //   335: invokevirtual findViewById : (I)Landroid/view/View;
    //   338: checkcast android/widget/LinearLayout
    //   341: bipush #8
    //   343: invokevirtual setVisibility : (I)V
    //   346: goto -> 313
    //   349: return
  }
  
  public void a() {
    Intent intent;
    if (mzr.a()) {
      frq.d("Investimentos_Poupanca_Acao", "DepositoProgramado");
      intent = new Intent((Context)this, IdSantanderUsuarioConsultivoActivity.class);
      intent.putExtra("tipo", (Serializable)nat.USUARIO_CONSULTIVO);
      startActivity(intent);
    } else {
      frq.a("Poupanca", "Investimentos");
      frq.d("Investimentos_Poupanca_Acao", "DepositoProgramado");
      intent = new Intent((Context)this, DPPPreenchimentoActivity.class);
      intent.putExtra("opcao", 0);
    } 
    startActivity(intent);
  }
  
  public void a(ftc paramftc) {
    frq.a("Poupanca_Aplicar", "Investimentos");
    frq.d("Investimentos_Poupanca_Acao", "Aplicar");
    Intent intent = new Intent((Context)this, PoupancaAplicacaoActivity.class);
    intent.putExtra("consultarPosicaoConsolidadaPoupancaList", (Serializable)paramftc);
    startActivity(intent);
  }
  
  public void b(ftc paramftc) {
    frq.a("Poupanca_Resgatar", "Investimentos");
    frq.d("Investimentos_Poupanca_Acao", "Resgatar");
    Intent intent = new Intent((Context)this, PoupancaResgateActivity.class);
    intent.putExtra("consultarPosicaoConsolidadaPoupancaList", (Serializable)paramftc);
    startActivity(intent);
  }
  
  public void goAplicacaoPoupanca(View paramView) {
    this.a = 0;
    a(this.e);
  }
  
  public void goDepositoProgramadoPoupanca(View paramView) {
    startActivity(new Intent(getApplicationContext(), DPPListaProgramadaActivity.class));
  }
  
  public void goResgatePoupanca(View paramView) {
    this.a = 1;
    b(this.e);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.c = this;
    setContentView(2130969232);
    this.d = getSupportActionBar();
    this.d.setDisplayShowHomeEnabled(false);
    this.d.setDisplayShowTitleEnabled(false);
    this.w = (ProgressBar)findViewById(2131757077);
    (new flb(this, null)).execute((Object[])new Void[0]);
    gpu.a((Activity)this, this.d, getString(2131298407));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\Poupanca_posicaoconsolidadaActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */