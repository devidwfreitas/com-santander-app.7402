import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;

public class sr extends RecyclerView.ViewHolder {
  ace a;
  
  View b;
  
  View c;
  
  TextView d;
  
  TextView e;
  
  ProgressBar f;
  
  ImageView g;
  
  public sr(sp paramsp, View paramView) {
    super(paramView);
    this.b = paramView.findViewById(la.efe_divider);
    this.d = (TextView)paramView.findViewById(la.efe_nome_produto);
    this.e = (TextView)paramView.findViewById(la.efe_contrato);
    this.f = (ProgressBar)paramView.findViewById(la.efe_progress);
    this.g = (ImageView)paramView.findViewById(la.efe_icon);
    this.c = paramView.findViewById(la.efe_cor_familia);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\sr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */