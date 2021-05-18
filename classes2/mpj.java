import android.os.Build;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class mpj extends RecyclerView.Adapter<mpl> {
  private List<mkq> a;
  
  private List<mkq> b;
  
  private View.OnClickListener c;
  
  public mpj(List<mkq> paramList, View.OnClickListener paramOnClickListener) {
    this.a = paramList;
    this.b = new ArrayList<mkq>(paramList);
    this.c = paramOnClickListener;
  }
  
  public mpl a(ViewGroup paramViewGroup, int paramInt) {
    return new mpl(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968788, paramViewGroup, false));
  }
  
  public void a(String paramString) {
    paramString = paramString.toLowerCase(Locale.getDefault());
    this.a.clear();
    if (paramString.length() == 0) {
      this.a.addAll(this.b);
    } else {
      Iterator<mkq> iterator = this.b.iterator();
      while (true) {
        if (iterator.hasNext()) {
          mkq mkq = iterator.next();
          if (mkq.e().toLowerCase(Locale.getDefault()).contains(paramString))
            this.a.add(mkq); 
          continue;
        } 
        notifyDataSetChanged();
        return;
      } 
    } 
    notifyDataSetChanged();
  }
  
  public void a(mpl parammpl, int paramInt) {
    mkq mkq = this.a.get(paramInt);
    parammpl.a.setText(mkq.d() + " - " + mkq.e());
    if (Build.VERSION.SDK_INT < 21)
      parammpl.b.setVisibility(8); 
    parammpl.itemView.setOnClickListener(new mpk(this, parammpl, mkq));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mpj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */