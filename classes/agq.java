import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class agq extends RecyclerView.ViewHolder {
  public TextView a;
  
  public TextView b;
  
  public ImageView c;
  
  public TextView d;
  
  public TextView e;
  
  public TextView f;
  
  public TextView g;
  
  public TextView h;
  
  public TextView i;
  
  public agq(agp paramagp, View paramView) {
    super(paramView);
    this.a = (TextView)paramView.findViewById(agg.contract_type_label);
    this.b = (TextView)paramView.findViewById(agg.start_date_text);
    this.c = (ImageView)paramView.findViewById(agg.status_bar);
    this.d = (TextView)paramView.findViewById(agg.contract_status_label);
    this.e = (TextView)paramView.findViewById(agg.parcelas_label);
    this.f = (TextView)paramView.findViewById(agg.parcela_value_text);
    this.g = (TextView)paramView.findViewById(agg.date_saldo_devedor_text);
    this.h = (TextView)paramView.findViewById(agg.saldo_devedor_value_text);
    this.i = (TextView)paramView.findViewById(agg.money_sign_card_text);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\agq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */