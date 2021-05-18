import android.graphics.Color;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class jkp extends RecyclerView.Adapter<jkr> {
  private List<jdb> a;
  
  private View.OnClickListener b;
  
  public jkp(List<jdb> paramList, View.OnClickListener paramOnClickListener) {
    this.a = paramList;
    this.b = paramOnClickListener;
  }
  
  public jkr a(ViewGroup paramViewGroup, int paramInt) {
    return new jkr(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968786, paramViewGroup, false));
  }
  
  public void a(jkr paramjkr, int paramInt) {
    jdb jdb = this.a.get(paramInt);
    jkr.a(paramjkr).setText(jdb.e());
    if (!jdb.g().equals("0"))
      jkr.b(paramjkr).setText(naj.f(jdb.g())); 
    if (jdb.d() != null)
      jkr.c(paramjkr).setBackgroundColor(Color.parseColor("#" + jdb.d())); 
    jkr.d(paramjkr).setVisibility(0);
    paramjkr.itemView.setOnClickListener(new jkq(this, paramjkr, jdb));
  }
  
  public int getItemCount() {
    return (this.a != null) ? this.a.size() : 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jkp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */