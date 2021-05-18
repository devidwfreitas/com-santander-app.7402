import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.santander.app.seguros.ui.widgets.SegurosTextView;

public class lmg extends RecyclerView.ViewHolder {
  private View b;
  
  private View c;
  
  private SegurosTextView d;
  
  private TextView e;
  
  private LinearLayout f;
  
  public lmg(lme paramlme, View paramView) {
    super(paramView);
    a(paramView);
  }
  
  private void a(View paramView) {
    this.b = paramView.findViewById(2131756918);
    this.c = paramView.findViewById(2131756669);
    this.d = (SegurosTextView)paramView.findViewById(2131756675);
    this.e = (TextView)paramView.findViewById(2131756676);
    this.f = (LinearLayout)paramView.findViewById(2131756674);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lmg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */