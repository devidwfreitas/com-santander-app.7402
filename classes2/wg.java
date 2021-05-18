import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class wg extends RecyclerView.ViewHolder {
  private View a;
  
  private TextView b;
  
  private TextView c;
  
  private TextView d;
  
  private TextView e;
  
  private TextView f;
  
  private ImageView g;
  
  public wg(View paramView) {
    super(paramView);
    this.a = paramView.findViewById(la.recomendacao_card_view_color);
    this.b = (TextView)paramView.findViewById(la.recomendacao_card_text_view_produto);
    this.c = (TextView)paramView.findViewById(la.recomendacao_card_text_view_familia_produtos);
    this.e = (TextView)paramView.findViewById(la.recomendacao_card_text_view_risco);
    this.d = (TextView)paramView.findViewById(la.recomendacao_card_text_view_percentual);
    this.f = (TextView)paramView.findViewById(la.recomendacao_card_text_view_valor_aplicado);
    this.g = (ImageView)paramView.findViewById(la.recomendacao_card_image_view_risco);
  }
  
  public View a() {
    return this.a;
  }
  
  public void a(View paramView) {
    this.a = paramView;
  }
  
  public void a(ImageView paramImageView) {
    this.g = paramImageView;
  }
  
  public void a(TextView paramTextView) {
    this.b = paramTextView;
  }
  
  public TextView b() {
    return this.b;
  }
  
  public void b(TextView paramTextView) {
    this.c = paramTextView;
  }
  
  public TextView c() {
    return this.c;
  }
  
  public void c(TextView paramTextView) {
    this.d = paramTextView;
  }
  
  public TextView d() {
    return this.d;
  }
  
  public void d(TextView paramTextView) {
    this.e = paramTextView;
  }
  
  public TextView e() {
    return this.e;
  }
  
  public void e(TextView paramTextView) {
    this.f = paramTextView;
  }
  
  public TextView f() {
    return this.f;
  }
  
  public ImageView g() {
    return this.g;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\wg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */