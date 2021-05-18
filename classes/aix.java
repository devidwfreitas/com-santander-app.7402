import android.app.Activity;
import android.content.Context;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

public class aix extends akb {
  private Activity a;
  
  private ajw b;
  
  private List<ajw> c;
  
  private RecyclerView d;
  
  private RecyclerView.LayoutManager e;
  
  public aix(Activity paramActivity, ajw paramajw) {
    super(paramActivity);
    this.a = paramActivity;
    this.c = new ArrayList<ajw>();
    this.c.add(paramajw);
  }
  
  public aix(Activity paramActivity, List<ajw> paramList) {
    super(paramActivity);
    this.a = paramActivity;
    this.c = paramList;
  }
  
  public void a() {
    ((TextView)d().findViewById(agg.header_titulo)).setText(agl.revisao_header);
    this.d = (RecyclerView)this.a.findViewById(agg.revisao_list);
    this.d.setHasFixedSize(false);
    this.e = (RecyclerView.LayoutManager)new LinearLayoutManager((Context)this.a);
    this.d.setLayoutManager(this.e);
    aiv aiv = new aiv();
    this.d.setAdapter(aiv);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aix.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */