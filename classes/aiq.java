import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;

public class aiq extends RecyclerView.ViewHolder {
  TextView a;
  
  TextView b;
  
  TextView c;
  
  TextView d;
  
  TextView e;
  
  TextView f;
  
  ProgressBar g;
  
  public aiq(aip paramaip, View paramView) {
    super(paramView);
    this.a = (TextView)paramView.findViewById(agg.product_name_text);
    this.b = (TextView)paramView.findViewById(agg.product_specifics_text);
    this.c = (TextView)paramView.findViewById(agg.product_specifics_text_shared);
    this.d = (TextView)paramView.findViewById(agg.contract_current_limit_text);
    this.e = (TextView)paramView.findViewById(agg.limite_disponivel_text);
    this.f = (TextView)paramView.findViewById(agg.alterar_contract_button);
    this.g = (ProgressBar)paramView.findViewById(agg.contract_status_bar);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aiq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */