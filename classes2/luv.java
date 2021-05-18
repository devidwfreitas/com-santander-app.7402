import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.support.v7.widget.RecyclerView;
import android.text.SpannableStringBuilder;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class luv extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
  private static int i = 0;
  
  private static int j = 1;
  
  private int a = 200;
  
  private int b = 400;
  
  private RecyclerView c;
  
  private List<kvy> d;
  
  private int e = -1;
  
  private int f = -1;
  
  private boolean g = true;
  
  private lve h;
  
  public luv(RecyclerView paramRecyclerView, List<kvy> paramList) {
    this.c = paramRecyclerView;
    this.d = paramList;
  }
  
  private String a(List<kux> paramList) {
    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
    for (int i = 0; i < paramList.size(); i++) {
      int j;
      spannableStringBuilder.append(((kux)paramList.get(i)).a());
      if (paramList.size() > 0) {
        j = paramList.size() - 1;
      } else {
        j = paramList.size();
      } 
      if (i < j)
        spannableStringBuilder.append("\n"); 
    } 
    return spannableStringBuilder.toString();
  }
  
  public void a(lve paramlve) {
    this.h = paramlve;
  }
  
  public int getItemCount() {
    boolean bool = false;
    int i = 0;
    if (this.g) {
      if (this.d != null)
        i = this.d.size(); 
      return ++i;
    } 
    i = bool;
    return (this.d != null) ? this.d.size() : i;
  }
  
  public int getItemViewType(int paramInt) {
    if (this.g) {
      int i;
      if (getItemCount() > 0) {
        i = getItemCount() - 1;
      } else {
        i = getItemCount();
      } 
      if (paramInt == i)
        return i; 
    } 
    return j;
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    luw luw;
    if (paramViewHolder instanceof lvd && getItemViewType(paramViewHolder.getAdapterPosition()) == j) {
      lvd lvd = (lvd)paramViewHolder;
      kvy kvy = this.d.get(lvd.getAdapterPosition());
      lvd.a(lvd).setOnClickListener(null);
      lvd.b(lvd).setOnExpansionUpdateListener(null);
      lvd.c(lvd).setText(kvy.d());
      lvd.d(lvd).setText(kvy.e());
      lvd.e(lvd).setImageResource(kvy.c());
      if (this.f == paramViewHolder.getAdapterPosition()) {
        lvd.b(lvd).setDuration(this.a);
        lvd.b(lvd).c(true);
        lvd.f(lvd).setRotationX(180.0F);
      } else if (this.e == lvd.getAdapterPosition()) {
        lvd.b(lvd).b(false);
        lvd.f(lvd).setRotationX(0.0F);
      } else {
        if (lvd.b(lvd).a())
          lvd.b(lvd).c(false); 
        lvd.f(lvd).setRotationX(180.0F);
      } 
      if (kvy.f() != null && kvy.f().size() > 0) {
        String str = a(kvy.f());
        lvd.g(lvd).setText(str);
        lvd.f(lvd).setColorFilter((ColorFilter)new PorterDuffColorFilter(this.c.getResources().getColor(2131624042), PorterDuff.Mode.SRC_IN));
        lvd.f(lvd).setVisibility(0);
        luw = new luw(this, lvd, paramViewHolder);
        lvd.f(lvd).setOnClickListener(luw);
        lvd.h(lvd).setOnClickListener(luw);
      } else {
        lvd.f(lvd).setVisibility(8);
        lvd.f(lvd).setOnClickListener(null);
        lvd.h(lvd).setOnClickListener(null);
        lvd.g(lvd).setText("");
      } 
      lvd.a(lvd).setOnClickListener(new lva(this, kvy));
      return;
    } 
    if (luw instanceof lvc && getItemViewType(luw.getAdapterPosition()) == i) {
      lvc.a((lvc)luw).setOnClickListener(new lvb(this));
      return;
    } 
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt) {
    return (RecyclerView.ViewHolder)((paramInt == i) ? new lvc(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969302, paramViewGroup, false)) : new lvd(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969449, paramViewGroup, false)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\luv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */