import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class mj extends RecyclerView.ViewHolder {
  ace a;
  
  TextView b;
  
  TextView c;
  
  TextView d;
  
  TextView e;
  
  TextView f;
  
  TextView g;
  
  TextView h;
  
  View i;
  
  View j;
  
  Button k;
  
  Button l;
  
  RecyclerView m;
  
  RelativeLayout n;
  
  public mj(ma paramma, View paramView) {
    super(paramView);
    this.i = paramView.findViewById(la.car_card_family_color);
    this.b = (TextView)paramView.findViewById(la.car_card_product_name);
    this.c = (TextView)paramView.findViewById(la.car_card_contract_info);
    this.d = (TextView)paramView.findViewById(la.car_card_titular_name);
    this.k = (Button)paramView.findViewById(la.car_card_btn_remove);
    this.l = (Button)paramView.findViewById(la.car_card_btn_edit);
    this.e = (TextView)paramView.findViewById(la.car_card_api_titulo);
    this.f = (TextView)paramView.findViewById(la.car_card_api_message);
    this.g = (TextView)paramView.findViewById(la.car_card_leia_mais);
    this.j = paramView.findViewById(la.car_card_api_container);
    this.h = (TextView)paramView.findViewById(la.car_card_visualizar);
    this.m = (RecyclerView)paramView.findViewById(la.rcl_item_carrinho_propriedades);
    this.n = (RelativeLayout)paramView.findViewById(la.carrinho_card_terms_container);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */