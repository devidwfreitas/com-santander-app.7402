import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;

public class ny extends RecyclerView.ViewHolder {
  TextView a;
  
  TextView b;
  
  public ny(nx paramnx, View paramView) {
    super(paramView);
    this.a = (TextView)paramView.findViewById(la.item_comprovante_efetivacao_recycler_label);
    this.b = (TextView)paramView.findViewById(la.item_comprovante_efetivacao_recycler_value);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ny.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */