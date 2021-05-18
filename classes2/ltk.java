import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import com.santander.app.seguros.ui.widgets.CircleImageView;

public class ltk extends RecyclerView.ViewHolder {
  private FrameLayout b;
  
  private CircleImageView c;
  
  private TextView d;
  
  private View e;
  
  private ImageButton f;
  
  public ltk(lth paramlth, View paramView) {
    super(paramView);
    a(paramView);
  }
  
  private void a(View paramView) {
    this.b = (FrameLayout)paramView.findViewById(2131756083);
    this.c = (CircleImageView)paramView.findViewById(2131756950);
    this.d = (TextView)paramView.findViewById(2131759341);
    this.e = paramView.findViewById(2131755848);
    this.f = (ImageButton)paramView.findViewById(2131759287);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ltk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */