import android.support.v7.widget.RecyclerView;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class geg extends RecyclerView.Adapter<gei> {
  private List<gec> a;
  
  public geg(List<gec> paramList) {
    this.a = paramList;
  }
  
  public gei a(ViewGroup paramViewGroup, int paramInt) {
    return new gei(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969275, paramViewGroup, false));
  }
  
  public void a(gei paramgei, int paramInt) {
    gec gec = this.a.get(paramInt);
    gei.a(paramgei).setText(gec.a());
    gei.b(paramgei).setText((CharSequence)Html.fromHtml(gec.b()));
    paramgei.itemView.setOnClickListener(new geh(this, gec));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\geg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */