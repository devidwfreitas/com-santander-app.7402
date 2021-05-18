import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;

class ry extends RecyclerView.ViewHolder {
  private TextView a;
  
  private TextView b;
  
  private ry(View paramView) {
    super(paramView);
    this.a = (TextView)paramView.findViewById(la.portifolio_produtos_filho_nome);
    this.b = (TextView)paramView.findViewById(la.portifolio_produtos_filho_valor);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ry.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */