import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

public class nw extends RecyclerView.ViewHolder {
  ace a;
  
  LinearLayout b;
  
  TextView c;
  
  TextView d;
  
  TextView e;
  
  TextView f;
  
  TextView g;
  
  TextView h;
  
  RecyclerView i;
  
  public nw(nv paramnv, View paramView) {
    super(paramView);
    this.c = (TextView)paramView.findViewById(la.item_comprovante_efetivacao_produto);
    this.d = (TextView)paramView.findViewById(la.item_comprovante_efetivacao_data_transacao);
    this.e = (TextView)paramView.findViewById(la.item_comprovante_efetivacao_valor_autenticacao);
    this.i = (RecyclerView)paramView.findViewById(la.comprovante_recycler_properties);
    this.f = (TextView)paramView.findViewById(la.item_comprovante_efetivacao_certificado);
    this.g = (TextView)paramView.findViewById(la.comprovante_lbl_type_operacao);
    this.b = (LinearLayout)paramView.findViewById(la.container_comprovante_titular);
    this.h = (TextView)paramView.findViewById(la.item_comprovante_efetivacao_titular);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */