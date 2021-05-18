import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.List;

public class hnw extends RecyclerView.Adapter<hny> {
  private List<hnx> a = new ArrayList<hnx>();
  
  public hny a(ViewGroup paramViewGroup, int paramInt) {
    return new hny(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968795, paramViewGroup, false));
  }
  
  public void a(hny paramhny, int paramInt) {
    int i = 2130838444;
    hnx hnx = this.a.get(paramInt);
    paramhny.a.setText(hnx.a);
    ImageView imageView2 = paramhny.b;
    if (hnx.b) {
      paramInt = 2130838444;
    } else {
      paramInt = 2130838443;
    } 
    imageView2.setImageResource(paramInt);
    ImageView imageView1 = paramhny.c;
    if (hnx.c) {
      paramInt = i;
    } else {
      paramInt = 2130838443;
    } 
    imageView1.setImageResource(paramInt);
  }
  
  public void a(String paramString, boolean paramBoolean1, boolean paramBoolean2) {
    hnx hnx = new hnx(paramString, paramBoolean1, paramBoolean2);
    this.a.add(hnx);
    notifyDataSetChanged();
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hnw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */