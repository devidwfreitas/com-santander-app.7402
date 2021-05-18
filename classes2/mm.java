import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;

class mm extends RecyclerView.ViewHolder {
  private TextView a;
  
  private TextView b;
  
  private View c;
  
  private mm(View paramView) {
    super(paramView);
    this.a = (TextView)paramView.findViewById(la.card_carrinho_propriedades_descricao);
    this.b = (TextView)paramView.findViewById(la.card_carrinho_propriedades_valor);
    this.c = paramView.findViewById(la.card_carrinho_propriedades_line);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */