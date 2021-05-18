import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.annotation.StringRes;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.TextView;
import com.santander.app.validation.presentation.ValidacionOperacionFragment;

public class muu extends ValidacionOperacionFragment {
  @Nullable
  protected msy a;
  
  @StringRes
  private int f;
  
  private View.OnClickListener g;
  
  private bfj d(String paramString) {
    return (new bfj()).a("Verifique em seu Cartão de Segurança On-line, o código correspondente ao número: ").a(paramString, new Object[] { new StyleSpan(1), new AbsoluteSizeSpan(18, true) });
  }
  
  private void j() {
    if (this.a == null)
      return; 
    this.g.onClick(null);
    this.a.f();
  }
  
  public int a() {
    mwm.e("CSO");
    this.f = 2131299166;
    return 2130969518;
  }
  
  public void a(@StringRes int paramInt) {
    if (this.a != null)
      this.a.a(getString(paramInt), new mux(this)); 
  }
  
  public void a(View.OnClickListener paramOnClickListener) {
    this.g = paramOnClickListener;
    this.c.findViewById(2131759600).setOnClickListener(paramOnClickListener);
  }
  
  public void a(ftz paramftz) {
    if (this.a != null)
      this.a.a(paramftz.c(), new muw(this)); 
  }
  
  public void a(Integer paramInteger) {
    if (this.a != null)
      this.a.a(getString(2131297209), new muy(this)); 
  }
  
  public void a(String paramString) {
    this.d.setVisibility(8);
    ((TextView)this.c.findViewById(2131759597)).setText((CharSequence)d(paramString));
    if (this.a != null)
      this.a.e(); 
  }
  
  public int b() {
    mwm.e("ID");
    this.f = 2131299167;
    return super.b();
  }
  
  public void b(View.OnClickListener paramOnClickListener) {
    super.b(new muv(this, paramOnClickListener));
  }
  
  public void c() {
    if (this.a != null)
      this.a.a(2); 
  }
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    try {
      this.a = (msy)paramContext;
      return;
    } catch (ClassCastException classCastException) {
      this.a = null;
      return;
    } 
  }
  
  public void onDetach() {
    super.onDetach();
    this.a = null;
  }
  
  public void onViewCreated(View paramView, @Nullable Bundle paramBundle) {
    super.onViewCreated(paramView, paramBundle);
    if (this.a != null)
      this.a.a(getString(this.f)); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\muu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */