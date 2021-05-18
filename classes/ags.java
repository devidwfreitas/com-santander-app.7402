import android.app.Activity;
import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.widget.Button;
import android.widget.TextView;
import java.util.List;

public class ags extends akb {
  private RecyclerView a;
  
  private agp b;
  
  private List<ajn> c;
  
  private Activity d;
  
  private RecyclerView.LayoutManager e;
  
  private String f;
  
  private Button g;
  
  public ags(Activity paramActivity, List<ajn> paramList, String paramString) {
    super(paramActivity);
    this.d = paramActivity;
    this.c = paramList;
    this.f = paramString;
    a();
  }
  
  public void a() {
    ((TextView)this.d.findViewById(agg.header_titulo)).setText(this.f);
    this.g = (Button)this.d.findViewById(agg.conheca_oferta_button);
    this.g.setOnClickListener(new agt(this));
    this.a = (RecyclerView)this.d.findViewById(agg.contracts_recyclerview);
    this.a.setHasFixedSize(true);
    this.e = (RecyclerView.LayoutManager)new LinearLayoutManager((Context)this.d);
    this.a.setLayoutManager(this.e);
    this.b = new agp(this.c, (Context)this.d);
    this.a.setAdapter(this.b);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ags.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */