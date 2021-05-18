import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

public class aik extends RecyclerView.ViewHolder {
  public TextView a;
  
  public TextView b;
  
  public TextView c;
  
  public EditText d;
  
  public TextView e;
  
  public aik(aij paramaij, View paramView) {
    super(paramView);
    this.a = (TextView)paramView.findViewById(agg.product_name_text);
    this.b = (TextView)paramView.findViewById(agg.product_specifics_text);
    this.c = (TextView)paramView.findViewById(agg.compartilhado_product_specifics_text);
    this.d = (EditText)paramView.findViewById(agg.ajuste_limite_edittext);
    this.e = (TextView)paramView.findViewById(agg.limites_text);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aik.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */