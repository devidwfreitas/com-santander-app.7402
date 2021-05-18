import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;

public class vh extends RecyclerView.ViewHolder {
  TextView a;
  
  TextView b;
  
  RecyclerView c;
  
  public vh(View paramView) {
    super(paramView);
    this.a = (TextView)paramView.findViewById(la.list_subp_item_nome_familia);
    this.b = (TextView)paramView.findViewById(la.list_subp_item_lnk_ver_todos);
    this.c = (RecyclerView)paramView.findViewById(la.list_subp_item_rv_cards_subproduto);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\vh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */