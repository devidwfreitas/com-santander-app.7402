import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;

public class lvi extends RecyclerView.ViewHolder {
  private ImageView a;
  
  private Button b;
  
  private TextView c;
  
  private View d;
  
  public lvi(View paramView) {
    super(paramView);
    a(paramView);
  }
  
  private void a(View paramView) {
    this.a = (ImageView)paramView.findViewById(2131759334);
    this.b = (Button)paramView.findViewById(2131755118);
    this.c = (TextView)paramView.findViewById(2131758649);
    this.d = paramView.findViewById(2131756414);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lvi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */