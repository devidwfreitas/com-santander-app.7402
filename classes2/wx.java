import android.app.DatePickerDialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import br.com.santander.investimentoV2.shared.commons.TextWatcherValorBR;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class wx extends acr {
  private ImageButton A;
  
  private ImageButton B;
  
  private Boolean C = Boolean.valueOf(false);
  
  private Boolean D = Boolean.valueOf(false);
  
  private Boolean E = Boolean.valueOf(false);
  
  private TextView F;
  
  private String G;
  
  private String H;
  
  private String I;
  
  private final Drawable a = c(kz.shape_selector_fg_unselected);
  
  private final Drawable c = c(kz.shape_selector_fg);
  
  private final int d = b(kx.inv_white_three);
  
  private final int e = b(kx.inv_transparent);
  
  private ace f;
  
  private acg g;
  
  private om h;
  
  private oo i;
  
  private TextView j;
  
  private TextView k;
  
  private TextView l;
  
  private TextView m;
  
  private TextView n;
  
  private TextView o;
  
  private TextView p;
  
  private TextView q;
  
  private TextView r;
  
  private TextWatcherValorBR s;
  
  private Button t;
  
  private Button u;
  
  private Button v;
  
  private View w;
  
  private View x;
  
  private View y;
  
  private ImageButton z;
  
  public wx(ack paramack) {
    super(paramack);
    this.g = (acg)paramack.a();
    this.f = new ace();
    this.f.f(false);
    this.i = new oo((Context)paramack);
    b();
    c();
    g();
  }
  
  private Boolean A() {
    return Boolean.valueOf(this.h.h("valorMinimoResgate"));
  }
  
  private String B() {
    return this.h.a("horarioLimiteInvestimento");
  }
  
  private Boolean C() {
    return Boolean.valueOf(this.h.d("indicadorAgendamentoResgate"));
  }
  
  private tk D() {
    return this.g.r().get(0);
  }
  
  private Double E() {
    return D().c().a();
  }
  
  private String a(Calendar paramCalendar) {
    String str1 = aat.a(paramCalendar);
    String str2 = aat.a(Calendar.getInstance());
    to to = this.g.n();
    String str3 = this.g.p();
    b(paramCalendar);
    if (str1.equals(str2)) {
      zy.b(a(lg.tag_name_resgatar_data_acao, new Object[] { str3, to.j(), to.k() }), a(lg.tag_valor_data_hoje, new Object[0]));
      return "Hoje - " + str1;
    } 
    zy.b(a(lg.tag_name_resgatar_data_acao, new Object[] { str3, to.j(), to.k() }), a(lg.tag_valor_data_agendada, new Object[0]));
    return str1;
  }
  
  private void a(TextView paramTextView) {
    try {
      int i = r().intValue();
      Calendar calendar = Calendar.getInstance();
      a(calendar, Integer.valueOf(i));
      String str2 = paramTextView.getText().toString().replaceAll("[^0-9^/]", "").trim();
      String str1 = str2;
      if (str2.isEmpty())
        str1 = aat.a(calendar); 
      String[] arrayOfString = str1.split("/");
      int j = Integer.parseInt(arrayOfString[2]);
      int k = Integer.parseInt(arrayOfString[1]);
      int m = Integer.parseInt(arrayOfString[0]);
      long l1 = calendar.getTimeInMillis();
      calendar.add(5, 90);
      long l2 = calendar.getTimeInMillis();
      DatePickerDialog datePickerDialog = new DatePickerDialog((Context)e(), new xc(this, i, paramTextView), j, k - 1, m);
      datePickerDialog.getDatePicker().setMinDate(l1);
      datePickerDialog.getDatePicker().setMaxDate(l2);
      datePickerDialog.setTitle("");
      if (Build.VERSION.SDK_INT >= 21)
        datePickerDialog.getDatePicker().setFirstDayOfWeek(1); 
      datePickerDialog.show();
      return;
    } catch (Exception exception) {
      Log.e(getClass().getSimpleName(), exception.toString());
      return;
    } 
  }
  
  private void a(Double paramDouble) {
    String str = aat.b(paramDouble);
    this.s.setText(str);
    m();
  }
  
  private void b() {
    this.B = (ImageButton)e().findViewById(la.header_cancel);
    this.p = (TextView)e().findViewById(la.header_titulo);
    this.j = (TextView)e().findViewById(la.resgate_lbl_nome_produto);
    this.k = (TextView)e().findViewById(la.resgate_lbl_valor_disp_resgate);
    this.l = (TextView)e().findViewById(la.resgate_lbl_conta_corrente);
    this.F = (TextView)e().findViewById(la.lbl_conta_corrente);
    this.o = (TextView)e().findViewById(la.resgate_lbl_saldo_disponivel);
    this.t = (Button)e().findViewById(la.resgate_btn_parcial);
    this.u = (Button)e().findViewById(la.resgate_btn_total);
    this.s = (TextWatcherValorBR)e().findViewById(la.resgate_edt_valor);
    this.n = (TextView)e().findViewById(la.resgate_txt_valor);
    this.w = e().findViewById(la.resgate_linha_valor);
    this.m = (TextView)e().findViewById(la.resgate_txt_validacao_valor);
    this.A = (ImageButton)e().findViewById(la.resgate_btn_data);
    this.q = (TextView)e().findViewById(la.resgate_txt_data);
    this.r = (TextView)e().findViewById(la.resgate_txt_validacao_data);
    this.z = (ImageButton)e().findViewById(la.resgate_btn_info);
    this.x = e().findViewById(la.resgate_apl_loading);
    this.y = e().findViewById(la.resgate_main_view);
    this.v = (Button)e().findViewById(la.resgate_btn_continuar);
    this.t.setBackground(this.c);
    this.G = a(lg.CDB, new Object[0]);
    this.H = a(lg.FUNDOS, new Object[0]);
    this.I = a(lg.POUPANCA, new Object[0]);
  }
  
  private void b(Calendar paramCalendar) {
    if (aat.a(paramCalendar).equals(aat.a(Calendar.getInstance()))) {
      this.f.g(false);
      return;
    } 
    this.f.g(true);
  }
  
  private void c() {
    try {
      String str = ji.a().f(D().a());
    } catch (Exception exception) {
      exception = null;
    } 
    to to = this.g.n();
    this.i.a(to.u(), to.j(), to.i(), (String)exception, "R", new wy(this));
  }
  
  private String d(String paramString) {
    return paramString.replaceAll("[.]", "").replace(",", ".");
  }
  
  private void d() {
    oo oo1 = new oo((Context)e());
    to to = this.g.n();
    oo1.a(to.j(), to.i(), B(), new xd(this));
  }
  
  private void g() {
    ArrayList arrayList = this.g.m();
    if (arrayList == null || arrayList.isEmpty()) {
      (new oo((Context)e())).a(new xf(this));
      return;
    } 
    h();
  }
  
  private void goBack() {
    this.g.s();
    zs.a().a((Context)e(), this.g);
  }
  
  private void h() {
    this.C = Boolean.valueOf(true);
    a();
    i();
  }
  
  private void i() {
    // Byte code:
    //   0: aload_0
    //   1: getfield C : Ljava/lang/Boolean;
    //   4: invokevirtual booleanValue : ()Z
    //   7: ifeq -> 500
    //   10: aload_0
    //   11: getfield D : Ljava/lang/Boolean;
    //   14: invokevirtual booleanValue : ()Z
    //   17: ifeq -> 500
    //   20: aload_0
    //   21: getfield f : Lace;
    //   24: aload_0
    //   25: invokespecial D : ()Ltk;
    //   28: invokevirtual a : (Ltk;)V
    //   31: aload_0
    //   32: getfield f : Lace;
    //   35: aload_0
    //   36: getfield g : Lacg;
    //   39: invokevirtual p : ()Ljava/lang/String;
    //   42: invokevirtual b : (Ljava/lang/String;)V
    //   45: aload_0
    //   46: getfield f : Lace;
    //   49: aload_0
    //   50: getfield g : Lacg;
    //   53: invokevirtual q : ()Ljava/lang/String;
    //   56: invokevirtual a : (Ljava/lang/String;)V
    //   59: aload_0
    //   60: getfield f : Lace;
    //   63: aload_0
    //   64: getfield g : Lacg;
    //   67: invokevirtual n : ()Lto;
    //   70: invokevirtual a : (Lto;)V
    //   73: aload_0
    //   74: getfield f : Lace;
    //   77: aload_0
    //   78: getfield g : Lacg;
    //   81: invokevirtual o : ()Ljava/lang/Integer;
    //   84: invokevirtual c : (Ljava/lang/Integer;)V
    //   87: aload_0
    //   88: getfield f : Lace;
    //   91: ldc_w ''
    //   94: invokevirtual c : (Ljava/lang/String;)V
    //   97: aload_0
    //   98: getfield f : Lace;
    //   101: iconst_0
    //   102: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   105: invokevirtual a : (Ljava/lang/Integer;)V
    //   108: aload_0
    //   109: getfield x : Landroid/view/View;
    //   112: bipush #8
    //   114: invokevirtual setVisibility : (I)V
    //   117: aload_0
    //   118: getfield y : Landroid/view/View;
    //   121: iconst_0
    //   122: invokevirtual setVisibility : (I)V
    //   125: aload_0
    //   126: getstatic lg.label_conta_corrente : I
    //   129: iconst_0
    //   130: anewarray java/lang/Object
    //   133: invokevirtual a : (I[Ljava/lang/Object;)Ljava/lang/String;
    //   136: astore_2
    //   137: aload_0
    //   138: getfield g : Lacg;
    //   141: invokevirtual p : ()Ljava/lang/String;
    //   144: astore_3
    //   145: aload_3
    //   146: invokevirtual toUpperCase : ()Ljava/lang/String;
    //   149: aload_0
    //   150: getfield I : Ljava/lang/String;
    //   153: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   156: ifne -> 175
    //   159: aload_2
    //   160: astore_1
    //   161: aload_3
    //   162: invokevirtual toUpperCase : ()Ljava/lang/String;
    //   165: aload_0
    //   166: getfield H : Ljava/lang/String;
    //   169: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   172: ifeq -> 196
    //   175: new java/lang/StringBuilder
    //   178: dup
    //   179: invokespecial <init> : ()V
    //   182: aload_2
    //   183: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: ldc_w ' de destino'
    //   189: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   192: invokevirtual toString : ()Ljava/lang/String;
    //   195: astore_1
    //   196: aload_0
    //   197: getfield F : Landroid/widget/TextView;
    //   200: aload_1
    //   201: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   204: aload_0
    //   205: getfield B : Landroid/widget/ImageButton;
    //   208: getstatic kz.ic_back : I
    //   211: invokevirtual setImageResource : (I)V
    //   214: aload_0
    //   215: getfield B : Landroid/widget/ImageButton;
    //   218: new xh
    //   221: dup
    //   222: aload_0
    //   223: invokespecial <init> : (Lwx;)V
    //   226: invokevirtual setOnClickListener : (Landroid/view/View$OnClickListener;)V
    //   229: aload_0
    //   230: getfield p : Landroid/widget/TextView;
    //   233: getstatic lg.app_resgatar : I
    //   236: invokevirtual setText : (I)V
    //   239: aload_0
    //   240: invokespecial k : ()V
    //   243: aload_0
    //   244: getfield g : Lacg;
    //   247: invokevirtual n : ()Lto;
    //   250: astore_1
    //   251: aload_0
    //   252: getfield j : Landroid/widget/TextView;
    //   255: aload_1
    //   256: invokevirtual k : ()Ljava/lang/String;
    //   259: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   262: aload_0
    //   263: getfield k : Landroid/widget/TextView;
    //   266: aload_0
    //   267: invokespecial E : ()Ljava/lang/Double;
    //   270: invokestatic a : (Ljava/lang/Double;)Ljava/lang/String;
    //   273: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   276: aload_0
    //   277: getfield n : Landroid/widget/TextView;
    //   280: aload_0
    //   281: invokespecial q : ()Ljava/lang/String;
    //   284: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   287: aload_0
    //   288: getfield t : Landroid/widget/Button;
    //   291: aload_0
    //   292: getfield c : Landroid/graphics/drawable/Drawable;
    //   295: invokevirtual setBackground : (Landroid/graphics/drawable/Drawable;)V
    //   298: aload_0
    //   299: getfield t : Landroid/widget/Button;
    //   302: aload_0
    //   303: getfield d : I
    //   306: invokevirtual setTextColor : (I)V
    //   309: aload_0
    //   310: getfield t : Landroid/widget/Button;
    //   313: iconst_0
    //   314: invokevirtual setEnabled : (Z)V
    //   317: aload_0
    //   318: getfield t : Landroid/widget/Button;
    //   321: new xi
    //   324: dup
    //   325: aload_0
    //   326: aload_1
    //   327: invokespecial <init> : (Lwx;Lto;)V
    //   330: invokevirtual setOnClickListener : (Landroid/view/View$OnClickListener;)V
    //   333: aload_0
    //   334: getfield u : Landroid/widget/Button;
    //   337: aload_0
    //   338: getfield a : Landroid/graphics/drawable/Drawable;
    //   341: invokevirtual setBackground : (Landroid/graphics/drawable/Drawable;)V
    //   344: aload_0
    //   345: getfield u : Landroid/widget/Button;
    //   348: aload_0
    //   349: getfield e : I
    //   352: invokevirtual setTextColor : (I)V
    //   355: aload_0
    //   356: getfield u : Landroid/widget/Button;
    //   359: iconst_1
    //   360: invokevirtual setEnabled : (Z)V
    //   363: aload_0
    //   364: getfield u : Landroid/widget/Button;
    //   367: new xj
    //   370: dup
    //   371: aload_0
    //   372: aload_1
    //   373: invokespecial <init> : (Lwx;Lto;)V
    //   376: invokevirtual setOnClickListener : (Landroid/view/View$OnClickListener;)V
    //   379: aload_0
    //   380: invokespecial C : ()Ljava/lang/Boolean;
    //   383: invokevirtual booleanValue : ()Z
    //   386: ifeq -> 501
    //   389: aload_0
    //   390: getfield A : Landroid/widget/ImageButton;
    //   393: iconst_0
    //   394: invokevirtual setVisibility : (I)V
    //   397: aload_0
    //   398: getfield A : Landroid/widget/ImageButton;
    //   401: new xk
    //   404: dup
    //   405: aload_0
    //   406: invokespecial <init> : (Lwx;)V
    //   409: invokevirtual setOnClickListener : (Landroid/view/View$OnClickListener;)V
    //   412: aload_0
    //   413: getstatic lg.config_resgate_txt_data_validacao : I
    //   416: iconst_1
    //   417: anewarray java/lang/Object
    //   420: dup
    //   421: iconst_0
    //   422: aload_0
    //   423: invokespecial B : ()Ljava/lang/String;
    //   426: aastore
    //   427: invokevirtual a : (I[Ljava/lang/Object;)Ljava/lang/String;
    //   430: astore_1
    //   431: aload_0
    //   432: getfield r : Landroid/widget/TextView;
    //   435: astore_2
    //   436: aload_0
    //   437: invokespecial z : ()Ljava/lang/Boolean;
    //   440: invokevirtual booleanValue : ()Z
    //   443: ifeq -> 513
    //   446: aload_2
    //   447: aload_1
    //   448: invokevirtual setText : (Ljava/lang/CharSequence;)V
    //   451: aload_0
    //   452: invokespecial y : ()Ljava/lang/Boolean;
    //   455: invokevirtual booleanValue : ()Z
    //   458: ifne -> 520
    //   461: aload_0
    //   462: getfield z : Landroid/widget/ImageButton;
    //   465: bipush #8
    //   467: invokevirtual setVisibility : (I)V
    //   470: aload_0
    //   471: getfield s : Lbr/com/santander/investimentoV2/shared/commons/TextWatcherValorBR;
    //   474: new xm
    //   477: dup
    //   478: aload_0
    //   479: invokespecial <init> : (Lwx;)V
    //   482: invokevirtual a : (Laay;)V
    //   485: aload_0
    //   486: getfield v : Landroid/widget/Button;
    //   489: new xa
    //   492: dup
    //   493: aload_0
    //   494: invokespecial <init> : (Lwx;)V
    //   497: invokevirtual setOnClickListener : (Landroid/view/View$OnClickListener;)V
    //   500: return
    //   501: aload_0
    //   502: getfield A : Landroid/widget/ImageButton;
    //   505: bipush #8
    //   507: invokevirtual setVisibility : (I)V
    //   510: goto -> 412
    //   513: ldc_w ''
    //   516: astore_1
    //   517: goto -> 446
    //   520: aload_0
    //   521: getfield z : Landroid/widget/ImageButton;
    //   524: iconst_0
    //   525: invokevirtual setVisibility : (I)V
    //   528: aload_0
    //   529: getfield z : Landroid/widget/ImageButton;
    //   532: new xl
    //   535: dup
    //   536: aload_0
    //   537: invokespecial <init> : (Lwx;)V
    //   540: invokevirtual setOnClickListener : (Landroid/view/View$OnClickListener;)V
    //   543: goto -> 470
  }
  
  private boolean j() {
    return (E().doubleValue() - p().doubleValue() <= v().doubleValue());
  }
  
  private void k() {
    boolean bool1;
    boolean bool2;
    Double double_ = n();
    if (this.t.getBackground() == this.c) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    if (A().booleanValue() && w().booleanValue() && !j()) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (j() && bool2) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    boolean bool = A().booleanValue();
    String str1 = aat.a(o());
    String str2 = aat.a(double_);
    if (bool1) {
      str1 = a(lg.label_ranged_value, new Object[] { str1, str2 });
    } else if (bool2) {
      str1 = a(lg.label_blocked_partial_redemption, new Object[0]);
      a(double_);
    } else if (bool) {
      str1 = a(lg.label_valor_minimo, new Object[0]) + " " + str1;
    } else {
      str1 = aat.a(Double.valueOf(0.01D));
      str1 = a(lg.label_valor_minimo, new Object[0]) + " " + str1;
    } 
    this.m.setText(str1);
  }
  
  private boolean l() {
    String str = this.g.p();
    return (this.g != null && str != null && str.trim().equalsIgnoreCase(this.I));
  }
  
  private void m() {
    boolean bool;
    Double double_1;
    Double double_2 = o();
    Double double_3 = n();
    if (this.u.getBackground() == this.c) {
      bool = true;
    } else {
      bool = false;
    } 
    if (bool) {
      double_1 = Double.valueOf(Double.parseDouble(d(this.n.getText().toString())));
    } else {
      double_1 = Double.valueOf(Double.parseDouble(d(this.s.getText().toString())));
    } 
    if (a(double_1.toString(), double_2, double_3)) {
      this.f.a(double_1);
      this.v.setEnabled(true);
      this.v.setTextColor(b(kx.inv_white_three));
      this.v.requestFocus();
      return;
    } 
    this.v.setEnabled(false);
    this.v.setTextColor(b(kx.inv_brownish_grey));
    a(new View[] { (View)this.n, this.w });
  }
  
  private Double n() {
    Double double_ = Double.valueOf(E().doubleValue() - p().doubleValue());
    if (j())
      double_ = E(); 
    return double_;
  }
  
  @NonNull
  private Double o() {
    double d = 0.01D;
    if (A().booleanValue()) {
      if (v().doubleValue() != 0.0D)
        d = v().doubleValue(); 
      return Double.valueOf(d);
    } 
    return Double.valueOf(0.01D);
  }
  
  @NonNull
  private Double p() {
    if (y().booleanValue()) {
      double d1 = x().doubleValue();
      return Double.valueOf(d1);
    } 
    double d = 0.0D;
    return Double.valueOf(d);
  }
  
  private String q() {
    boolean bool = true;
    String str2 = aat.b(E()).trim();
    String str1 = str2;
    try {
      boolean bool1;
      if (u().doubleValue() < E().doubleValue()) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      str1 = str2;
      if (w().booleanValue() && bool1) {
        bool1 = bool;
      } else {
        bool1 = false;
      } 
      str1 = str2;
      if (bool1) {
        str1 = str2;
        str2 = aat.b(u()).trim();
        str1 = str2;
        this.m.setText(a(lg.resgate_txt_validacao_valor, new Object[] { str2 }));
        str1 = str2;
        this.m.setVisibility(0);
        str1 = str2;
        this.E = Boolean.valueOf(true);
        str1 = str2;
      } 
      return str1;
    } catch (Exception exception) {
      Log.e(getClass().getSimpleName(), exception.toString());
      return str1;
    } 
  }
  
  @NonNull
  private Integer r() {
    byte b = 24;
    int i = b;
    try {
      String str;
      if (z().booleanValue()) {
        str = B().replaceAll("[^0-9]", "").substring(0, 2);
        boolean bool = str.isEmpty();
        if (bool) {
          i = b;
          return Integer.valueOf(i);
        } 
      } else {
        return Integer.valueOf(i);
      } 
      i = Integer.parseInt(str);
    } catch (Exception exception) {
      i = b;
    } 
    return Integer.valueOf(i);
  }
  
  private void s() {
    String str2 = "O mínimo de permanência neste investimento é de " + aat.a(x());
    String str1 = str2;
    if (w().booleanValue())
      str1 = str2 + ", e o máximo permitido para movimentações é de " + aat.a(u()); 
    (new AlertDialog.Builder((Context)e())).setTitle("Resgate parcial").setMessage(str1).setNegativeButton("FECHAR", new xb(this)).create().show();
  }
  
  private void t() {
    boolean bool1;
    boolean bool2;
    Drawable drawable2;
    Drawable drawable1;
    int i = 4;
    boolean bool3 = true;
    if (this.t.getBackground() == this.c) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (this.u.getBackground() == this.c) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    if (!bool2) {
      this.s.setVisibility(8);
      this.n.setVisibility(0);
      this.w.setVisibility(4);
      TextView textView = this.m;
      if (this.E.booleanValue()) {
        i = 0;
      } else {
        i = 4;
      } 
      textView.setVisibility(i);
      this.z.setVisibility(4);
      this.v.setEnabled(true);
      this.v.setTextColor(b(kx.inv_white_three));
      this.v.requestFocus();
      this.f.a(Double.valueOf(d(this.n.getText().toString()).trim()));
    } else {
      this.s.setVisibility(0);
      this.n.setVisibility(8);
      this.w.setVisibility(0);
      this.m.setVisibility(0);
      ImageButton imageButton = this.z;
      if (!l())
        i = 0; 
      imageButton.setVisibility(i);
      m();
    } 
    Button button3 = this.t;
    if (bool1) {
      drawable2 = this.a;
    } else {
      drawable2 = this.c;
    } 
    button3.setBackground(drawable2);
    Button button2 = this.t;
    if (bool1) {
      i = this.e;
    } else {
      i = this.d;
    } 
    button2.setTextColor(i);
    this.t.setEnabled(bool1);
    button3 = this.u;
    if (bool2) {
      drawable1 = this.a;
    } else {
      drawable1 = this.c;
    } 
    button3.setBackground(drawable1);
    Button button1 = this.u;
    if (bool2) {
      i = this.e;
    } else {
      i = this.d;
    } 
    button1.setTextColor(i);
    this.u.setEnabled(bool2);
    ace ace1 = this.f;
    if (!bool2) {
      bool1 = bool3;
    } else {
      bool1 = false;
    } 
    ace1.d(bool1);
    this.n.setTextColor(b(kx.inv_black));
  }
  
  private Double u() {
    return this.h.c("valorMaximoResgate");
  }
  
  private Double v() {
    return this.h.c("valorMinimoResgate");
  }
  
  private Boolean w() {
    return Boolean.valueOf(this.h.h("valorMaximoResgate"));
  }
  
  private Double x() {
    return this.h.c("saldoMinimoPermanencia");
  }
  
  private Boolean y() {
    return Boolean.valueOf(this.h.h("saldoMinimoPermanencia"));
  }
  
  private Boolean z() {
    return Boolean.valueOf(this.h.h("horarioLimiteInvestimento"));
  }
  
  public void a() {
    ou ou = new ou();
    List<tk> list = this.g.r();
    if (!list.isEmpty()) {
      sv sv = ((tk)list.get(0)).j();
      if (sv != null && !sv.c().isEmpty()) {
        ou.g(sv.b());
        ou.a(sv.c());
      } else {
        ou = aca.a().c();
      } 
      for (ou ou1 : this.g.m()) {
        int i = Integer.parseInt(ou.m());
        int j = Integer.parseInt(ou.d());
        if (Integer.valueOf(i).intValue() == Integer.parseInt(ou1.m()) && Integer.valueOf(j).intValue() == Integer.parseInt(ou1.d())) {
          this.f.a(ou1);
          this.l.setText(aat.a(ou1.m(), ou1.d()));
          this.o.setText(aat.b(ou1.e()));
        } 
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\wx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */