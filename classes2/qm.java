import android.support.v7.widget.CardView;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class qm extends RecyclerView.ViewHolder implements View.OnClickListener {
  private ImageView a;
  
  private ImageView b;
  
  private TextView c;
  
  private TextView d;
  
  private CardView e;
  
  public qm(View paramView) {
    super(paramView);
    this.e = (CardView)paramView.findViewById(la.configurar_investimentos_card_view);
    this.c = (TextView)paramView.findViewById(la.configurar_investimento_recycler_view_titulo_card);
    this.d = (TextView)paramView.findViewById(la.configurar_investimento_recycler_view_conteudo_card);
    this.a = (ImageView)paramView.findViewById(la.configurar_investimentos_recycler_view_icone_card);
    this.b = (ImageView)paramView.findViewById(la.configurar_investimentos_recycler_view_seta_card);
  }
  
  public ImageView a() {
    return this.a;
  }
  
  public void a(CardView paramCardView) {
    this.e = paramCardView;
  }
  
  public void a(ImageView paramImageView) {
    this.a = paramImageView;
  }
  
  public void a(TextView paramTextView) {
    this.c = paramTextView;
  }
  
  public TextView b() {
    return this.c;
  }
  
  public void b(ImageView paramImageView) {
    this.b = paramImageView;
  }
  
  public void b(TextView paramTextView) {
    this.d = paramTextView;
  }
  
  public TextView c() {
    return this.d;
  }
  
  public CardView d() {
    return this.e;
  }
  
  public ImageView e() {
    return this.b;
  }
  
  public void onClick(View paramView) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\qm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */