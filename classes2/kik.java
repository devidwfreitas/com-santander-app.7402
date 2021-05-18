import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.provider.ContactsContract;
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
import java.util.List;
import java.util.Vector;

public class kik extends Fragment implements kio {
  private Carrossel a;
  
  private Carrossel b;
  
  private Carrossel c;
  
  private SantanderButtonView d;
  
  private SantanderButtonView e;
  
  private SegmentEditText f;
  
  private SegmentEditText g;
  
  private SegmentEditText h;
  
  private SegmentEditText i;
  
  private SegmentImageView j;
  
  private SegmentCheckBox k;
  
  private SantanderTextView l;
  
  private SantanderTextView m;
  
  private LinearLayout n;
  
  private Dialog o;
  
  private String p = "RecargaFragment";
  
  private Vector<fqa> q;
  
  private kip r;
  
  private void t() {
    this.a.setListener(new kil(this));
    this.b.setListener(new kim(this));
    this.c.setListener(new kin(this));
  }
  
  public FragmentActivity a() {
    return getActivity();
  }
  
  public void a(int paramInt) {
    this.b.setCurrentItem(paramInt);
  }
  
  public void a(String paramString) {
    c();
    this.l.setVisibility(0);
    this.l.setText(paramString);
  }
  
  public void a(String paramString, int paramInt, kic paramkic) {
    Intent intent = new Intent((Context)getActivity(), RecargaConfirmacaoActivity.class);
    intent.putExtra("tipo_recarga", paramInt);
    intent.putExtra("response", (Serializable)paramkic);
    startActivity(intent);
  }
  
  public void a(String paramString1, String paramString2) {
    this.f.setText(paramString1);
    this.g.setText(paramString2);
  }
  
  public void a(List<Conta> paramList) {
    this.a.setAdapter(new foo((Context)getActivity(), (List)paramList));
  }
  
  public void a(Vector<fqa> paramVector) {
    this.q = paramVector;
    this.b.setAdapter(new fqb(getContext(), paramVector));
  }
  
  public void a(boolean paramBoolean) {
    this.k.setChecked(paramBoolean);
  }
  
  public void b() {
    Intent intent = new Intent("android.intent.action.PICK", ContactsContract.CommonDataKinds.Phone.CONTENT_URI);
    getActivity().startActivityForResult(intent, 0);
  }
  
  public void b(String paramString) {
    hat.d().a((Activity)getActivity(), paramString);
  }
  
  public void b(String paramString1, String paramString2) {
    this.h.setText(paramString1);
    this.i.setText(paramString2);
  }
  
  public void b(Vector<fos> paramVector) {
    this.c.setAdapter(new fou(getContext(), paramVector, (Activity)getActivity()));
  }
  
  public void c() {
    this.n.setVisibility(0);
  }
  
  public void d() {
    this.n.setVisibility(8);
  }
  
  public void e() {
    this.o = mxn.b((Activity)getActivity());
  }
  
  public void f() {
    if (this.o != null) {
      this.o.cancel();
      this.o = null;
    } 
  }
  
  public void g() {
    khh khh = new khh();
    khh.a(this.r.f());
    khh.show(getActivity().getFragmentManager(), null);
  }
  
  public void h() {
    this.f.requestFocus();
  }
  
  public void i() {
    this.g.requestFocus();
  }
  
  public void j() {
    this.h.requestFocus();
  }
  
  public void k() {
    this.i.requestFocus();
  }
  
  public void l() {
    InputMethodManager inputMethodManager = (InputMethodManager)getActivity().getSystemService("input_method");
    View view = getActivity().getWindow().getCurrentFocus();
    if (view != null)
      inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0); 
  }
  
  public int m() {
    return this.a.a();
  }
  
  public int n() {
    return this.b.a();
  }
  
  public int o() {
    return this.c.a();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent) {
    this.r.a(paramInt2, paramIntent);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
    View view = paramLayoutInflater.inflate(2130969082, paramViewGroup, false);
    this.r = new kip(this);
    this.a = (Carrossel)view.findViewById(2131757514);
    this.b = (Carrossel)view.findViewById(2131757523);
    this.c = (Carrossel)view.findViewById(2131757524);
    t();
    this.d = (SantanderButtonView)view.findViewById(2131757515);
    this.d.setOnClickListener(this.r.c());
    this.e = (SantanderButtonView)view.findViewById(2131757527);
    this.e.setOnClickListener(this.r.d());
    this.f = (SegmentEditText)view.findViewById(2131757518);
    this.f.addTextChangedListener(this.r.h());
    this.g = (SegmentEditText)view.findViewById(2131755834);
    this.g.addTextChangedListener(this.r.i());
    this.h = (SegmentEditText)view.findViewById(2131757520);
    this.h.addTextChangedListener(this.r.j());
    this.i = (SegmentEditText)view.findViewById(2131757521);
    this.i.addTextChangedListener(this.r.k());
    this.j = (SegmentImageView)view.findViewById(2131757522);
    this.j.setOnClickListener(this.r.e());
    this.k = (SegmentCheckBox)view.findViewById(2131757526);
    this.k.setOnCheckedChangeListener(this.r.g());
    this.l = (SantanderTextView)view.findViewById(2131755977);
    this.m = (SantanderTextView)view.findViewById(2131757525);
    this.n = (LinearLayout)view.findViewById(2131757516);
    this.r.a();
    return view;
  }
  
  public void onDestroyView() {
    super.onDestroyView();
  }
  
  public void onStop() {
    super.onStop();
  }
  
  public String p() {
    return this.h.getText().toString();
  }
  
  public String q() {
    return this.i.getText().toString();
  }
  
  public String r() {
    return this.l.getText().toString();
  }
  
  public boolean s() {
    return this.k.isChecked();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kik.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */