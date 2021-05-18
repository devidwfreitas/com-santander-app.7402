import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class yc extends RecyclerView.Adapter<ye> {
  private List<yb> a = new ArrayList<yb>();
  
  private ack b;
  
  public yc(List<yb> paramList, Context paramContext) {
    this.a.addAll(paramList);
    this.b = (ack)paramContext;
  }
  
  public ye a(ViewGroup paramViewGroup, int paramInt) {
    return new ye(LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layout_lista_termos_aceite, paramViewGroup, false), null);
  }
  
  public void a(ye paramye, int paramInt) {
    paramye.c = ((yb)this.a.get(paramye.getAdapterPosition())).a();
    paramye.b.setText(paramye.c.e());
    paramye.a.setOnClickListener(new yd(this, paramye));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\yc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */