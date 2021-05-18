import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;
import com.santander.app.seguros.ui.widgets.SegurosTextView;

public class llc extends RecyclerView.ViewHolder {
  SegurosTextView a;
  
  TextView b;
  
  public llc(llb paramllb, View paramView) {
    super(paramView);
    a(paramView);
  }
  
  private void a(View paramView) {
    this.a = (SegurosTextView)paramView.findViewById(2131759251);
    this.b = (TextView)paramView.findViewById(2131759252);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\llc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */