import android.annotation.SuppressLint;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import br.com.santander.investimentoV2.shared.commons.TextWatcherValorBR;
import com.ca.android.app.CaMDOProgressBar;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class pc extends acy {
  private TextView A;
  
  private TextView B;
  
  private TextView C;
  
  private TextView D;
  
  private TextView E;
  
  private TextView F;
  
  private TextView G;
  
  private TextView H;
  
  private TextView I;
  
  private TextView J;
  
  private TextView K;
  
  private View L;
  
  private View M;
  
  private View N;
  
  private View O;
  
  private View P;
  
  private View Q;
  
  private View R;
  
  private LinearLayout S;
  
  private LinearLayout T;
  
  private LinearLayout U;
  
  private tk V;
  
  private final Drawable W = e().getResources().getDrawable(kz.shape_selector_fg_unselected);
  
  private final Drawable X = e().getResources().getDrawable(kz.shape_selector_fg);
  
  private List<Button> Y = new ArrayList<Button>();
  
  private AlertDialog Z = null;
  
  private boolean aa = false;
  
  private final String g = "A";
  
  private final String h = "C";
  
  private final String i = " dias";
  
  private final int j = e().getResources().getColor(kx.inv_transparent);
  
  private final int k = e().getResources().getColor(kx.inv_white_three);
  
  private nf l = new nf();
  
  private acg m;
  
  private om n;
  
  private TextWatcherValorBR o;
  
  private Button p;
  
  private Button q;
  
  private Button r;
  
  private ProgressBar s;
  
  private ImageButton t;
  
  private ImageButton u;
  
  private ImageButton v;
  
  private ImageButton w;
  
  private EditText x;
  
  private EditText y;
  
  private TextView z;
  
  public pc(ack paramack) {
    super(paramack);
    this.m = (acg)paramack.a();
    this.V = null;
    if (this.m.r() != null && !this.m.r().isEmpty())
      this.V = this.m.r().get(this.m.t().intValue()); 
    this.c = new ace(this.m.n(), this.m.p(), this.m.o(), this.V, this.m.q());
    this.c.f(true);
    l();
    j();
    Q();
  }
  
  private void A() {
    if (this.aa)
      (new AlertDialog.Builder((Context)e())).setMessage(lg.app_dialogo_msg_29_30_31).setTitle(lg.app_atencao).setPositiveButton(lg.app_ok, new pq(this)).create().show(); 
  }
  
  private Calendar B() {
    Calendar calendar = Calendar.getInstance();
    boolean bool = this.m.p().equalsIgnoreCase("POUPANÇA");
    if (this.c.b() && bool) {
      calendar.add(5, 60);
      return calendar;
    } 
    calendar.add(5, 90);
    return calendar;
  }
  
  private Double C() {
    String str;
    if (D()) {
      str = abt.MIN_INITIAL_INVESTMENT.getName();
    } else {
      str = abt.MIN_INJECTION.getName();
    } 
    Double double_1 = this.n.c(str);
    if (!acj.a(this.m.r())) {
      String str1 = abt.MIN_INITIAL_INVESTMENT.getName();
      Double double_ = this.n.c(str1);
    } 
    if (this.p.getBackground() == this.X) {
      String str1 = abt.MIN_MONTHLY_SCHEDULE.getName();
      double_1 = this.n.c(str1);
    } 
    Double double_2 = double_1;
    if (double_1.doubleValue() == 0.0D)
      double_2 = Double.valueOf(0.01D); 
    return double_2;
  }
  
  private boolean D() {
    return this.m.p().equals(abs.CDB.getName());
  }
  
  private String E() {
    String str = this.o.getText().toString();
    try {
      return str.trim().replace(".", "").replace(",", ".");
    } catch (Exception exception) {
      exception.printStackTrace();
      return "FORMAT_EXCEPTION: Not possible to convert investment amount";
    } 
  }
  
  private Double F() {
    String str = E();
    try {
      return Double.valueOf(str);
    } catch (Exception exception) {
      exception.printStackTrace();
      return Double.valueOf(0.0D);
    } 
  }
  
  private void G() {
    boolean bool = true;
    b(new View[] { this.N, (View)this.z });
    this.c.h().g();
    if (I())
      bool = false; 
    a(bool);
    c((View)this.o);
    L();
  }
  
  private void H() {
    this.b.remove(this.o);
  }
  
  private boolean I() {
    boolean bool1;
    boolean bool2;
    boolean bool3;
    Double double_1 = aat.c(this.c.h().e());
    Double double_2 = aat.c(this.c.h().h());
    if (!a(E(), C(), double_1)) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (F().doubleValue() > double_1.doubleValue()) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    if (F().doubleValue() < C().doubleValue()) {
      bool3 = true;
    } else {
      bool3 = false;
    } 
    boolean bool = a(E(), double_1, double_2);
    if (bool1) {
      if (bool3)
        a(new View[] { this.N, (View)this.z }); 
      if (bool) {
        N();
        return true;
      } 
      if (bool2) {
        J();
        return true;
      } 
      return true;
    } 
    M();
    return false;
  }
  
  private void J() {
    String str = this.c.h().d();
    str = aat.a(this.c.h().m(), str);
    if (this.Z == null)
      this.Z = aad.a((Context)e(), e().getString(lg.app_atencao), e().getString(lg.app_msg_sem_saldo, new Object[] { str }), new pr(this)); 
  }
  
  private void K() {
    this.Z = null;
  }
  
  private void L() {
    String str2 = aat.e(E().trim());
    TextWatcherValorBR textWatcherValorBR = this.o;
    String str1 = str2;
    if (str2.equals(""))
      str1 = "0,00"; 
    textWatcherValorBR.setText(str1);
  }
  
  private void M() {
    if (this.c.b()) {
      this.c.b(F());
      this.c.a(null);
      return;
    } 
    this.c.b(null);
    this.c.a(F());
  }
  
  private void N() {
    String str1 = e().getString(lg.app_atencao);
    String str2 = e().getString(lg.app_msg_sem_saldo_limite);
    int i = lg.app_sim;
    int j = lg.app_cancelar;
    if (this.Z == null)
      this.Z = aad.a((Context)e(), str1, str2, i, j, new ps(this)); 
  }
  
  private void O() {
    this.o.setText(lg.app_zero_string_br);
    this.o.requestFocus();
  }
  
  private void P() {
    H();
    this.o.selectAll();
    a((View)this.o);
  }
  
  private void Q() {
    String str2;
    oo oo = new oo((Context)e());
    String str1 = null;
    if (this.V != null) {
      str1 = this.V.a();
      str2 = "A";
    } else {
      str2 = "C";
    } 
    oo.a(this.m.n().u(), this.m.n().j(), this.m.n().i(), str1, str2, new pt(this));
  }
  
  private void R() {
    oo oo = new oo((Context)e());
    CaMDOProgressBar.setVisibility(this.s, 0);
    this.F.setVisibility(8);
    String str = this.o.getText().toString().replaceAll("\\.", "").replace(",", ".").trim();
    oo.a(this.m.n().j(), aat.j(str), new px(this));
  }
  
  @SuppressLint({"InflateParams"})
  private void S() {
    this.P.setVisibility(0);
    py py = new py(this);
    this.l.a((Context)e(), this.m.n().i(), this.m.n().j(), this.m.y(), this.m.z(), py);
  }
  
  @NonNull
  private Integer T() {
    byte b1;
    byte b2 = 24;
    try {
      String str = abt.INVESTMENT_HOUR_LIMIT.getName();
      b1 = b2;
      if (this.n.h(str)) {
        str = this.n.a(str).replaceAll("[^0-9]", "").substring(0, 2);
        boolean bool = str.isEmpty();
        if (bool) {
          b1 = b2;
          return Integer.valueOf(b1);
        } 
      } else {
        return Integer.valueOf(b1);
      } 
      b1 = Integer.parseInt(str);
    } catch (Exception exception) {
      b1 = b2;
    } 
    return Integer.valueOf(b1);
  }
  
  private void U() {
    X();
    if (this.c.b()) {
      V();
    } else {
      W();
    } 
    String str = aat.a(C());
    str = e().getResources().getString(lg.config_apl_txt_valor_minimo, new Object[] { str });
    this.z.setText(str);
  }
  
  private void V() {
    Calendar calendar1 = a(this.c.k());
    z();
    Calendar calendar2 = B();
    if (this.c.k().after(calendar2)) {
      calendar2.add(5, -1);
      calendar1 = calendar2;
    } 
    f(calendar1);
  }
  
  private void W() {
    Integer integer = T();
    this.c.a(this.c.m());
    this.c.a(a(this.c.n(), integer));
    this.c.a(this.c.o());
    this.c.b(null);
    this.c.b(null);
    this.c.b(null);
    this.G.setText(lg.config_apl_txt_data);
    this.H.setVisibility(4);
  }
  
  private void X() {
    int i;
    boolean bool1;
    boolean bool2;
    Drawable drawable2;
    Drawable drawable1;
    boolean bool3 = true;
    if (this.q.getBackground() == this.X) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (this.p.getBackground() == this.X) {
      bool2 = true;
    } else {
      bool2 = false;
    } 
    Button button3 = this.q;
    if (bool1) {
      drawable2 = this.W;
    } else {
      drawable2 = this.X;
    } 
    button3.setBackground(drawable2);
    Button button2 = this.q;
    if (bool1) {
      i = this.j;
    } else {
      i = this.k;
    } 
    button2.setTextColor(i);
    this.q.setEnabled(bool1);
    button3 = this.p;
    if (bool2) {
      drawable1 = this.W;
    } else {
      drawable1 = this.X;
    } 
    button3.setBackground(drawable1);
    Button button1 = this.p;
    if (bool2) {
      i = this.j;
    } else {
      i = this.k;
    } 
    button1.setTextColor(i);
    this.p.setEnabled(bool2);
    ace ace = this.c;
    if (!bool2) {
      bool1 = bool3;
    } else {
      bool1 = false;
    } 
    ace.a(bool1);
  }
  
  private void Y() {
    aad.a((Context)e(), e().getString(lg.app_alerta), e().getString(lg.lci_alert_content, new Object[] { Z() }), e().getString(lg.app_cancelar), new qb(this));
  }
  
  private String Z() {
    String str2 = "0:00";
    String str3 = abt.INVESTMENT_HOUR_LIMIT.getName();
    String str1 = str2;
    if (this.n.h(str3)) {
      String[] arrayOfString = this.n.a(str3).split(":");
      str1 = str2;
      if (arrayOfString.length > 1) {
        if (arrayOfString[1].endsWith("h")) {
          str1 = arrayOfString[1].substring(0, arrayOfString[1].length() - 1);
        } else {
          str1 = arrayOfString[1];
        } 
        str1 = arrayOfString[0] + ":" + str1;
      } 
    } 
    return str1;
  }
  
  private DatePickerDialog a(TextView paramTextView, Calendar paramCalendar) {
    String str2 = paramTextView.getText().toString().replaceAll("[^0-9^/]", "").trim();
    String str1 = str2;
    if (str2.isEmpty())
      str1 = aat.a(paramCalendar); 
    String[] arrayOfString = str1.split("/");
    int i = Integer.parseInt(arrayOfString[2]);
    int j = Integer.parseInt(arrayOfString[1]);
    int k = Integer.parseInt(arrayOfString[0]);
    Calendar calendar = B();
    return new DatePickerDialog((Context)e(), new pn(this, paramCalendar, calendar, paramTextView), i, j - 1, k);
  }
  
  private String a(Integer paramInteger) {
    NumberFormat numberFormat = NumberFormat.getIntegerInstance();
    numberFormat.setMinimumIntegerDigits(2);
    return numberFormat.format(paramInteger);
  }
  
  private Calendar a(Calendar paramCalendar) {
    if (c(paramCalendar)) {
      b(paramCalendar);
      this.aa = true;
      return paramCalendar;
    } 
    a(paramCalendar, T());
    return paramCalendar;
  }
  
  private void a(DatePickerDialog paramDatePickerDialog, Calendar paramCalendar) {
    Calendar calendar = B();
    long l1 = paramCalendar.getTimeInMillis();
    long l2 = calendar.getTimeInMillis();
    paramDatePickerDialog.getDatePicker().setMinDate(l1);
    paramDatePickerDialog.getDatePicker().setMaxDate(l2);
    paramDatePickerDialog.setTitle("");
    paramDatePickerDialog.setOnDismissListener(new pp(this));
    if (Build.VERSION.SDK_INT >= 21)
      paramDatePickerDialog.getDatePicker().setFirstDayOfWeek(1); 
  }
  
  private void a(Dialog paramDialog) {
    Button button;
    Button[] arrayOfButton = new Button[3];
    arrayOfButton[0] = (Button)paramDialog.findViewById(la.item_btn_0);
    arrayOfButton[1] = (Button)paramDialog.findViewById(la.item_btn_1);
    arrayOfButton[2] = (Button)paramDialog.findViewById(la.item_btn_2);
    View view1 = paramDialog.findViewById(la.container_sel_0);
    View view2 = paramDialog.findViewById(la.container_sel_1);
    View view3 = paramDialog.findViewById(la.container_sel_2);
    TextView textView1 = (TextView)paramDialog.findViewById(la.item_txt_0);
    TextView textView2 = (TextView)paramDialog.findViewById(la.item_txt_1);
    TextView textView3 = (TextView)paramDialog.findViewById(la.item_txt_2);
    String str2 = abt.DEADLINES_LIST.getName();
    if (!this.n.g(str2)) {
      List<rd> list = this.n.e(str2);
      for (int i = 0; i < list.size(); i++) {
        (new View[3])[0] = view1;
        (new View[3])[1] = view2;
        (new View[3])[2] = view3;
        (new View[3])[i].setVisibility(0);
        (new TextView[3])[0] = textView1;
        (new TextView[3])[1] = textView2;
        (new TextView[3])[2] = textView3;
        (new TextView[3])[i].setText(((rd)list.get(i)).a());
        arrayOfButton[i].setText(((rd)list.get(i)).a());
        arrayOfButton[i].setHint("" + i);
        arrayOfButton[i].setOnClickListener(new pl(this));
        this.Y.add(arrayOfButton[i]);
      } 
    } 
    String str1 = abt.ANOTHER_DEADLINE_INDEX.getName();
    if (this.n.d(str1)) {
      button = (Button)paramDialog.findViewById(la.item_btn_outros);
      button.setHint("" + this.Y.size());
      button.setOnClickListener(new pm(this));
      paramDialog.findViewById(la.container_sel_outro).setVisibility(0);
      this.Y.add(button);
      return;
    } 
    paramDialog.findViewById(la.container_sel_outro).setVisibility(8);
    button[button.length - 1].setBackground(this.X);
    button[button.length - 1].setTextColor(this.k);
  }
  
  private void a(Button paramButton) {
    for (Button button : this.Y) {
      if (button.getHint().equals(paramButton.getHint())) {
        button.setBackground(this.X);
        button.setTextColor(this.k);
      } else {
        button.setBackground(this.W);
        button.setTextColor(this.j);
      } 
      if (!paramButton.getText().toString().equalsIgnoreCase("Outro")) {
        this.y.setText(paramButton.getText());
        this.y.setEnabled(false);
        continue;
      } 
      this.y.setEnabled(true);
    } 
  }
  
  private void a(EditText paramEditText, boolean paramBoolean) {
    boolean bool = true;
    if (paramBoolean) {
      a((View)paramEditText);
      paramEditText.setText(paramEditText.getText().toString().replace(" dias", "").trim());
    } else {
      c((View)paramEditText);
      if (a(paramEditText.getText().toString(), w(), x())) {
        b(new View[] { (View)this.J, e().findViewById(la.config_apl_ln_prazo) });
        if (this.c.b()) {
          this.c.b(Integer.valueOf(paramEditText.getText().toString()));
        } else {
          this.c.a(Integer.valueOf(paramEditText.getText().toString()));
        } 
        paramEditText.setText(paramEditText.getText() + " dias");
      } else {
        a(new View[] { (View)this.J, e().findViewById(la.config_apl_ln_prazo) });
      } 
    } 
    if (!f()) {
      paramBoolean = bool;
    } else {
      paramBoolean = false;
    } 
    a(paramBoolean);
  }
  
  private void a(TextView paramTextView) {
    try {
      int i = T().intValue();
      Calendar calendar = a(Calendar.getInstance(), Integer.valueOf(i));
      DatePickerDialog datePickerDialog = a(paramTextView, calendar);
      a(datePickerDialog, calendar);
      datePickerDialog.show();
      return;
    } catch (Exception exception) {
      Log.e(getClass().getSimpleName(), exception.toString());
      return;
    } 
  }
  
  private void a(boolean paramBoolean) {
    int i;
    if (paramBoolean && f()) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    } 
    if (paramBoolean) {
      i = e().getResources().getColor(kx.inv_white_three);
    } else {
      i = e().getResources().getColor(kx.inv_brownish_grey);
    } 
    this.r.setEnabled(paramBoolean);
    this.r.setTextColor(i);
  }
  
  private void b(Calendar paramCalendar) {
    paramCalendar.set(5, 1);
    paramCalendar.add(2, 1);
  }
  
  private void c(View paramView) {
    b(paramView);
    this.r.requestFocus();
  }
  
  private boolean c(Calendar paramCalendar) {
    boolean bool1;
    boolean bool2 = true;
    if (paramCalendar == null)
      return false; 
    boolean bool = this.m.p().equalsIgnoreCase("POUPANÇA");
    if (paramCalendar.get(5) > 28) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (!bool || !bool1 || !this.c.b())
      bool2 = false; 
    return bool2;
  }
  
  private String d(Calendar paramCalendar) {
    String str1 = aat.a(paramCalendar);
    String str2 = aat.a(Calendar.getInstance());
    e(paramCalendar);
    if (str1.equals(str2)) {
      zy.b(e().getString(lg.tag_name_aplicar_data_acao, new Object[] { this.c.u(), this.c.f().j(), this.c.f().k() }), e().getString(lg.tag_valor_data_hoje));
      return "Hoje - " + str1;
    } 
    zy.b(e().getString(lg.tag_name_aplicar_data_acao, new Object[] { this.c.u(), this.c.f().j(), this.c.f().k() }), e().getString(lg.tag_valor_data_agendada));
    return str1;
  }
  
  private void e(Calendar paramCalendar) {
    if (aat.a(paramCalendar).equals(aat.a(Calendar.getInstance()))) {
      this.c.g(false);
      return;
    } 
    this.c.g(true);
  }
  
  private void f(Calendar paramCalendar) {
    this.c.b(this.c.j());
    this.c.b(paramCalendar);
    this.c.b(this.c.l());
    this.c.a(null);
    this.c.a(null);
    this.c.a(null);
    this.G.setText(lg.config_apl_txt_data_primeira_aplicacao);
    this.D.setText(aat.a(this.c.n()));
    this.H.setVisibility(0);
  }
  
  private void l() {
    s();
    r();
    q();
    p();
    o();
    n();
    m();
  }
  
  private void m() {
    this.O.setVisibility(8);
    this.P.setVisibility(0);
  }
  
  private void n() {
    this.v = (ImageButton)e().findViewById(la.config_apl_btn_prazo);
    this.x = (EditText)e().findViewById(la.config_apl_txt_prazo);
    this.J = (TextView)e().findViewById(la.config_apl_txt_validacao_prazo);
    this.R = e().findViewById(la.config_apl_container_prazo);
    this.L = e().findViewById(la.container_contas);
  }
  
  private void o() {
    this.u = (ImageButton)e().findViewById(la.config_apl_btn_calendario);
    this.G = (TextView)e().findViewById(la.config_apl_lbl_data);
    this.D = (TextView)e().findViewById(la.config_apl_txt_data);
    this.E = (TextView)e().findViewById(la.config_apl_txt_validacao_data);
  }
  
  private void p() {
    this.o = (TextWatcherValorBR)e().findViewById(la.config_apl_amount_to_invest);
    this.q = (Button)e().findViewById(la.config_apl_btn_aplicar);
    this.p = (Button)e().findViewById(la.config_apl_btn_programar);
    this.N = e().findViewById(la.dialog_pzr_linha_valor);
    this.z = (TextView)e().findViewById(la.dialog_pzr_txt_validacao_valor);
    this.S = (LinearLayout)e().findViewById(la.config_container_valor);
  }
  
  private void q() {
    this.T = (LinearLayout)e().findViewById(la.config_apl_container_taxa_adm);
    this.I = (TextView)e().findViewById(la.config_apl_txt_taxa_adm);
  }
  
  private void r() {
    this.U = (LinearLayout)e().findViewById(la.config_apl_container_rentabilidade);
    this.s = (ProgressBar)e().findViewById(la.config_apl_rentabilidade_progress);
    this.t = (ImageButton)e().findViewById(la.config_apl_ic_rentabilidade);
    this.A = (TextView)e().findViewById(la.config_apl_lbl_rentabilide);
    this.F = (TextView)e().findViewById(la.config_apl_txt_rentabilide);
  }
  
  private void s() {
    this.w = (ImageButton)e().findViewById(la.header_cancel);
    this.C = (TextView)e().findViewById(la.header_titulo);
    this.O = e().findViewById(la.config_apl_main_view);
    this.P = e().findViewById(la.config_apl_loading);
    this.Q = e().findViewById(la.dialog_pzr_seletor_container);
    this.K = (TextView)e().findViewById(la.config_nome_produto);
    this.M = e().findViewById(la.config_apl_container_resgate);
    this.B = (TextView)e().findViewById(la.config_apl_txt_resgate);
    this.H = (TextView)e().findViewById(la.config_apl_mensagem);
    this.r = (Button)e().findViewById(la.config_apl_btn_continuar);
  }
  
  private boolean t() {
    String str = abt.PROGRESSIVE_INDEX.getName();
    return (this.n.h(str) && this.n.d(str));
  }
  
  private void u() {
    S();
  }
  
  private String v() {
    String str2 = abt.DEADLINES_LIST.getName();
    List<Integer> list = this.n.f(str2);
    if (list != null && !list.isEmpty()) {
      Collections.sort(list, Collections.reverseOrder());
      return (new StringBuilder()).append(list.get(0)).append(" dias").toString();
    } 
    String str1 = abt.MIN_DEADLINE.getName();
    return this.n.a(str1) + " dias";
  }
  
  private Double w() {
    String str1 = abt.DEADLINES_LIST.getName();
    List<Integer> list = this.n.f(str1);
    String str2 = abt.MIN_DEADLINE.getName();
    if (this.n.h(str2))
      return this.n.c(str2); 
    if (list != null && !list.isEmpty()) {
      Collections.sort(list);
      return Double.valueOf(((Integer)list.get(0)).intValue());
    } 
    return Double.valueOf(1.0D);
  }
  
  private Double x() {
    String str2 = abt.DEADLINES_LIST.getName();
    List<Integer> list = this.n.f(str2);
    if (list != null && !list.isEmpty()) {
      Collections.sort(list, Collections.reverseOrder());
      return Double.valueOf(((Integer)list.get(0)).intValue());
    } 
    String str1 = abt.MAX_DEADLINE.getName();
    return this.n.c(str1);
  }
  
  private void y() {
    Dialog dialog = new Dialog((Context)e());
    dialog.setContentView(lc.layout_prazo_dialog);
    if (Build.VERSION.SDK_INT > 21) {
      dialog.findViewById(la.title).setVisibility(0);
    } else {
      dialog.findViewById(la.title).setVisibility(8);
      dialog.setTitle(lg.app_prazo_dialog);
    } 
    Button button1 = (Button)dialog.findViewById(la.dialog_pzr_btn_cancel);
    Button button2 = (Button)dialog.findViewById(la.dialog_pzr_btn_salvar);
    View view = dialog.findViewById(la.dialog_pzr_seletor_container);
    TextView textView = (TextView)dialog.findViewById(la.dialog_pzr_txt_validacao_valor);
    this.y = (EditText)dialog.findViewById(la.dialog_pzr_campo_prazo);
    this.y.setText(this.x.getText().toString().replace(" dias", ""));
    String str = abt.ANOTHER_DEADLINE_INDEX.getName();
    boolean bool = this.n.d(str);
    this.y.setEnabled(bool);
    textView.setText(e().getResources().getString(lg.config_apl_txt_prazo_entre_mensagem, new Object[] { w(), x() }));
    button1.setOnClickListener(new pi(this, dialog));
    button2.setOnClickListener(new pj(this, dialog));
    a(dialog);
    if (this.Y.isEmpty() || this.Y.size() <= 1)
      view.setVisibility(8); 
    dialog.setCancelable(false);
    dialog.setOnDismissListener(new pk(this, dialog));
    InsetDrawable insetDrawable = new InsetDrawable((Drawable)new ColorDrawable(e().getResources().getColor(kx.inv_white)), 20);
    Window window = dialog.getWindow();
    if (window != null)
      window.setBackgroundDrawable((Drawable)insetDrawable); 
    dialog.show();
  }
  
  private void z() {
    A();
  }
  
  protected void a() {
    super.a();
    zy.b(e().getString(lg.tag_name_aplicar_acao, new Object[] { this.m.p(), this.m.n().j(), this.m.n().k() }), e().getString(lg.tag_valor_selecionarConta));
  }
  
  protected void b() {
    int i;
    super.b();
    this.K.setText(this.m.n().k());
    this.C.setText(lg.app_aplicar);
    this.O.setVisibility(0);
    this.P.setVisibility(8);
    this.w.setOnClickListener(new pd(this));
    this.q.setBackground(this.X);
    this.q.setTextColor(this.k);
    this.q.setEnabled(false);
    this.q.setOnClickListener(new po(this));
    this.p.setBackground(this.W);
    this.p.setTextColor(this.j);
    this.p.setEnabled(true);
    this.p.setOnClickListener(new qd(this));
    this.r.setOnClickListener(new qe(this));
    String str2 = abt.PROGRESSIVE_INDEX.getName();
    lm lm = new lm();
    lm.g(this.n.a(str2));
    this.c.a(lm);
    if (this.n.d(str2)) {
      this.t.setVisibility(0);
      this.t.setOnClickListener(new qf(this));
      this.A.setOnClickListener(new qg(this));
    } else {
      this.t.setVisibility(8);
    } 
    String str1 = abt.PROFITABILITY.getName();
    if (this.n.h(str1) || this.n.h(str2)) {
      this.U.setVisibility(0);
    } else {
      this.U.setVisibility(8);
    } 
    this.S.setOnClickListener(new qh(this));
    this.o.a(new qi(this));
    this.x.setOnEditorActionListener(new qj(this));
    this.z.setText(e().getResources().getString(lg.config_apl_txt_valor_minimo, new Object[] { aat.a(C()) }));
    str2 = abt.MONTHLY_SCHEDULE_INDEX.getName();
    boolean bool = this.n.d(str2);
    View view = this.Q;
    if (bool) {
      i = 0;
    } else {
      i = 8;
    } 
    view.setVisibility(i);
    TextView textView = this.A;
    if (bool) {
      i = lg.config_apl_txt_rentabilidade_12_meses;
    } else {
      i = lg.config_apl_txt_rentabilidade;
    } 
    textView.setText(i);
    if (t()) {
      this.F.setText("Até " + this.n.a(str1));
    } else {
      this.F.setText(this.n.a(str1));
    } 
    str1 = abt.REDEMPTION_TYPE.getName();
    if (this.n.h(str1)) {
      this.M.setVisibility(0);
      this.B.setText(this.n.a(str1));
      this.c.c(this.n.a(str1));
    } else {
      this.M.setVisibility(8);
    } 
    str1 = abt.INVESTMENT_SCHEDULING_INDEX.getName();
    if (this.n.d(str1)) {
      this.u.setOnClickListener(new pe(this));
    } else {
      this.u.setVisibility(4);
    } 
    str1 = abt.INVESTMENT_HOUR_LIMIT.getName();
    if (this.n.h(str1)) {
      this.E.setText(e().getResources().getString(lg.config_apl_txt_data_validacao, new Object[] { this.n.a(str1) }));
    } else {
      this.E.setVisibility(8);
    } 
    if (v().equalsIgnoreCase("null dias")) {
      this.R.setVisibility(8);
    } else {
      this.x.setText(v());
      this.c.a(Integer.valueOf(Integer.parseInt(v().replaceAll("[^0-9]", ""))));
    } 
    str1 = abt.ANNUAL_ADMIN_FEE.getName();
    if (this.n.h(str1)) {
      this.T.setVisibility(0);
      this.I.setText(this.n.a(str1));
      this.c.e(this.n.a(str1));
    } else {
      this.T.setVisibility(8);
    } 
    str1 = abt.ANOTHER_DEADLINE_INDEX.getName();
    if (this.n.d(str1)) {
      str1 = abt.DEADLINES_LIST.getName();
      if (this.n.g(str1) || this.n.e(str1).size() == 1) {
        this.x.setFocusable(true);
        this.x.setOnFocusChangeListener(new pf(this));
        this.v.setVisibility(4);
        str1 = abt.MIN_DEADLINE.getName();
        this.J.setVisibility(0);
        this.J.setText(e().getResources().getString(lg.config_apl_txt_prazo_mensagem, new Object[] { this.n.a(str1) }));
      } else {
        this.x.setFocusable(false);
        this.v.setOnClickListener(new pg(this));
        this.J.setVisibility(8);
      } 
    } else {
      str1 = abt.DEADLINES_LIST.getName();
      if (this.n.g(str1) || this.n.e(str1).size() == 1) {
        this.v.setVisibility(4);
      } else {
        this.v.setOnClickListener(new ph(this));
      } 
      this.x.setFocusable(false);
      this.J.setVisibility(8);
    } 
    if (this.m.m() != null && !this.m.m().isEmpty()) {
      if (this.m.m().size() > 1 && !this.m.c()) {
        a(Boolean.valueOf(true));
        return;
      } 
      if (this.V != null) {
        a(Boolean.valueOf(false));
        Iterator<ou> iterator = this.m.m().iterator();
        while (true) {
          if (iterator.hasNext()) {
            ou ou = iterator.next();
            if (ou.d().contains(this.V.j().c())) {
              a(ou);
              return;
            } 
            continue;
          } 
          return;
        } 
      } 
      a(Boolean.valueOf(false));
      return;
    } 
    this.L.setVisibility(8);
  }
  
  protected void c() {
    super.c();
    if (aca.a().c() != null) {
      oo oo = new oo((Context)e());
      String str = abt.INVESTMENT_HOUR_LIMIT.getName();
      oo.a(this.m.n().j(), this.m.n().i(), this.n.a(str), new pv(this));
      return;
    } 
    if (!this.f.booleanValue()) {
      j();
      return;
    } 
  }
  
  public void d() {
    aad.a((Context)e(), new qc(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\pc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */