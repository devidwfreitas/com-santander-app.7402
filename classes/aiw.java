import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;

public class aiw extends RecyclerView.ViewHolder {
  public TextView a;
  
  public TextView b;
  
  public TextView c;
  
  public TextView d;
  
  public TextView e;
  
  public aiw(aiv paramaiv, View paramView) {
    super(paramView);
    this.a = (TextView)paramView.findViewById(agg.tipo_produto_text);
    this.b = (TextView)paramView.findViewById(agg.subproduto_text);
    this.c = (TextView)paramView.findViewById(agg.compartilhado_product_specifics_text);
    this.d = (TextView)paramView.findViewById(agg.limite_anterior_value_text);
    this.e = (TextView)paramView.findViewById(agg.novo_limite_value_text);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aiw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */