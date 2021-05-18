import android.support.v7.widget.AppCompatSeekBar;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;

public class lhn extends RecyclerView.ViewHolder {
  private TextView b;
  
  private ImageButton c;
  
  private TextView d;
  
  private LinearLayout e;
  
  private TextView f;
  
  private TextView g;
  
  private AppCompatSeekBar h;
  
  public lhn(lhm paramlhm, View paramView) {
    super(paramView);
    a(paramView);
  }
  
  private void a(View paramView) {
    this.b = (TextView)paramView.findViewById(2131757405);
    this.c = (ImageButton)paramView.findViewById(2131759277);
    this.d = (TextView)paramView.findViewById(2131756279);
    this.e = (LinearLayout)paramView.findViewById(2131755075);
    this.f = (TextView)paramView.findViewById(2131759278);
    this.g = (TextView)paramView.findViewById(2131759279);
    this.h = (AppCompatSeekBar)paramView.findViewById(2131759280);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lhn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */