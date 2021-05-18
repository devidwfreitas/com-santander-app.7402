import android.support.v7.widget.CardView;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;

public class vo extends RecyclerView.ViewHolder {
  CardView a;
  
  CardView b;
  
  CardView c;
  
  CardView d;
  
  View e;
  
  View f;
  
  TextView g;
  
  TextView h;
  
  TextView i;
  
  TextView j;
  
  ImageView k;
  
  TextView l;
  
  TextView m;
  
  TextView n;
  
  TextView o;
  
  TextView p;
  
  TextView q;
  
  ImageButton r;
  
  public vo(View paramView) {
    super(paramView);
    this.a = (CardView)paramView.findViewById(la.list_subp_item_card_full);
    this.g = (TextView)paramView.findViewById(la.card_subp_nome_subproduto);
    this.m = (TextView)paramView.findViewById(la.card_subp_lbl_valor_rentabilidade);
    this.h = (TextView)paramView.findViewById(la.card_subp_valor_rentabilidade);
    this.l = (TextView)paramView.findViewById(la.card_subp_lbl_valor_minimo);
    this.i = (TextView)paramView.findViewById(la.card_subp_valor_minimo);
    this.j = (TextView)paramView.findViewById(la.card_subp_lbl_risco);
    this.k = (ImageView)paramView.findViewById(la.card_subp_img_risco);
    this.e = paramView.findViewById(la.card_subp_cor_familia);
    this.b = (CardView)paramView.findViewById(la.list_subp_item_card_corretora);
    this.n = (TextView)paramView.findViewById(la.card_corretora_nome_familia);
    this.f = paramView.findViewById(la.card_corretora_cor_familia);
    this.o = (TextView)paramView.findViewById(la.list_subp_lnk_corretora);
    this.d = (CardView)paramView.findViewById(la.list_subp_item_card_prev);
    this.p = (TextView)paramView.findViewById(la.list_subp_prev_txt);
    this.c = (CardView)paramView.findViewById(la.list_subp_item_card_coe);
    this.q = (TextView)paramView.findViewById(la.list_subp_coe_txt);
    this.r = (ImageButton)paramView.findViewById(la.card_subp_aplicar);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\vo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */