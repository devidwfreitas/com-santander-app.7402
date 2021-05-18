import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

public class lvm extends RecyclerView.ViewHolder {
  private ImageView a;
  
  private TextView b;
  
  private TextView c;
  
  private Button d;
  
  private View e;
  
  public lvm(View paramView) {
    super(paramView);
    a(paramView);
  }
  
  private void a(View paramView) {
    this.a = (ImageView)paramView.findViewById(2131756408);
    this.b = (TextView)paramView.findViewById(2131755789);
    this.c = (TextView)paramView.findViewById(2131755914);
    this.d = (Button)paramView.findViewById(2131755118);
    this.e = paramView.findViewById(2131755848);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lvm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */