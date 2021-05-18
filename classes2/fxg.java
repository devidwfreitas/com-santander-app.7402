import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.airbnb.lottie.LottieAnimationView;

public abstract class fxg extends Fragment {
  protected LottieAnimationView a;
  
  protected TextView b;
  
  protected TextView c;
  
  @Nullable
  protected fxe d;
  
  private void d() {
    awt.a(getContext(), a(), new fxh(this));
  }
  
  private void e() {
    this.b.setText(b());
    this.c.setText(c());
  }
  
  private void f() {
    if (this.a == null)
      return; 
    fwz.a(this.a);
    fwz.a((View)this.b);
    fwz.a((View)this.c);
  }
  
  protected abstract String a();
  
  protected abstract String b();
  
  protected abstract String c();
  
  public void onAttach(Context paramContext) {
    super.onAttach(paramContext);
    try {
      this.d = (fxe)paramContext;
      return;
    } catch (ClassCastException classCastException) {
      this.d = null;
      return;
    } 
  }
  
  @Nullable
  public View onCreateView(LayoutInflater paramLayoutInflater, @Nullable ViewGroup paramViewGroup, @Nullable Bundle paramBundle) {
    return paramLayoutInflater.inflate(2130969054, paramViewGroup, false);
  }
  
  public void onDetach() {
    super.onDetach();
    this.d = null;
  }
  
  public void onViewCreated(View paramView, @Nullable Bundle paramBundle) {
    super.onViewCreated(paramView, paramBundle);
    this.a = (LottieAnimationView)paramView.findViewById(2131757345);
    this.b = (TextView)paramView.findViewById(2131757346);
    this.c = (TextView)paramView.findViewById(2131757347);
    d();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fxg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */