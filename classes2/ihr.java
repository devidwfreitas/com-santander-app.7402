import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class ihr extends RecyclerView.Adapter<iht> {
  private final Context a;
  
  private List<igj> b;
  
  private View.OnClickListener c;
  
  public ihr(List<igj> paramList, View.OnClickListener paramOnClickListener, Context paramContext) {
    this.b = paramList;
    this.c = paramOnClickListener;
    this.a = paramContext;
  }
  
  public iht a(ViewGroup paramViewGroup, int paramInt) {
    return new iht(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968771, paramViewGroup, false));
  }
  
  public void a(iht paramiht, int paramInt) {
    igj igj = this.b.get(paramInt);
    paramiht.a.setText(igj.c());
    if (igj.a()) {
      paramiht.b.setImageDrawable(this.a.getResources().getDrawable(2130839010));
      igj.a(false);
    } else {
      paramiht.b.setImageDrawable(this.a.getResources().getDrawable(2130839015));
    } 
    paramiht.itemView.setOnClickListener(new ihs(this, igj, paramiht));
  }
  
  public int getItemCount() {
    return this.b.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ihr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */