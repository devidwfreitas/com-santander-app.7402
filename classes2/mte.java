import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.santander.app.transfergolden.presentation.LeituraInfoEditText;

public class mte extends mso implements View.OnFocusChangeListener, mtq {
  private LeituraInfoEditText b;
  
  private LeituraInfoEditText c;
  
  private LeituraInfoEditText d;
  
  private LeituraInfoEditText e;
  
  private LeituraInfoEditText f;
  
  private LeituraInfoEditText g;
  
  private mvf h;
  
  private TextWatcher i;
  
  private void l() {
    this.e.c().setInputType(4096);
    this.c.b(4);
    this.d.b(12);
    this.f.b(18);
    n();
    o();
    guj guj = new guj();
    guj.a(this.g.c());
    this.g.a(guj);
    this.g.c().setImeOptions(6);
  }
  
  private void m() {
    String str = nai.c(nai.a(this.f.a()));
    this.f.a(str);
  }
  
  private void n() {
    this.c.setOnFocusChangeListener(this);
    this.d.setOnFocusChangeListener(this);
    this.e.setOnFocusChangeListener(this);
    this.f.setOnFocusChangeListener(this);
    this.g.setOnFocusChangeListener(this);
  }
  
  private void o() {
    LeituraInfoEditText leituraInfoEditText = this.d;
    mtg mtg = new mtg(this);
    this.i = mtg;
    leituraInfoEditText.a(mtg);
  }
  
  public void a(String paramString) {
    this.b.b(paramString);
  }
  
  public void a(String[] paramArrayOfString, mrp parammrp) {
    this.b.a(paramArrayOfString);
    this.c.a(parammrp.d());
    this.d.a(parammrp.e());
    this.e.a(parammrp.g());
    this.f.a(parammrp.f());
    this.g.a(parammrp.i());
    this.b.a(new mth(this));
    onFocusChange((View)this.d, false);
    onFocusChange((View)this.f, false);
  }
  
  public void b(String paramString) {
    this.c.b(paramString);
  }
  
  public void c(int paramInt) {
    this.b.a(paramInt);
  }
  
  public void c(String paramString) {
    this.d.b(paramString);
  }
  
  public void d(String paramString) {
    this.e.b(paramString);
  }
  
  public void e(String paramString) {
    this.f.b(paramString);
  }
  
  public void f() {
    if (this.a != null)
      this.a.j(); 
  }
  
  public void f(String paramString) {
    this.g.b(paramString);
  }
  
  public void g() {
    if (this.a == null)
      return; 
    this.a.setTitle(2131299170);
    this.e.setVisibility(0);
    this.f.setVisibility(0);
  }
  
  public void h() {
    if (this.a == null)
      return; 
    this.a.setTitle(2131299171);
    this.e.setVisibility(8);
    this.f.setVisibility(8);
  }
  
  public void i() {
    this.d.b(this.i);
    String str = mwv.a(this.d.a());
    this.d.a(str);
    this.d.a(this.i);
  }
  
  public void j() {
    this.d.b(this.i);
    String str = mwv.b(this.d.a());
    this.d.a(str);
    this.d.a(this.i);
  }
  
  public void k() {
    this.b.d();
    this.c.d();
    this.d.d();
    this.e.d();
    this.f.d();
    this.g.d();
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    return paramLayoutInflater.inflate(2130969511, paramViewGroup, false);
  }
  
  public void onDestroyView() {
    super.onDestroyView();
    this.h.b();
  }
  
  public void onFocusChange(View paramView, boolean paramBoolean) {
    if (paramBoolean) {
      if (paramView == this.c) {
        mwm.g();
        return;
      } 
      if (paramView == this.d) {
        mwm.h();
        return;
      } 
      if (paramView == this.e) {
        mwm.i();
        return;
      } 
      if (paramView == this.f) {
        mwm.j();
        return;
      } 
      if (paramView == this.g) {
        mwm.k();
        return;
      } 
      return;
    } 
    if (paramView == this.d) {
      this.h.c();
      return;
    } 
    if (paramView == this.f) {
      m();
      return;
    } 
  }
  
  public void onViewCreated(View paramView, @Nullable Bundle paramBundle) {
    super.onViewCreated(paramView, paramBundle);
    this.b = (LeituraInfoEditText)paramView.findViewById(2131759577);
    this.c = (LeituraInfoEditText)paramView.findViewById(2131759578);
    this.d = (LeituraInfoEditText)paramView.findViewById(2131759579);
    this.e = (LeituraInfoEditText)paramView.findViewById(2131759580);
    this.f = (LeituraInfoEditText)paramView.findViewById(2131759581);
    this.g = (LeituraInfoEditText)paramView.findViewById(2131759582);
    l();
    paramView.findViewById(2131759576).setOnClickListener(new mtf(this));
    this.h = new mvg(this);
    this.h.a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mte.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */