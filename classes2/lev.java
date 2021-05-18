import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.util.List;

public class lev extends RecyclerView.Adapter<lew> {
  private List<kqb> a;
  
  public lev(List<kqb> paramList) {
    this.a = paramList;
  }
  
  private void a(String paramString, lew paramlew) {
    byte b = -1;
    switch (paramString.hashCode()) {
      default:
        switch (b) {
          default:
            return;
          case 0:
            lew.f(paramlew).setImageResource(2130838437);
            return;
          case 1:
            lew.f(paramlew).setImageResource(2130838580);
            return;
          case 2:
            break;
        } 
        break;
      case -175893933:
        if (paramString.equals("Danos elétricos"))
          b = 0; 
      case 71739265:
        if (paramString.equals("Desastres da natureza"))
          b = 1; 
      case 271059016:
        if (paramString.equals("Incêndio"))
          b = 2; 
    } 
    lew.f(paramlew).setImageResource(2130838490);
  }
  
  public lew a(ViewGroup paramViewGroup, int paramInt) {
    return new lew(this, LayoutInflater.from(paramViewGroup.getContext()).inflate(2130969120, paramViewGroup, false));
  }
  
  public void a(lew paramlew, int paramInt) {
    kqb kqb = this.a.get(paramInt);
    if (paramlew.getAdapterPosition() == 0)
      lew.a(paramlew).setVisibility(8); 
    if (paramlew.getAdapterPosition() == getItemCount() - 1)
      lew.b(paramlew).setVisibility(8); 
    a(kqb.a(), paramlew);
    lew.c(paramlew).setText(kqb.a());
    lew.d(paramlew).setText(kqb.b());
    lew.e(paramlew).setText(kqb.c());
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lev.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */