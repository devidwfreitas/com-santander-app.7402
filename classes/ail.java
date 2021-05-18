import android.app.Activity;
import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class ail extends akb {
  private Activity a;
  
  private LinearLayout b;
  
  private LinearLayout c;
  
  private TextView d;
  
  private RecyclerView e;
  
  private RecyclerView.LayoutManager f;
  
  private ajv g;
  
  public ail(Activity paramActivity) {
    super(paramActivity);
    this.a = paramActivity;
    ((TextView)d().findViewById(agg.header_titulo)).setText(agl.ajustar_limites);
    this.b = (LinearLayout)this.a.findViewById(agg.topo_diminuir);
    this.b.setVisibility(0);
    this.d = (TextView)this.a.findViewById(agg.diminuir_text_value);
    this.e = (RecyclerView)this.a.findViewById(agg.main_contracts_list);
    this.e.setHasFixedSize(false);
    this.f = (RecyclerView.LayoutManager)new LinearLayoutManager((Context)this.a);
    this.e.setLayoutManager(this.f);
    aij aij = new aij(this.g, this.a);
    this.e.setAdapter(aij);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ail.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */