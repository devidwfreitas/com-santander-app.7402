import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

public class lib extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
  public static final int a = 0;
  
  public static final int b = 1;
  
  private int c = 0;
  
  private int d = 0;
  
  private int e = 0;
  
  private int f = 0;
  
  private int g = 0;
  
  private int h = 0;
  
  private lif i;
  
  private List<Object> j = new ArrayList();
  
  public lib(List<Object> paramList) {
    this.j = paramList;
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6) {
    this.c = paramInt1;
    this.d = paramInt2;
    this.e = paramInt3;
    this.f = paramInt4;
    this.h = paramInt5;
    this.g = paramInt6;
  }
  
  public void a(lif paramlif) {
    this.i = paramlif;
  }
  
  public int getItemCount() {
    return this.j.size();
  }
  
  public int getItemViewType(int paramInt) {
    return (this.j.get(paramInt) instanceof String) ? 0 : 1;
  }
  
  public void onBindViewHolder(RecyclerView.ViewHolder paramViewHolder, int paramInt) {
    Object object = this.j.get(paramViewHolder.getAdapterPosition());
    if (object instanceof String && paramViewHolder instanceof lid) {
      object = object;
      paramViewHolder = paramViewHolder;
      if (object.equalsIgnoreCase("a")) {
        ((lid)paramViewHolder).b.setVisibility(8);
        ((lid)paramViewHolder).a.setText(((lid)paramViewHolder).itemView.getResources().getString(2131296537));
        return;
      } 
      if (object.equalsIgnoreCase("c")) {
        ((lid)paramViewHolder).b.setVisibility(0);
        ((lid)paramViewHolder).b.setText(((lid)paramViewHolder).itemView.getResources().getString(2131297651));
        ((lid)paramViewHolder).a.setText(((lid)paramViewHolder).itemView.getResources().getString(2131298247));
        return;
      } 
      return;
    } 
    if (paramViewHolder instanceof lie) {
      boolean bool1;
      boolean bool2;
      paramViewHolder = paramViewHolder;
      lie.a((lie)paramViewHolder).setOnClickListener(null);
      if (object instanceof kny) {
        lie.a((lie)paramViewHolder).setVisibility(8);
        bool2 = this.f;
        bool1 = this.d;
        paramInt = this.h;
        object = object;
        ((lie)paramViewHolder).f.setText(mhj.p(object.b()));
        ((lie)paramViewHolder).g.setText(mhj.a(Double.valueOf(Double.parseDouble(object.a()))));
        ((lie)paramViewHolder).c.setImageResource(2130838510);
        ((lie)paramViewHolder).g.setVisibility(0);
      } else if (object instanceof kps) {
        object = object;
        lie.a((lie)paramViewHolder).setVisibility(0);
        lie.a((lie)paramViewHolder).setOnClickListener(new lic(this, (kps)object));
        bool2 = this.e;
        bool1 = this.c;
        paramInt = this.g;
        ((lie)paramViewHolder).f.setText(mhj.p(object.d()));
        ((lie)paramViewHolder).g.setText("");
        ((lie)paramViewHolder).c.setImageResource(2130838330);
        ((lie)paramViewHolder).g.setVisibility(8);
      } else {
        paramInt = 0;
        bool1 = false;
        bool2 = false;
      } 
      if (paramInt == 1) {
        ((lie)paramViewHolder).b.setVisibility(4);
        ((lie)paramViewHolder).d.setVisibility(4);
        return;
      } 
      if (paramViewHolder.getAdapterPosition() == bool1) {
        ((lie)paramViewHolder).b.setVisibility(4);
        ((lie)paramViewHolder).d.setVisibility(0);
        return;
      } 
      if (paramViewHolder.getAdapterPosition() == bool2) {
        ((lie)paramViewHolder).b.setVisibility(0);
        ((lie)paramViewHolder).d.setVisibility(4);
        return;
      } 
      ((lie)paramViewHolder).b.setVisibility(0);
      ((lie)paramViewHolder).d.setVisibility(0);
      return;
    } 
  }
  
  public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup paramViewGroup, int paramInt) {
    return (RecyclerView.ViewHolder)((paramInt == 0) ? new lid(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969443, paramViewGroup, false)) : new lie(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969429, paramViewGroup, false)));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lib.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */