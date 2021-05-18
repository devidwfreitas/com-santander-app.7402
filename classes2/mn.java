import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.Button;
import java.util.ArrayList;
import java.util.List;

public class mn extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
  private List<lx> a;
  
  private Context b;
  
  private Button c;
  
  private Boolean[] d;
  
  private acg e;
  
  private Boolean f;
  
  private List<String> g;
  
  public mn(List<lx> paramList, Context paramContext, acg paramacg, Boolean paramBoolean, Button paramButton) {
    this.a = paramList;
    this.b = paramContext;
    this.c = paramButton;
    this.e = paramacg;
    this.f = paramBoolean;
    this.d = new Boolean[paramList.size()];
    this.g = new ArrayList<String>();
  }
  
  private void b() {
    int i = 0;
    boolean bool;
    for (bool = true; i < this.a.size(); bool = bool1) {
      Boolean bool2;
      try {
        boolean bool3 = ((lx)this.a.get(i)).d().equalsIgnoreCase("S");
        bool2 = Boolean.valueOf(bool3);
      } catch (Exception exception) {
        bool2 = Boolean.valueOf(false);
      } 
      boolean bool1 = bool;
      if (bool2.booleanValue()) {
        bool1 = bool;
        if (!this.d[i].booleanValue())
          bool1 = false; 
      } 
      i++;
    } 
    this.c.setEnabled(bool);
    if (bool)
      this.c.setTextColor(this.b.getResources().getColor(kx.inv_white_three)); 
  }
  
  public List<String> a() {
    return this.g;
  }
  
  public int getItemCount() {
    return this.a.size();
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    paramInt = paramViewHolder.getAdapterPosition();
    this.d[paramInt] = Boolean.valueOf(false);
    mq.a((mq)paramViewHolder).setOnCheckedChangeListener(new mo(this, paramInt));
    String str1 = ((lx)this.a.get(paramInt)).a().replace("{0}", ((lx)this.a.get(paramInt)).b());
    String str2 = ((lx)this.a.get(paramInt)).b();
    if (str2 != null && !str2.isEmpty()) {
      mq.b((mq)paramViewHolder).setText((CharSequence)aat.b(str1, str2));
      mq.b((mq)paramViewHolder).setOnClickListener(new mp(this, paramInt));
      return;
    } 
    mq.b((mq)paramViewHolder).setText(str1);
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt) {
    return new mq(LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layout_termos_condicoes, paramViewGroup, false), null);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */