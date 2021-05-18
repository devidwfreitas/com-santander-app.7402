import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import java.util.List;

public class hue extends RecyclerView.Adapter<hug> {
  private static final int a = 1;
  
  private static final int b = 2;
  
  private static final int c = 3;
  
  private List<huk> d;
  
  private boolean e;
  
  public hue(List<huk> paramList) {
    this(paramList, false);
  }
  
  public hue(List<huk> paramList, boolean paramBoolean) {
    this.d = paramList;
    this.e = paramBoolean;
  }
  
  public hug a(ViewGroup paramViewGroup, int paramInt) {
    return (hug)((paramInt == 1) ? new hui(paramViewGroup) : ((paramInt == 2) ? new huj(paramViewGroup) : new huh(paramViewGroup)));
  }
  
  public void a(hug paramhug, int paramInt) {
    int j = getItemViewType(paramInt);
    if (j == 1) {
      paramhug.a(null);
      return;
    } 
    int i = paramInt;
    if (j == 2)
      i = paramInt - 1; 
    paramhug.a(this.d.get(i));
  }
  
  public boolean a() {
    return this.e;
  }
  
  public int getItemCount() {
    int j = this.d.size();
    int i = j;
    if (!this.e)
      i = j + 1; 
    return i;
  }
  
  public int getItemViewType(int paramInt) {
    return this.e ? 3 : ((paramInt == 0) ? 1 : 2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hue.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */