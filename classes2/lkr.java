import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class lkr extends RecyclerView.ViewHolder {
  private ImageView b;
  
  private TextView c;
  
  private TextView d;
  
  private View e;
  
  public lkr(lko paramlko, View paramView) {
    super(paramView);
    a(paramView);
  }
  
  private void a(View paramView) {
    this.b = (ImageView)paramView.findViewById(2131756670);
    this.c = (TextView)paramView.findViewById(2131756672);
    this.d = (TextView)paramView.findViewById(2131756673);
    this.e = paramView.findViewById(2131756271);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lkr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */