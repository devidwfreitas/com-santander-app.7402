package com.santander.app.faturas.activity;

import amr;
import amt;
import amy;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import br.com.santander.uisdk.dropdown.SantanderDropDownView;
import com.santander.app.components.view.ClickToSelectEditText;
import com.santander.app.validation.presentation.IdSantanderUsuarioConsultivoActivity;
import foh;
import fue;
import ghu;
import gmy;
import goh;
import gpd;
import grs;
import ieb;
import iec;
import ied;
import iee;
import ief;
import ieg;
import ieh;
import iei;
import iej;
import iek;
import iel;
import iep;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;
import mxn;
import mzr;
import naj;
import nak;
import nat;

public class FaturasActivity extends grs {
  private Button A;
  
  private LinearLayout B;
  
  private LinearLayout C;
  
  private TextView D;
  
  private TextView E;
  
  private TextView F;
  
  private TextView G;
  
  private RelativeLayout H;
  
  private TextView I;
  
  private TextView J;
  
  private TextView K;
  
  private TextView L;
  
  private TextView M;
  
  private RelativeLayout N;
  
  private TextView O;
  
  private TextView P;
  
  private TextView Q;
  
  private TextView R;
  
  private TextView S;
  
  private LinearLayout T;
  
  private LinearLayout U;
  
  private LinearLayout V;
  
  private LinearLayout W;
  
  private ghu X;
  
  private boolean Y;
  
  private boolean Z = false;
  
  private final String a = "FaturasActivity";
  
  private TextView aA;
  
  private TextView aB;
  
  private TextView aC;
  
  private LinearLayout aD;
  
  private TextView aE;
  
  private TextView aF;
  
  private TextView aG;
  
  private fue aH;
  
  private ImageButton aI;
  
  private RelativeLayout aJ;
  
  private SantanderDropDownView aK;
  
  private RelativeLayout aL;
  
  private ImageView aM;
  
  private Dialog aN;
  
  private List<fue> aa;
  
  private LinearLayout ab;
  
  private LinearLayout ac;
  
  private LinearLayout ad;
  
  private TextView ae;
  
  private fue af;
  
  private fue ag;
  
  private boolean ah = true;
  
  private ClickToSelectEditText ai;
  
  private TextView aj;
  
  private TextView ak;
  
  private TextView al;
  
  private TextView am;
  
  private TextView an;
  
  private TextView ao;
  
  private TextView ap;
  
  private TextView aq;
  
  private TextView ar;
  
  private TextView as;
  
  private TextView at;
  
  private TextView au;
  
  private TextView av;
  
  private TextView aw;
  
  private TextView ax;
  
  private TextView ay;
  
  private TextView az;
  
  private int b;
  
  private boolean c = false;
  
  private boolean d = false;
  
  private RelativeLayout e;
  
  private RelativeLayout f;
  
  private LinearLayout g;
  
  private LinearLayout w;
  
  private TextView x;
  
  private TextView y;
  
  private Button z;
  
  private void a(fue paramfue) {
    String str;
    TextView textView = this.aj;
    if (paramfue.a() != null) {
      str = nak.l(paramfue.a());
    } else {
      str = "";
    } 
    textView.setText(str);
    textView = this.x;
    if (paramfue.a() != null) {
      str = nak.l(paramfue.a());
    } else {
      str = "";
    } 
    textView.setText(str);
    if (paramfue.c() != null) {
      goh.b(this.y, paramfue.c(), "true");
    } else {
      this.y.setText("R$ 0,00");
    } 
    goh.b(this.D, paramfue.F(), "true");
    goh.b(this.E, paramfue.G(), "true");
    if (paramfue.I() != null) {
      this.F.setText("Limite disponível em " + paramfue.I() + ":");
    } else {
      this.F.setText("");
    } 
    if (paramfue.H() != null) {
      goh.b(this.G, paramfue.H(), "true");
    } else {
      this.G.setText("");
    } 
    goh.b(this.I, paramfue.u(), "true");
    goh.b(this.J, paramfue.J(), "true");
    goh.b(this.K, paramfue.K(), "true");
    goh.b(this.L, paramfue.L(), "true");
    goh.b(this.M, paramfue.M(), "true");
    goh.b(this.O, paramfue.y(), "false");
    goh.b(this.P, paramfue.x(), "true");
    if (paramfue.m() != null) {
      this.Q.setText(naj.c(paramfue.m(), "true", "###,###,##0.0000"));
    } else {
      this.Q.setText("");
    } 
    if (paramfue.n() != null) {
      this.R.setText("Cotação do Dólar no dia " + paramfue.n().substring(0, 5) + ":");
    } else {
      this.R.setText("");
    } 
    this.Z = this.X.u().equals("BE");
    a(this.Z);
  }
  
  private void a(Object paramObject, int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: checkcast fue
    //   5: putfield aH : Lfue;
    //   8: aload_0
    //   9: getfield c : Z
    //   12: ifeq -> 17
    //   15: iconst_1
    //   16: istore_2
    //   17: iload_2
    //   18: ifne -> 103
    //   21: aload_0
    //   22: getfield ab : Landroid/widget/LinearLayout;
    //   25: iconst_0
    //   26: invokevirtual setVisibility : (I)V
    //   29: aload_0
    //   30: getfield ac : Landroid/widget/LinearLayout;
    //   33: bipush #8
    //   35: invokevirtual setVisibility : (I)V
    //   38: new iem
    //   41: dup
    //   42: aload_0
    //   43: invokespecial <init> : (Lcom/santander/app/faturas/activity/FaturasActivity;)V
    //   46: iconst_0
    //   47: anewarray java/lang/Void
    //   50: invokevirtual execute : ([Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   53: pop
    //   54: aload_0
    //   55: getfield d : Z
    //   58: ifeq -> 97
    //   61: iload_2
    //   62: tableswitch default -> 84, 0 -> 186, 1 -> 198
    //   84: ldc_w 'Cartoes_Fatura_SelecioneFatura_Acao'
    //   87: aload_0
    //   88: getfield aH : Lfue;
    //   91: invokevirtual a : ()Ljava/lang/String;
    //   94: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   97: aload_0
    //   98: iconst_1
    //   99: putfield d : Z
    //   102: return
    //   103: iload_2
    //   104: iconst_1
    //   105: if_icmpne -> 145
    //   108: aload_0
    //   109: getfield ab : Landroid/widget/LinearLayout;
    //   112: bipush #8
    //   114: invokevirtual setVisibility : (I)V
    //   117: aload_0
    //   118: getfield ac : Landroid/widget/LinearLayout;
    //   121: iconst_0
    //   122: invokevirtual setVisibility : (I)V
    //   125: new ieo
    //   128: dup
    //   129: aload_0
    //   130: aconst_null
    //   131: invokespecial <init> : (Lcom/santander/app/faturas/activity/FaturasActivity;Lieb;)V
    //   134: iconst_0
    //   135: anewarray java/lang/Void
    //   138: invokevirtual execute : ([Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   141: pop
    //   142: goto -> 54
    //   145: aload_0
    //   146: getfield ab : Landroid/widget/LinearLayout;
    //   149: bipush #8
    //   151: invokevirtual setVisibility : (I)V
    //   154: aload_0
    //   155: getfield ac : Landroid/widget/LinearLayout;
    //   158: iconst_0
    //   159: invokevirtual setVisibility : (I)V
    //   162: new ien
    //   165: dup
    //   166: aload_0
    //   167: aload_0
    //   168: getfield aH : Lfue;
    //   171: iload_2
    //   172: invokespecial <init> : (Lcom/santander/app/faturas/activity/FaturasActivity;Lfue;I)V
    //   175: iconst_0
    //   176: anewarray java/lang/Void
    //   179: invokevirtual execute : ([Ljava/lang/Object;)Landroid/os/AsyncTask;
    //   182: pop
    //   183: goto -> 54
    //   186: ldc_w 'Cartoes_Fatura_SelecioneFatura_Acao'
    //   189: ldc_w 'Aberta'
    //   192: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   195: goto -> 97
    //   198: ldc_w 'Cartoes_Fatura_SelecioneFatura_Acao'
    //   201: ldc_w 'Fechada'
    //   204: invokestatic d : (Ljava/lang/String;Ljava/lang/String;)V
    //   207: goto -> 97
  }
  
  private void a(boolean paramBoolean) {
    boolean bool;
    if (paramBoolean) {
      bool = true;
    } else {
      bool = false;
    } 
    findViewById(2131757988).setVisibility(bool);
    findViewById(2131757861).setVisibility(bool);
    findViewById(2131757862).setVisibility(bool);
    findViewById(2131757866).setVisibility(bool);
    findViewById(2131757865).setVisibility(bool);
    findViewById(2131757874).setVisibility(bool);
    findViewById(2131757873).setVisibility(bool);
    findViewById(2131757878).setVisibility(bool);
    findViewById(2131757877).setVisibility(bool);
    findViewById(2131758265).setVisibility(bool);
    findViewById(2131757881).setVisibility(bool);
    findViewById(2131758257).setVisibility(bool);
    this.aD.setVisibility(bool);
    if (mzr.a()) {
      this.B.setVisibility(8);
      this.C.setVisibility(8);
    } else {
      this.B.setVisibility(bool);
      this.C.setVisibility(bool);
    } 
    findViewById(2131757995).setVisibility(bool);
    findViewById(2131758011).setVisibility(bool);
    findViewById(2131757994).setVisibility(bool);
    this.U.setVisibility(bool);
    findViewById(2131758009).setVisibility(bool);
    findViewById(2131758010).setVisibility(bool);
    this.V.setVisibility(bool);
  }
  
  private void b() {
    this.ab = (LinearLayout)findViewById(2131756795);
    this.ac = (LinearLayout)findViewById(2131756797);
    this.ad = (LinearLayout)findViewById(2131757225);
    this.aD = (LinearLayout)findViewById(2131758258);
    this.ae = (TextView)findViewById(2131756382);
    this.aM = (ImageView)findViewById(2131758251);
    this.aL = (RelativeLayout)findViewById(2131758252);
    this.al = (TextView)findViewById(2131758250);
    this.e = (RelativeLayout)findViewById(2131758013);
    this.f = (RelativeLayout)findViewById(2131758031);
    this.g = (LinearLayout)findViewById(2131758015);
    this.w = (LinearLayout)findViewById(2131758033);
    this.x = (TextView)findViewById(2131757986);
    this.y = (TextView)findViewById(2131757851);
    this.z = (Button)findViewById(2131757989);
    this.B = (LinearLayout)findViewById(2131757990);
    this.C = (LinearLayout)findViewById(2131758264);
    this.A = (Button)findViewById(2131758263);
    this.D = (TextView)findViewById(2131757999);
    this.E = (TextView)findViewById(2131758003);
    this.F = (TextView)findViewById(2131758006);
    this.G = (TextView)findViewById(2131758007);
    this.aG = (TextView)findViewById(2131758274);
    this.H = (RelativeLayout)findViewById(2131758013);
    this.I = (TextView)findViewById(2131758018);
    this.J = (TextView)findViewById(2131758021);
    this.K = (TextView)findViewById(2131758024);
    this.L = (TextView)findViewById(2131758027);
    this.M = (TextView)findViewById(2131758030);
    this.N = (RelativeLayout)findViewById(2131758031);
    this.O = (TextView)findViewById(2131758036);
    this.P = (TextView)findViewById(2131758039);
    this.R = (TextView)findViewById(2131758041);
    this.S = (TextView)findViewById(2131758283);
    this.Q = (TextView)findViewById(2131758042);
    this.T = (LinearLayout)findViewById(2131757857);
    this.U = (LinearLayout)findViewById(2131757996);
    this.V = (LinearLayout)findViewById(2131758012);
    this.W = (LinearLayout)findViewById(2131757856);
    this.aj = (TextView)findViewById(2131758246);
    this.ak = (TextView)findViewById(2131758248);
    this.al = (TextView)findViewById(2131758250);
    this.am = (TextView)findViewById(2131758253);
    this.an = (TextView)findViewById(2131758255);
    this.ao = (TextView)findViewById(2131758256);
    this.ap = (TextView)findViewById(2131758269);
    this.aq = (TextView)findViewById(2131758272);
    this.ar = (TextView)findViewById(2131758275);
    this.as = (TextView)findViewById(2131758276);
    this.at = (TextView)findViewById(2131758277);
    this.au = (TextView)findViewById(2131758278);
    this.av = (TextView)findViewById(2131758279);
    this.aw = (TextView)findViewById(2131758280);
    this.ax = (TextView)findViewById(2131758281);
    this.ay = (TextView)findViewById(2131758282);
    this.az = (TextView)findViewById(2131758284);
    this.aA = (TextView)findViewById(2131758289);
    this.aB = (TextView)findViewById(2131758293);
    this.aC = (TextView)findViewById(2131758297);
    this.aE = (TextView)findViewById(2131758259);
    this.aF = (TextView)findViewById(2131758260);
    this.aI = (ImageButton)findViewById(2131758262);
    this.aJ = (RelativeLayout)findViewById(2131758261);
    this.aK = (SantanderDropDownView)findViewById(2131755321);
    this.ai = (ClickToSelectEditText)findViewById(2131757224);
    if (this.v.f().e().booleanValue()) {
      this.aD.setVisibility(8);
      this.aF.setVisibility(0);
      this.aE.setVisibility(8);
      this.aF.setOnClickListener((View.OnClickListener)new ieb(this));
      this.aJ.setVisibility(8);
      this.aI.setOnClickListener((View.OnClickListener)new iee(this));
    } else {
      if (this.v.b()) {
        this.B.setVisibility(8);
        this.C.setVisibility(8);
      } else {
        this.B.setVisibility(0);
        this.C.setVisibility(0);
      } 
      this.aE.setOnClickListener((View.OnClickListener)new ief(this));
      this.aF.setOnClickListener((View.OnClickListener)new ieg(this));
    } 
    if (mzr.a()) {
      this.B.setVisibility(8);
      this.C.setVisibility(8);
    } else {
      this.B.setOnClickListener((View.OnClickListener)new ieh(this));
      this.C.setOnClickListener((View.OnClickListener)new iei(this));
    } 
    this.z.setOnClickListener((View.OnClickListener)new iej(this));
    this.A.setOnClickListener((View.OnClickListener)new iek(this));
    if (c()) {
      e();
    } else {
      d();
    } 
    this.ai.setOnItemSelectedListener((gpd)new iel(this));
  }
  
  private void b(fue paramfue) {
    String str;
    this.aD.setVisibility(0);
    TextView textView = this.aj;
    if (paramfue.a() != null) {
      str = nak.l(paramfue.a());
    } else {
      str = "";
    } 
    textView.setText(str);
    this.ak = (TextView)findViewById(2131758248);
    if (paramfue.c() != null) {
      goh.b(this.ak, paramfue.c(), "true");
    } else {
      this.ak.setText("R$0,00");
    } 
    if (paramfue.d() != null) {
      goh.b(this.al, paramfue.d(), "true");
    } else {
      this.al.setText("R$0,00");
    } 
    this.aL.setVisibility(0);
    this.aM.setVisibility(0);
    this.am = (TextView)findViewById(2131758253);
    if (paramfue.V() != null) {
      goh.b(this.am, paramfue.V(), "true");
      if (this.am.getText().toString().equalsIgnoreCase("R$ 0,00")) {
        this.aL.setVisibility(8);
        this.aM.setVisibility(8);
      } 
    } else {
      this.al.setText("R$0,00");
    } 
    this.an = (TextView)findViewById(2131758255);
    if (paramfue.q() != null) {
      goh.b(this.an, paramfue.q(), "true");
    } else {
      this.an.setText("");
    } 
    this.ao = (TextView)findViewById(2131758256);
    if (paramfue.p() != null) {
      goh.b(this.ao, paramfue.p(), "true");
    } else {
      this.ao.setText("");
    } 
    if (paramfue.I() != null) {
      this.aG.setText("Limite disponível em " + paramfue.I() + ":");
    } else {
      this.aG.setText("");
    } 
    this.ap = (TextView)findViewById(2131758269);
    if (paramfue.F() != null) {
      goh.b(this.ap, paramfue.F(), "true");
    } else {
      this.ap.setText("");
    } 
    this.aq = (TextView)findViewById(2131758272);
    if (paramfue.G() != null) {
      goh.b(this.aq, paramfue.G(), "true");
    } else {
      this.aq.setText("");
    } 
    this.ar = (TextView)findViewById(2131758275);
    if (paramfue.H() != null) {
      goh.b(this.ar, paramfue.H(), "true");
    } else {
      this.ar.setText("");
    } 
    this.as = (TextView)findViewById(2131758276);
    if (paramfue.u() != null) {
      goh.b(this.as, paramfue.u(), "true");
    } else {
      this.as.setText("");
    } 
    this.at = (TextView)findViewById(2131758277);
    if (paramfue.J() != null) {
      goh.b(this.at, paramfue.J(), "true");
    } else {
      this.at.setText("");
    } 
    this.au = (TextView)findViewById(2131758278);
    if (paramfue.K() != null) {
      goh.b(this.au, paramfue.K(), "true");
    } else {
      this.au.setText("");
    } 
    this.av = (TextView)findViewById(2131758279);
    if (paramfue.L() != null) {
      goh.b(this.av, paramfue.L(), "true");
    } else {
      this.av.setText("");
    } 
    this.aw = (TextView)findViewById(2131758280);
    if (paramfue.M() != null) {
      goh.b(this.aw, paramfue.M(), "true");
    } else {
      this.aw.setText("");
    } 
    this.ax = (TextView)findViewById(2131758281);
    if (paramfue.M() != null) {
      goh.b(this.ax, paramfue.y(), "false");
    } else {
      this.ax.setText("");
    } 
    this.ay = (TextView)findViewById(2131758282);
    if (paramfue.x() != null) {
      goh.b(this.ay, paramfue.x(), "true");
    } else {
      this.ay.setText("");
    } 
    this.az = (TextView)findViewById(2131758284);
    if (paramfue.m() != null) {
      this.az.setText(naj.c(paramfue.m(), "true", "###,###,##0.0000"));
    } else {
      this.az.setText("");
    } 
    this.aA = (TextView)findViewById(2131758289);
    if (paramfue.U() != null) {
      this.aA.setText(paramfue.U() + "%");
    } else {
      this.aA.setText("");
    } 
    this.aB = (TextView)findViewById(2131758293);
    if (paramfue.W() != null) {
      this.aB.setText(paramfue.W() + "%");
    } else {
      this.aB.setText("");
    } 
    this.aC = (TextView)findViewById(2131758297);
    if (paramfue.X() != null) {
      this.aC.setText(paramfue.X() + "%");
    } else {
      this.aC.setText("");
    } 
    if (paramfue.n() != null) {
      this.S.setText("Cotação do Dólar no dia " + paramfue.n().substring(0, 5) + ":");
    } else {
      this.S.setText("");
    } 
    this.Z = this.X.u().equals("BE");
    a(this.Z);
  }
  
  private boolean c() {
    return (this.v.f().s().a() != null && ((ghu)this.v.f().s().a().get(0)).A() == null);
  }
  
  private void d() {
    f();
    (new iep(this, null)).execute((Object[])new Void[0]);
  }
  
  private void e() {
    Dialog dialog = mxn.b((Activity)this);
    this.v.f().t().a((foh)new iec(this, dialog));
  }
  
  private void f() {
    List list = gmy.c();
    this.aK.setAdapter((amr)new amy(list));
    this.aK.setOnItemSelectedListener((amt)new ied(this, list));
    this.aK.setCurrentItem(list.get(this.b));
  }
  
  private void g() {
    this.aa = new ArrayList<fue>();
    Vector<? extends fue> vector2 = null;
    Vector<? extends fue> vector1 = vector2;
    if (this.X != null) {
      vector1 = vector2;
      if (this.X.j() != null) {
        vector1 = vector2;
        if (this.X.j().a() != null)
          vector1 = this.X.j().a(); 
      } 
    } 
    fue fue1 = new fue();
    fue1.a("Aberta");
    fue fue2 = new fue();
    fue2.a("Fechada");
    this.aa.add(fue1);
    this.aa.add(fue2);
    if (vector1 != null)
      this.aa.addAll(vector1); 
    try {
      this.ai.setItems(this.aa);
      return;
    } catch (Exception exception) {
      Log.e("ATG", exception.toString());
      return;
    } 
  }
  
  public void a() {
    Intent intent = new Intent((Context)this, IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", (Serializable)nat.USUARIO_CONSULTIVO);
    startActivity(intent);
  }
  
  public void a(Class<? extends AppCompatActivity> paramClass) {
    Intent intent = new Intent((Context)this, paramClass);
    intent.putExtra("indexCartao", this.b);
    startActivity(intent);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969031);
    c(2131297439);
    this.i = (Activity)this;
    if (getIntent().getExtras() != null)
      this.b = getIntent().getExtras().getInt("indexCartao"); 
    if (getIntent().getExtras() != null)
      this.c = getIntent().getExtras().getBoolean("faturaDoMes", false); 
    b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\faturas\activity\FaturasActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */