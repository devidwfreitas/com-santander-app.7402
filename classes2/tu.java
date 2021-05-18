import android.content.Context;
import android.graphics.Color;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class tu extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
  public List<sy> a = new ArrayList<sy>();
  
  public Context b;
  
  private acg c;
  
  public tu(List<sy> paramList, acg paramacg, Context paramContext) {
    this.a.addAll(paramList);
    this.c = paramacg;
    this.b = paramContext;
  }
  
  private String a(sy paramsy) {
    String str2 = aat.c(paramsy.e());
    String str1 = str2;
    if (paramsy.e().doubleValue() == 0.0D) {
      str1 = str2;
      if (paramsy.i().b().doubleValue() > 0.0D)
        str1 = "<0,01%"; 
    } 
    return str1;
  }
  
  public tz a(ViewGroup paramViewGroup, int paramInt) {
    return new tz(LayoutInflater.from(paramViewGroup.getContext()).inflate(lc.layout_card_familia, paramViewGroup, false));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    ((tz)paramViewHolder).c.setBackgroundColor(Color.parseColor(((sy)this.a.get(paramInt)).d()));
    ((tz)paramViewHolder).d.setText(((sy)this.a.get(paramInt)).b());
    ((tz)paramViewHolder).e.setText(a(this.a.get(paramInt)));
    ((tz)paramViewHolder).f.setText(aat.b(((sy)this.a.get(paramInt)).i().b()));
    ((tz)paramViewHolder).l.setOnClickListener(new tv(this, paramInt, paramViewHolder));
    ((tz)paramViewHolder).i.setOnClickListener(new tw(this, paramViewHolder, paramInt));
    ((tz)paramViewHolder).h.setOnClickListener(new tx(this, paramViewHolder));
    ((tz)paramViewHolder).g.setOnClickListener(new ty(this, paramViewHolder));
    LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this.b);
    ((tz)paramViewHolder).j.setLayoutManager((RecyclerView.LayoutManager)linearLayoutManager);
    ((tz)paramViewHolder).j.setItemAnimator((RecyclerView.ItemAnimator)new DefaultItemAnimator());
    int i = Color.parseColor(((sy)this.a.get(paramInt)).d());
    String str1 = ((sy)this.a.get(paramInt)).b();
    String str2 = ((sy)this.a.get(paramInt)).a();
    ub ub = new ub(this.b, ((sy)this.a.get(paramInt)).h(), str1, Integer.valueOf(i), str2, this.c);
    ((tz)paramViewHolder).j.setAdapter(ub);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\tu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */