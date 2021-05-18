import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.support.design.widget.TextInputEditText;
import android.support.design.widget.TextInputLayout;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.ca.android.app.CaMDOProgressBar;

public class mtx extends mso implements muk {
  private EditText b;
  
  private TextInputLayout c;
  
  private TextInputEditText d;
  
  private Button e;
  
  private Button f;
  
  private LinearLayout g;
  
  private LinearLayout h;
  
  private ProgressBar i;
  
  private mvh j;
  
  private TextWatcher k;
  
  private void a(View paramView) {
    ((InputMethodManager)getContext().getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
    String str1 = this.b.getText().toString();
    String str2 = this.d.getText().toString();
    this.j.a(str1, str2);
  }
  
  public void a(Runnable paramRunnable) {
    a(getString(2131299157), paramRunnable);
  }
  
  public void a(String paramString) {
    this.b.removeTextChangedListener(this.k);
    this.b.setText(paramString);
    this.b.addTextChangedListener(this.k);
  }
  
  public void a(String paramString, boolean paramBoolean) {
    if (this.a != null)
      this.a.a(paramString, paramBoolean); 
  }
  
  public void c() {
    b(2131299156);
  }
  
  public void f() {
    this.c.setVisibility(8);
    this.e.setVisibility(8);
    this.f.setVisibility(0);
    this.g.setVisibility(0);
    this.g.requestFocus();
  }
  
  public void g() {
    this.c.setVisibility(0);
    this.e.setVisibility(0);
    this.f.setVisibility(8);
    this.g.setVisibility(8);
    this.d.requestFocus();
  }
  
  public void h() {
    if (this.a != null)
      this.a.h(); 
  }
  
  public void i() {
    if (this.a != null)
      this.a.l(); 
  }
  
  public void j() {
    if (this.a != null)
      this.a.a(1); 
  }
  
  public void k() {
    if (this.a != null)
      this.a.m(); 
  }
  
  public void l() {
    this.e.setText(2131299138);
  }
  
  public void m() {
    this.e.setText(2131299141);
  }
  
  public void n() {
    this.h.setVisibility(0);
  }
  
  public void o() {
    this.h.setVisibility(8);
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    return paramLayoutInflater.inflate(2130969514, paramViewGroup, false);
  }
  
  public void onDestroyView() {
    super.onDestroyView();
    this.j.d();
  }
  
  public void onViewCreated(View paramView, @Nullable Bundle paramBundle) {
    super.onViewCreated(paramView, paramBundle);
    paramView.findViewById(2131755517).setOnClickListener(new mty(this));
    this.b = (EditText)paramView.findViewById(2131759585);
    this.c = (TextInputLayout)paramView.findViewById(2131759587);
    this.d = (TextInputEditText)paramView.findViewById(2131759588);
    this.e = (Button)paramView.findViewById(2131759591);
    this.f = (Button)paramView.findViewById(2131759592);
    this.g = (LinearLayout)paramView.findViewById(2131759589);
    this.h = (LinearLayout)paramView.findViewById(2131759586);
    this.i = (ProgressBar)paramView.findViewById(2131755112);
    this.b.setOnFocusChangeListener(new mtz(this));
    this.b.setOnEditorActionListener(new mua(this));
    this.d.setOnEditorActionListener(new mub(this));
    this.e.setOnClickListener(new muc(this));
    this.f.setOnClickListener(new mud(this));
    this.k = mwr.a(this.b, mwq.CPF);
    this.j = new mvi(this);
    this.j.a(getArguments());
  }
  
  public void p() {
    CaMDOProgressBar.setVisibility(this.i, 0);
  }
  
  public void q() {
    CaMDOProgressBar.setVisibility(this.i, 8);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mtx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */