import android.support.v7.widget.CardView;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.santander.app.seguros.ui.widgets.ExpandableLayoutV2;
import com.santander.app.seguros.ui.widgets.SegurosTextView;

public class liq extends RecyclerView.ViewHolder {
  private ImageView b;
  
  private ImageView c;
  
  private SegurosTextView d;
  
  private SegurosTextView e;
  
  private LinearLayout f;
  
  private Button g;
  
  private CardView h;
  
  private ExpandableLayoutV2 i;
  
  public liq(lik paramlik, View paramView) {
    super(paramView);
    a(paramView);
  }
  
  private void a(View paramView) {
    this.b = (ImageView)paramView.findViewById(2131755788);
    this.c = (ImageView)paramView.findViewById(2131758652);
    this.d = (SegurosTextView)paramView.findViewById(2131755789);
    this.e = (SegurosTextView)paramView.findViewById(2131756855);
    this.f = (LinearLayout)paramView.findViewById(2131759338);
    this.g = (Button)paramView.findViewById(2131759339);
    this.h = (CardView)paramView.findViewById(2131759336);
    this.i = (ExpandableLayoutV2)paramView.findViewById(2131759337);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\liq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */