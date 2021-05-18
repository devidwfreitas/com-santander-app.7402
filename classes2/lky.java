import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.santander.app.seguros.ui.widgets.SegurosTextView;

public class lky extends RecyclerView.ViewHolder {
  private FrameLayout b;
  
  private TextView c;
  
  private SegurosTextView d;
  
  public lky(lkt paramlkt, View paramView) {
    super(paramView);
    a(paramView);
  }
  
  private void a(View paramView) {
    this.b = (FrameLayout)paramView.findViewById(2131759347);
    this.c = (TextView)paramView.findViewById(2131759348);
    this.d = (SegurosTextView)paramView.findViewById(2131759349);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lky.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */