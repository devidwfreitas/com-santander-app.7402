import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

class ub extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
  private ack a;
  
  private List<to> b;
  
  private String c;
  
  private Integer d;
  
  private String e;
  
  private acg f;
  
  ub(Context paramContext, List<to> paramList, String paramString1, Integer paramInteger, String paramString2, acg paramacg) {
    this.a = (ack)paramContext;
    this.b = paramList;
    this.c = paramString1;
    this.d = paramInteger;
    this.e = paramString2;
    this.f = paramacg;
  }
  
  public ud a(ViewGroup paramViewGroup, int paramInt) {
    return new ud(LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layout_card_produtos_children, paramViewGroup, false), null);
  }
  
  public int getItemCount() {
    return this.b.size();
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    ((ud)paramViewHolder).a.setOnClickListener(new uc(this, paramInt));
    ((ud)paramViewHolder).b.setText(((to)this.b.get(paramInt)).k());
    ((ud)paramViewHolder).c.setText(aat.a(((to)this.b.get(paramInt)).s().b()));
    ((ud)paramViewHolder).e.setVisibility(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar\\ub.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */