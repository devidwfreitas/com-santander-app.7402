import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.content.ContextCompat;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.List;

public class ndh extends RecyclerView.Adapter<ndi> {
  private Context a;
  
  private List<String> b;
  
  private View.OnClickListener c;
  
  public ndh(Context paramContext, List<String> paramList, View.OnClickListener paramOnClickListener) {
    this.a = paramContext;
    this.b = paramList;
    this.c = paramOnClickListener;
  }
  
  private Drawable a(String paramString) {
    return paramString.equals(this.a.getResources().getStringArray(2131689473)[0]) ? ContextCompat.getDrawable(this.a, 2130838375) : (paramString.equals(this.a.getResources().getStringArray(2131689473)[1]) ? ContextCompat.getDrawable(this.a, 2130838521) : ContextCompat.getDrawable(this.a, 2130838375));
  }
  
  public ndi a(ViewGroup paramViewGroup, int paramInt) {
    return new ndi(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968776, paramViewGroup, false));
  }
  
  public void a(ndi paramndi, int paramInt) {
    paramndi.a.setText(this.b.get(paramInt));
    paramndi.b.setImageDrawable(a(this.b.get(paramInt)));
    paramndi.itemView.setOnClickListener(this.c);
  }
  
  public int getItemCount() {
    return this.b.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ndh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */