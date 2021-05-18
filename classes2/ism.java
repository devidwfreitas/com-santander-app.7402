import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.hardware.fingerprint.FingerprintManager;
import android.os.Bundle;
import android.os.SystemClock;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.design.widget.TextInputLayout;
import android.support.v4.app.Fragment;
import android.support.v7.app.AlertDialog;
import android.text.Html;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import br.com.santander.uisdk.SantanderSwitch;
import com.santander.app.HomeLogadaNaoCorrentistaActivity;
import com.santander.app.MinhaConta;
import com.santander.app.cadastrocanal.activity.QuizStartActivity;
import com.santander.app.components.view.SantanderEditText;
import com.santander.app.fingerprint.presentation.FingerprintEnablingActivity;
import com.santander.app.homelogada.presentation.HomeLogadaActivity;
import com.santander.app.homenaologada.login.presentation.VersionAlertActivity;
import com.santander.app.homenaologada.presentation.HomeActivity;
import com.santander.app.idsantander.presentation.IdSantanderHabilitacaoActivity;
import com.santander.app.idsantander.presentation.IdSantanderHabilitacaoQrOuAtmOfertaActivity;
import com.santander.app.idsantander.presentation.IdSantanderHabilitacaoSMSOfertaActivity;
import com.santander.app.idsantander.presentation.IdSantanderOfertaActivity;
import com.santander.app.idsantander.presentation.IdSantanderOtimizacaoActivity;
import com.santander.app.meuperfil.presentation.EscolhaContaPreferencialActivity;
import com.santander.app.validation.presentation.IdSantanderUsuarioConsultivoActivity;

public class ism extends Fragment implements iew, itc {
  public static boolean a = false;
  
  public static boolean b = false;
  
  public static final int d = 1122;
  
  public static final int e = 1130;
  
  private static final String f = "LoginFragment";
  
  public HomeActivity c;
  
  private View g;
  
  private Button h;
  
  private Button i;
  
  private SantanderEditText j;
  
  private SantanderEditText k;
  
  private SantanderSwitch l;
  
  private itf m;
  
  private ImageView n;
  
  private Dialog o;
  
  private Button p;
  
  private Button q;
  
  private AlertDialog.Builder r;
  
  private Dialog s;
  
  private String t;
  
  private TextInputLayout u;
  
  private iex v;
  
  private boolean w = false;
  
  public ism() {}
  
  public ism(String paramString, Boolean paramBoolean) {
    this.t = paramString;
    this.w = paramBoolean.booleanValue();
  }
  
  public ism(String paramString, Boolean paramBoolean, HomeActivity paramHomeActivity) {
    this.t = paramString;
    this.w = paramBoolean.booleanValue();
    this.c = paramHomeActivity;
  }
  
  private View.OnFocusChangeListener Q() {
    return new isw(this);
  }
  
  private View.OnKeyListener R() {
    return new isx(this);
  }
  
  private View.OnClickListener S() {
    return new isy(this);
  }
  
  private View.OnClickListener T() {
    return new isz(this);
  }
  
  private TextWatcher U() {
    return new ita(this);
  }
  
  private View.OnTouchListener V() {
    return new itb(this);
  }
  
  private View.OnClickListener W() {
    return new iso(this);
  }
  
  private void X() {
    if (!myz.b(MinhaConta.b())) {
      d(getString(2131298458));
      return;
    } 
    if (!b) {
      b = true;
      this.m.r();
      return;
    } 
  }
  
  private void Y() {
    Dialog dialog = new Dialog((Context)getActivity(), 2131427876);
    dialog.setContentView(2130969210);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    Button button = (Button)dialog.findViewById(2131758433);
    button.setText("Cancelar");
    ((Button)dialog.findViewById(2131755738)).setText("Ok");
    isp isp = new isp(this, dialog);
    isq isq = new isq(this, dialog);
    mxn.a((Activity)getActivity(), dialog, "Já acessou o App Way?", getActivity().getResources().getString(2131297183), isp, isq);
    button.setOnClickListener(new isr(this, dialog));
  }
  
  private void Z() {
    View view = this.g.findViewById(2131757497);
    if (view == null)
      return; 
    view.setVisibility(8);
  }
  
  private Dialog b(mwx parammwx) {
    mzq.a((Activity)getActivity(), false);
    Dialog dialog = new Dialog((Context)getActivity(), 2131427876);
    dialog.requestWindowFeature(1);
    dialog.setOwnerActivity((Activity)getActivity());
    dialog.setContentView(2130968982);
    dialog.setCancelable(false);
    (dialog.getWindow().getAttributes()).windowAnimations = 2131427870;
    dialog.setOnDismissListener(new myg((Activity)getActivity()));
    dialog.setOnShowListener(new myh((Activity)getActivity()));
    ((TextView)dialog.findViewById(2131756960)).setText((CharSequence)Html.fromHtml(getResources().getString(2131298870)));
    ((TextView)dialog.findViewById(2131756961)).setText((CharSequence)Html.fromHtml(getResources().getString(2131298845)));
    dialog.findViewById(2131756931).setOnClickListener(new iss(this, parammwx, dialog));
    dialog.findViewById(2131756959).setOnClickListener(new ist(this, dialog));
    return dialog;
  }
  
  public void A() {
    Y();
  }
  
  public void B() {
    startActivity(new Intent(getContext(), EscolhaContaPreferencialActivity.class));
  }
  
  public void C() {
    Intent intent = new Intent((Context)this.c, FingerprintEnablingActivity.class);
    intent.putExtra("action", iev.OFFER);
    this.c.startActivityForResult(intent, 1122);
  }
  
  public void D() {
    Intent intent = new Intent(getContext(), IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", nat.BLOQUEIO_ADM);
    startActivity(intent);
  }
  
  public void E() {
    Intent intent = new Intent(getContext(), IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", nat.ERRO_INESPERADO);
    startActivity(intent);
  }
  
  public void F() {
    Intent intent = new Intent(getContext(), IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", nat.BLOQUEIO_CLIENTE);
    startActivity(intent);
  }
  
  public void G() {
    Intent intent = new Intent(getContext(), IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", nat.BLOQUEIO_TENTATIVAS);
    startActivity(intent);
  }
  
  public void H() {
    Intent intent = new Intent(getContext(), IdSantanderHabilitacaoActivity.class);
    intent.putExtra("atm", true);
    startActivity(intent);
  }
  
  public void I() {
    Intent intent = new Intent((Context)this.c, IdSantanderOtimizacaoActivity.class);
    intent.putExtra("action", iev.OFFER);
    this.c.startActivityForResult(intent, 1130);
  }
  
  public void J() {
    startActivity(new Intent(getContext(), IdSantanderHabilitacaoQrOuAtmOfertaActivity.class));
  }
  
  public void K() {
    startActivity((new Intent(getContext(), IdSantanderOfertaActivity.class)).putExtra("tipoConversao", iuu.OBRIGATORIA));
  }
  
  public void L() {
    startActivity((new Intent(getContext(), IdSantanderOfertaActivity.class)).putExtra("tipoConversao", iuu.OPCIONAL));
  }
  
  public void M() {
    startActivity(new Intent(getContext(), IdSantanderHabilitacaoSMSOfertaActivity.class));
  }
  
  public void N() {
    Intent intent = new Intent(getContext(), IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", nat.ID_CANCELADO);
    startActivity(intent);
  }
  
  public void O() {
    Intent intent = new Intent(getContext(), IdSantanderUsuarioConsultivoActivity.class);
    intent.putExtra("tipo", nat.APARELHO_NAO_HABILITADO);
    startActivity(intent);
  }
  
  public itf P() {
    return this.m;
  }
  
  public void a() {
    this.s = mxn.b((Activity)getActivity());
  }
  
  public void a(float paramFloat) {
    this.n.setRotation(paramFloat);
  }
  
  public void a(int paramInt) {
    this.i.setText(paramInt);
  }
  
  public void a(fvu paramfvu) {
    hat.d().a((Activity)getActivity(), paramfvu, true, false);
  }
  
  public void a(CharSequence paramCharSequence) {
    frq.d("Senha", "Não Ok");
    a(paramCharSequence.toString(), 2131427634);
  }
  
  public void a(String paramString) {
    this.k.setText(paramString);
  }
  
  public void a(String paramString, int paramInt) {
    this.u.setHint(paramString);
    this.u.setHintTextAppearance(paramInt);
  }
  
  public void a(String paramString1, String paramString2) {
    Intent intent = new Intent((Context)getActivity(), QuizStartActivity.class);
    intent.putExtra("Nome", paramString1);
    intent.putExtra("cpf", paramString2);
    intent.putExtra("cadastro", false);
    startActivity(intent);
  }
  
  public void a(mwx parammwx) {
    b(parammwx).show();
  }
  
  public void a(boolean paramBoolean) {
    if (paramBoolean) {
      this.j.requestFocus();
      return;
    } 
    this.j.clearFocus();
  }
  
  public void b() {
    frq.d("Senha", "Ok");
    this.m.a(true);
  }
  
  public void b(int paramInt) {
    this.j.setInputType(paramInt);
  }
  
  public void b(String paramString) {
    hat.d().e((Activity)getActivity(), paramString);
  }
  
  public void b(String paramString1, String paramString2) {
    mxn.a((Activity)getActivity(), paramString1, paramString2, false, "Fechar");
  }
  
  public void b(boolean paramBoolean) {
    if (paramBoolean) {
      this.k.requestFocus();
      return;
    } 
    this.k.clearFocus();
  }
  
  public void c() {
    if (this.s != null) {
      this.s.dismiss();
      this.s = null;
    } 
  }
  
  public void c(int paramInt) {
    this.j.setFilters(new InputFilter[] { (InputFilter)new InputFilter.LengthFilter(paramInt) });
  }
  
  public void c(String paramString) {
    this.j.setText(paramString);
  }
  
  public void c(boolean paramBoolean) {
    this.l.setChecked(paramBoolean);
  }
  
  public void d() {
    this.o.show();
  }
  
  public void d(int paramInt) {
    this.k.setSelection(paramInt);
  }
  
  public void d(String paramString) {
    if (mxn.c == null) {
      mxn.b((Activity)getActivity(), paramString);
      return;
    } 
    if (!mxn.c.isShowing()) {
      mxn.b((Activity)getActivity(), paramString);
      return;
    } 
  }
  
  public void e() {
    if (this.o.isShowing())
      this.o.dismiss(); 
  }
  
  public void e(int paramInt) {
    ViewGroup.LayoutParams layoutParams = this.j.getLayoutParams();
    layoutParams.height = paramInt;
    this.j.setLayoutParams(layoutParams);
  }
  
  public void e(String paramString) {
    mxn.d((Activity)getActivity(), paramString);
  }
  
  public String f() {
    return this.k.getText().toString().trim();
  }
  
  public void f(int paramInt) {
    ViewGroup.LayoutParams layoutParams = ((View)this.g.getParent()).getLayoutParams();
    layoutParams.height = paramInt;
    ((View)this.g.getParent()).setLayoutParams(layoutParams);
  }
  
  public void f(String paramString) {
    if (this.s != null) {
      this.s.dismiss();
      this.s = null;
    } 
    mxn.d((Activity)getActivity(), paramString);
  }
  
  public String g() {
    return this.j.getText().toString().trim();
  }
  
  public void g(@StringRes int paramInt) {
    f(getString(paramInt));
  }
  
  public void g(String paramString) {
    this.t = paramString;
  }
  
  public int h() {
    return this.k.getMeasuredHeight();
  }
  
  public void h(int paramInt) {
    Intent intent = new Intent((Context)getActivity(), VersionAlertActivity.class);
    intent.putExtra("extra_check_version_action", paramInt);
    startActivityForResult(intent, 500);
  }
  
  public float i() {
    return this.n.getRotation();
  }
  
  public int j() {
    return (getActivity().getResources().getDisplayMetrics()).heightPixels;
  }
  
  public boolean k() {
    return this.l.a();
  }
  
  public int l() {
    return ((View)this.g.getParent()).getMeasuredHeight();
  }
  
  public int m() {
    return this.h.getMeasuredHeight();
  }
  
  public void n() {
    mxn.e((Activity)getActivity(), getActivity().getResources().getString(2131297175));
  }
  
  public void o() {
    startActivity(new Intent((Context)getActivity(), HomeLogadaActivity.class));
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 500) {
      if (paramInt2 == 1000) {
        this.m.m();
        return;
      } 
    } else {
      return;
    } 
    this.m.b(false);
    this.m.u();
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    frq.a("Login", "Outros");
    MinhaConta.a(getActivity().getApplicationContext());
    this.g = paramLayoutInflater.inflate(2130969076, paramViewGroup, false);
    this.h = (Button)this.g.findViewById(2131758241);
    this.h.setOnTouchListener(V());
    this.i = (Button)this.g.findViewById(2131757496);
    this.i.setOnClickListener(W());
    this.k = (SantanderEditText)this.g.findViewById(2131757492);
    this.k.addTextChangedListener(U());
    this.k.setOnKeyListener(R());
    this.k.setOnFocusChangeListener(Q());
    this.k.setOnClickListener(new isn(this));
    this.j = (SantanderEditText)this.g.findViewById(2131757494);
    this.j.addTextChangedListener(U());
    this.j.setOnKeyListener(R());
    this.j.setOnClickListener(new isu(this));
    this.u = (TextInputLayout)this.g.findViewById(2131757493);
    this.n = (ImageView)this.g.findViewById(2131758240);
    this.l = (SantanderSwitch)this.g.findViewById(2131757495);
    this.l.setOnCheckedChangeListener(new isv(this));
    this.o = new Dialog((Context)getActivity(), 2131427876);
    this.o.requestWindowFeature(1);
    this.o.setOwnerActivity((Activity)getActivity());
    this.o.setContentView(2130968939);
    this.o.setCancelable(false);
    (this.o.getWindow().getAttributes()).windowAnimations = 2131427870;
    this.o.setOnDismissListener(new myg((Activity)getActivity()));
    this.o.setOnShowListener(new myh((Activity)getActivity()));
    TextView textView1 = (TextView)this.o.findViewById(2131756829);
    TextView textView2 = (TextView)this.o.findViewById(2131756382);
    this.p = (Button)this.o.findViewById(2131756830);
    this.q = (Button)this.o.findViewById(2131756831);
    this.r = new AlertDialog.Builder((Context)getActivity());
    textView1.setText("Alerta");
    textView2.setText("Senha inválida.");
    this.p.setText("Voltar");
    this.p.setOnClickListener(S());
    this.q.setText("Esqueci a senha");
    this.q.setOnClickListener(T());
    this.m = new itg(this);
    this.m.n();
    Z();
    return this.g;
  }
  
  public void onPause() {
    super.onPause();
    this.m.o();
  }
  
  public void onResume() {
    super.onResume();
    if (this.w) {
      X();
      MotionEvent motionEvent = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis() + 100L, 1, 0.0F, 0.0F, 0);
      this.h.dispatchTouchEvent(motionEvent);
      this.w = false;
    } 
    if (a) {
      a = false;
      if (!myz.b(MinhaConta.b()))
        d(getString(2131298458)); 
    } 
    this.m.a();
  }
  
  public void onStop() {
    super.onStop();
    this.m.o();
  }
  
  public void p() {
    startActivity(new Intent((Context)getActivity(), HomeLogadaNaoCorrentistaActivity.class));
  }
  
  public ism q() {
    return this;
  }
  
  public void r() {
    ((InputMethodManager)getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.g.getWindowToken(), 2);
  }
  
  public void s() {
    ViewGroup viewGroup = (ViewGroup)this.g;
    ((InputMethodManager)getContext().getSystemService("input_method")).showSoftInput(viewGroup.getFocusedChild(), 1);
  }
  
  public void t() {
    this.m.m();
    this.m.o();
  }
  
  public void u() {
    this.m.o();
    getActivity().finish();
  }
  
  public String v() {
    return this.t;
  }
  
  public void w() {
    this.v.a();
  }
  
  public void x() {
    this.v = new iey((FingerprintManager)getActivity().getSystemService(FingerprintManager.class), this, (Context)getActivity());
  }
  
  public void y() {
    this.v.b();
  }
  
  public void z() {
    if (this.s != null) {
      this.s.dismiss();
      this.s = null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ism.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */