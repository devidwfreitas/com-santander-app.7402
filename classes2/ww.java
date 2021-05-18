import android.support.v7.widget.CardView;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;

public class ww extends RecyclerView.ViewHolder {
  public View a;
  
  public View b;
  
  TextView c;
  
  TextView d;
  
  ImageButton e;
  
  CardView f;
  
  public ww(View paramView) {
    super(paramView);
    this.b = paramView;
    this.a = paramView.findViewById(la.portifolio_cor_familia);
    this.d = (TextView)paramView.findViewById(la.apli_nome_familia);
    this.c = (TextView)paramView.findViewById(la.portifolio_familia_valor_resgate);
    this.e = (ImageButton)paramView.findViewById(la.app_seta);
    this.f = (CardView)paramView.findViewById(la.card_familia_resgate);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ww.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */