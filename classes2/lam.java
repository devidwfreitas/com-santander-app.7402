import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;

class lam extends RecyclerView.ViewHolder {
  private TextView b;
  
  private TextView c;
  
  lam(lak paramlak, View paramView) {
    super(paramView);
    this.b = (TextView)paramView.findViewById(2131757506);
    this.c = (TextView)paramView.findViewById(2131756855);
  }
  
  public void a(kpo paramkpo) {
    this.b.setText(paramkpo.a());
    this.c.setText(paramkpo.c());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lam.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */