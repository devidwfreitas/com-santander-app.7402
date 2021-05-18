import android.support.v7.widget.CardView;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class wt extends RecyclerView.ViewHolder {
  public View a;
  
  public View b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private TextView f;
  
  private TextView g;
  
  private TextView h;
  
  private TextView i;
  
  private TextView j;
  
  private TextView k;
  
  private ImageButton l;
  
  private CardView m;
  
  private RelativeLayout n;
  
  private RelativeLayout o;
  
  private RelativeLayout p;
  
  private RelativeLayout q;
  
  public wt(View paramView) {
    super(paramView);
    this.b = paramView;
    this.e = (TextView)paramView.findViewById(la.txt_rentabilidade);
    this.f = (TextView)paramView.findViewById(la.txt_num_contrato);
    this.h = (TextView)paramView.findViewById(la.txt_contract_date);
    this.c = (TextView)paramView.findViewById(la.txt_valor_resgate);
    this.g = (TextView)paramView.findViewById(la.txt_product_name);
    this.d = (TextView)paramView.findViewById(la.txt_contract_type);
    this.i = (TextView)paramView.findViewById(la.txt_deadline);
    this.j = (TextView)paramView.findViewById(la.txt_due_date);
    this.k = (TextView)paramView.findViewById(la.txt_quotas_amount);
    this.a = paramView.findViewById(la.portifolio_cor_familia);
    this.l = (ImageButton)paramView.findViewById(la.finaliza_resgate);
    this.n = (RelativeLayout)paramView.findViewById(la.layout_cdb);
    this.o = (RelativeLayout)paramView.findViewById(la.layout_fundos);
    this.p = (RelativeLayout)paramView.findViewById(la.layout_poupanca);
    this.q = (RelativeLayout)paramView.findViewById(la.layout_cdb_savings_commons);
    this.m = (CardView)paramView.findViewById(la.inv2_portifolio_produtos_card_View_resgate);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\wt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */