import android.support.design.widget.TextInputEditText;
import android.support.design.widget.TextInputLayout;
import android.support.v7.widget.AppCompatRadioButton;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;

public class llj extends RecyclerView.ViewHolder {
  private TextView b;
  
  private FrameLayout c;
  
  private AppCompatRadioButton d;
  
  private FrameLayout e;
  
  private AppCompatRadioButton f;
  
  private TextInputLayout g;
  
  private TextInputEditText h;
  
  private View i;
  
  private Runnable j;
  
  public llj(lld paramlld, View paramView) {
    super(paramView);
    a(paramView);
  }
  
  private void a(View paramView) {
    this.b = (TextView)paramView.findViewById(2131756662);
    this.c = (FrameLayout)paramView.findViewById(2131756665);
    this.d = (AppCompatRadioButton)paramView.findViewById(2131756664);
    this.e = (FrameLayout)paramView.findViewById(2131756663);
    this.f = (AppCompatRadioButton)paramView.findViewById(2131756666);
    this.g = (TextInputLayout)paramView.findViewById(2131756667);
    this.h = (TextInputEditText)paramView.findViewById(2131756668);
    this.i = paramView.findViewById(2131756669);
    this.h.addTextChangedListener(new llk(this));
  }
  
  public void a(Runnable paramRunnable) {
    this.j = paramRunnable;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\llj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */