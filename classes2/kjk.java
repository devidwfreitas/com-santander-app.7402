import android.app.Activity;
import android.app.DatePickerDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.LinearLayout;
import com.santander.app.components.view.SantanderButtonView;
import com.santander.app.components.view.SantanderTextView;
import com.santander.app.components.view.SegmentCheckBox;
import com.santander.app.components.view.SegmentEditText;
import com.santander.app.components.view.SegmentImageView;
import com.santander.app.contacorrente.domain.Conta;
import com.santander.app.recargatelefone.recargaconfirmacao.presnetation.RecargaConfirmacaoActivity;
import com.santander.app.widget.Carrossel;
import java.io.Serializable;
import java.util.Calendar;
import java.util.List;
import java.util.Vector;

public class kjk extends Fragment implements kjn {
  private kgm a;
  
  private fvn b;
  
  private kjo c;
  
  private SantanderTextView d;
  
  private SantanderTextView e;
  
  private Carrossel f;
  
  private Carrossel g;
  
  private Carrossel h;
  
  private LinearLayout i;
  
  private LinearLayout j;
  
  private SegmentEditText k;
  
  private SegmentEditText l;
  
  private SegmentEditText m;
  
  private SegmentEditText n;
  
  private SantanderButtonView o;
  
  private SantanderButtonView p;
  
  private SantanderButtonView q;
  
  private SantanderButtonView r;
  
  private SegmentCheckBox s;
  
  private Dialog t;
  
  private SegmentImageView u;
  
  private String v = "RecargaProgramadaFragment";
  
  private Vector<fqa> w;
  
  private void A() {
    this.f.setListener(new kjl(this));
    this.g.setListener(new kjm(this));
  }
  
  public FragmentActivity a() {
    return getActivity();
  }
  
  public void a(int paramInt) {
    this.g.setCurrentItem(paramInt);
  }
  
  public void a(int paramInt, kic paramkic) {
    Intent intent = new Intent((Context)getActivity(), RecargaConfirmacaoActivity.class);
    intent.putExtra("tipo_recarga", paramInt);
    intent.putExtra("response", (Serializable)paramkic);
    startActivity(intent);
  }
  
  public void a(int paramInt, kid paramkid) {
    Intent intent = new Intent((Context)getActivity(), RecargaConfirmacaoActivity.class);
    intent.putExtra("tipo_recarga", paramInt);
    intent.putExtra("response", (Serializable)paramkid);
    startActivity(intent);
  }
  
  public void a(fvn paramfvn) {
    this.b = paramfvn;
  }
  
  public void a(String paramString) {
    b();
    this.d.setVisibility(0);
    this.d.setText(paramString);
  }
  
  public void a(String paramString1, String paramString2) {
    this.k.setText(paramString1);
    this.l.setText(paramString2);
  }
  
  public void a(Calendar paramCalendar, DatePickerDialog.OnDateSetListener paramOnDateSetListener) {
    (new DatePickerDialog((Context)getActivity(), paramOnDateSetListener, paramCalendar.get(1), paramCalendar.get(2), paramCalendar.get(5))).show();
  }
  
  public void a(List<Conta> paramList) {
    this.f.setAdapter(new foo((Context)getActivity(), (List)paramList));
  }
  
  public void a(Vector<fqa> paramVector) {
    this.w = paramVector;
    this.g.setAdapter(new fqb(getContext(), paramVector));
  }
  
  public void a(kgm paramkgm) {
    this.a = paramkgm;
  }
  
  public void a(boolean paramBoolean) {
    this.s.setChecked(paramBoolean);
  }
  
  public void b() {
    this.i.setVisibility(0);
  }
  
  public void b(int paramInt) {
    this.h.setCurrentItem(paramInt);
  }
  
  public void b(String paramString) {
    hat.d().a((Activity)getActivity(), paramString);
  }
  
  public void b(String paramString1, String paramString2) {
    this.n.setText(paramString1);
    this.m.setText(paramString2);
  }
  
  public void b(Vector<fqa> paramVector) {
    this.h.setAdapter(new fqb(getContext(), paramVector));
  }
  
  public void c() {
    this.i.setVisibility(8);
  }
  
  public void c(String paramString) {
    this.o.setText(paramString);
  }
  
  public void d() {
    this.j.setVisibility(0);
  }
  
  public void d(String paramString) {
    this.p.setText(paramString);
  }
  
  public void e() {
    this.j.setVisibility(8);
  }
  
  public void f() {
    this.t = mxn.b((Activity)getActivity());
  }
  
  public void g() {
    if (this.t != null) {
      this.t.cancel();
      this.t = null;
    } 
  }
  
  public void h() {
    khh khh = new khh();
    khh.a(this.c.b());
    khh.show(getActivity().getFragmentManager(), null);
  }
  
  public void i() {
    Intent intent = new Intent("android.intent.action.PICK", ContactsContract.CommonDataKinds.Phone.CONTENT_URI);
    getActivity().startActivityForResult(intent, 0);
  }
  
  public void j() {
    this.k.requestFocus();
  }
  
  public void k() {
    this.l.requestFocus();
  }
  
  public void l() {
    this.n.requestFocus();
  }
  
  public void m() {
    this.m.requestFocus();
  }
  
  public void n() {
    InputMethodManager inputMethodManager = (InputMethodManager)getActivity().getSystemService("input_method");
    View view = getActivity().getWindow().getCurrentFocus();
    if (view != null)
      inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0); 
  }
  
  public int o() {
    return this.f.a();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    gpu.b((Activity)getActivity());
    this.c.a(paramInt2, paramIntent);
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969083, paramViewGroup, false);
    this.c = new kjo(this);
    this.u = (SegmentImageView)view.findViewById(2131757522);
    this.u.setOnClickListener(this.c.c());
    this.d = (SantanderTextView)view.findViewById(2131755977);
    this.e = (SantanderTextView)view.findViewById(2131757519);
    this.f = (Carrossel)view.findViewById(2131757514);
    this.g = (Carrossel)view.findViewById(2131757523);
    this.h = (Carrossel)view.findViewById(2131757524);
    this.h.setListener(this.c.j());
    this.i = (LinearLayout)view.findViewById(2131757516);
    this.j = (LinearLayout)view.findViewById(2131757532);
    this.k = (SegmentEditText)view.findViewById(2131757518);
    this.k.addTextChangedListener(this.c.f());
    this.l = (SegmentEditText)view.findViewById(2131755834);
    this.l.addTextChangedListener(this.c.g());
    this.m = (SegmentEditText)view.findViewById(2131757521);
    this.m.addTextChangedListener(this.c.i());
    this.n = (SegmentEditText)view.findViewById(2131757520);
    this.n.addTextChangedListener(this.c.h());
    this.o = (SantanderButtonView)view.findViewById(2131757531);
    this.o.setOnClickListener(this.c.k());
    this.p = (SantanderButtonView)view.findViewById(2131757533);
    this.p.setOnClickListener(this.c.l());
    this.q = (SantanderButtonView)view.findViewById(2131757527);
    this.q.setOnClickListener(this.c.d());
    this.r = (SantanderButtonView)view.findViewById(2131757515);
    this.r.setOnClickListener(this.c.a());
    this.s = (SegmentCheckBox)view.findViewById(2131757534);
    this.s.setOnCheckedChangeListener(this.c.e());
    if (this.a != null) {
      this.c.a(this.a);
      A();
      return view;
    } 
    this.c.a(this.b);
    A();
    return view;
  }
  
  public int p() {
    return this.g.a();
  }
  
  public int q() {
    return this.h.a();
  }
  
  public String r() {
    return this.k.getText().toString();
  }
  
  public String s() {
    return this.l.getText().toString();
  }
  
  public String t() {
    return this.d.getText().toString();
  }
  
  public String u() {
    return this.o.getText().toString();
  }
  
  public String v() {
    return this.p.getText().toString();
  }
  
  public boolean w() {
    return this.s.isChecked();
  }
  
  public void x() {
    this.r.setClickable(false);
    this.r.setAlpha(0.5F);
  }
  
  public void y() {
    this.u.setClickable(false);
    this.u.setAlpha(0.5F);
  }
  
  public void z() {
    this.e.setVisibility(8);
    this.m.setVisibility(8);
    this.n.setVisibility(8);
    this.l.setFocusable(false);
    this.k.setFocusable(false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kjk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */