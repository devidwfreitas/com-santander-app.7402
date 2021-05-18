import android.content.Context;
import android.graphics.Color;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class wu extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
  public List<sy> a = new ArrayList<sy>();
  
  public Context b;
  
  private acg c;
  
  public wu(List<sy> paramList, acg paramacg, Context paramContext) {
    this.a.addAll(paramList);
    this.c = paramacg;
    this.b = paramContext;
  }
  
  public int getItemCount() {
    return this.a.size();
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    ((ww)paramViewHolder).a.setBackgroundColor(Color.parseColor(((sy)this.a.get(paramInt)).d()));
    ((ww)paramViewHolder).d.setText(((sy)this.a.get(paramInt)).b());
    ((ww)paramViewHolder).c.setText(aat.b(((sy)this.a.get(paramInt)).i().a()));
    ((ww)paramViewHolder).f.setOnClickListener(new wv(this, paramInt));
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt) {
    return new ww(LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layout_card_resgate_familia, paramViewGroup, false));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\wu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */