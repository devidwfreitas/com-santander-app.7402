import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

class ud extends RecyclerView.ViewHolder {
  RelativeLayout a;
  
  TextView b;
  
  TextView c;
  
  View d;
  
  ImageView e;
  
  private ud(View paramView) {
    super(paramView);
    this.a = (RelativeLayout)paramView.findViewById(la.portifolio_produtos_filho_layout);
    this.b = (TextView)paramView.findViewById(la.portifolio_produtos_filho_nome);
    this.c = (TextView)paramView.findViewById(la.portifolio_produtos_filho_valor);
    this.d = paramView.findViewById(la.portifolio_produtos_filho_divider);
    this.e = (ImageView)paramView.findViewById(la.app_seta);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar\\ud.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */