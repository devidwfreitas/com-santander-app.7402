import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import java.util.List;

public class amy extends amr<anb, amu> {
  public static final int a = 0;
  
  public static final int b = 1;
  
  public static final int c = 2;
  
  public amy(@NonNull List<anb> paramList) {
    super(paramList);
  }
  
  public amu a(ViewGroup paramViewGroup, int paramInt) {
    return (amu)((paramInt == 1) ? new anc(paramViewGroup) : ((paramInt == 2) ? new amw(paramViewGroup) : new amz(paramViewGroup)));
  }
  
  public void a(amu paramamu, int paramInt) {
    int i = getItemViewType(paramInt);
    if (i == 1) {
      and and = (and)a(paramInt);
      ((anc)paramamu).a(and);
      return;
    } 
    if (i == 2) {
      amx amx = (amx)a(paramInt);
      ((amw)paramamu).a(amx);
      return;
    } 
  }
  
  public int getItemViewType(int paramInt) {
    return (a(paramInt) instanceof and) ? 1 : ((a(paramInt) instanceof amx) ? 2 : 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\amy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */