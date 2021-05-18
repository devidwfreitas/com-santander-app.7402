import android.support.v7.widget.RecyclerView;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class jii extends RecyclerView.Adapter<jij> {
  private List<jdz> a;
  
  private View.OnClickListener b;
  
  public jii(List<jdz> paramList) {
    this.a = paramList;
    this.b = this.b;
  }
  
  public jij a(ViewGroup paramViewGroup, int paramInt) {
    return new jij(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968772, paramViewGroup, false));
  }
  
  public void a(jij paramjij, int paramInt) {
    jdz jdz = this.a.get(paramInt);
    String str2 = "<b> " + jdz.c() + " </b> ";
    String str1 = str2 + ": " + jdz.b();
    jij.a(paramjij).setText((CharSequence)Html.fromHtml(str1));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jii.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */