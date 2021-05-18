import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;

class acq extends RecyclerView.ViewHolder {
  TextView a;
  
  TextView b;
  
  TextView c;
  
  RelativeLayout d;
  
  acq(View paramView) {
    super(paramView);
    this.b = (TextView)paramView.findViewById(la.item_carteira_saldo_disponivel);
    this.c = (TextView)paramView.findViewById(la.item_carteira_saldo_total);
    this.a = (TextView)paramView.findViewById(la.item_carteira_conta);
    this.d = (RelativeLayout)paramView.findViewById(la.rl_item_carteira);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\acq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */