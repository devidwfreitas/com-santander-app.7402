import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class llm extends RecyclerView.Adapter<llo> {
  private List<kql> a;
  
  private llp b;
  
  public llm() {}
  
  public llm(List<kql> paramList) {
    this.a = paramList;
  }
  
  public int a() {
    return this.a.size() - 1;
  }
  
  public llo a(ViewGroup paramViewGroup, int paramInt) {
    return new llo(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969453, paramViewGroup, false));
  }
  
  public void a(llo paramllo, int paramInt) {
    kql kql = this.a.get(paramllo.getAdapterPosition());
    paramllo.c.setOnClickListener(null);
    if (paramllo.getAdapterPosition() == a()) {
      paramllo.b.setVisibility(4);
    } else {
      paramllo.b.setVisibility(0);
    } 
    paramllo.a.setText("AG: " + kql.a().c() + " C/C " + kql.a().b());
    paramllo.c.setOnClickListener(new lln(this, kql));
  }
  
  public void a(llp paramllp) {
    this.b = paramllp;
  }
  
  public int getItemCount() {
    return (this.a != null) ? this.a.size() : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\llm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */