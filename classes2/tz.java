import android.support.v7.widget.CardView;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;

public class tz extends RecyclerView.ViewHolder {
  public CardView a;
  
  public TextView b;
  
  public View c;
  
  public TextView d;
  
  public TextView e;
  
  public TextView f;
  
  public ImageButton g;
  
  public ImageButton h;
  
  public TextView i;
  
  public RecyclerView j;
  
  public View k;
  
  public ImageView l;
  
  public View m;
  
  public tz(View paramView) {
    super(paramView);
    this.m = paramView;
    this.b = (TextView)paramView.findViewById(la.portifolio_permite_aporte);
    this.c = paramView.findViewById(la.portifolio_cor_familia);
    this.d = (TextView)paramView.findViewById(la.apli_previdecia_nome_aplicacao);
    this.e = (TextView)paramView.findViewById(la.apli_previdecia_check_aplicacao);
    this.f = (TextView)paramView.findViewById(la.portifolio_familia_valor_investido);
    this.g = (ImageButton)paramView.findViewById(la.portifolio_familia_ver_produtos_img);
    this.h = (ImageButton)paramView.findViewById(la.portifolio_familia_ver_produtos_img_inver);
    this.i = (TextView)paramView.findViewById(la.portifolio_familia_ver_produtos);
    this.j = (RecyclerView)paramView.findViewById(la.portifolio_familia_lista_produtos);
    this.k = paramView.findViewById(la.familia_name_container);
    this.l = (ImageView)paramView.findViewById(la.im_info_familia);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\tz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */