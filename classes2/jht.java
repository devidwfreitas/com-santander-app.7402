import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class jht extends RecyclerView.Adapter<jhv> {
  private List<jdz> a;
  
  private View.OnClickListener b;
  
  public jht(List<jdz> paramList, View.OnClickListener paramOnClickListener) {
    this.a = paramList;
    this.b = paramOnClickListener;
  }
  
  public jhv a(ViewGroup paramViewGroup, int paramInt) {
    return new jhv(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968785, paramViewGroup, false));
  }
  
  public void a(jhv paramjhv, int paramInt) {
    jdz jdz = this.a.get(paramInt);
    jhv.a(paramjhv).setText(jdz.c());
    jhv.b(paramjhv).setText(jdz.a());
    if (jdz.b() != null)
      jhv.c(paramjhv).setVisibility(0); 
    jhv.c(paramjhv).setOnClickListener(new jhu(this, paramjhv, jdz));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jht.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */