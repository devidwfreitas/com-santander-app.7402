import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class mpf extends RecyclerView.Adapter<mpi> {
  private List<mld> a;
  
  private List<mld> b;
  
  private View.OnClickListener c;
  
  public mpf(List<mld> paramList, View.OnClickListener paramOnClickListener) {
    Collections.sort(paramList, new mpg(this));
    this.a = paramList;
    this.b = new ArrayList<mld>(paramList);
    this.c = paramOnClickListener;
  }
  
  public mpi a(ViewGroup paramViewGroup, int paramInt) {
    return new mpi(LayoutInflater.from(paramViewGroup.getContext()).inflate(2130968790, paramViewGroup, false));
  }
  
  public void a(String paramString) {
    paramString = paramString.toLowerCase(Locale.getDefault());
    this.a.clear();
    if (paramString.length() == 0) {
      this.a.addAll(this.b);
    } else {
      Iterator<mld> iterator = this.b.iterator();
      while (true) {
        if (iterator.hasNext()) {
          mld mld = iterator.next();
          if (mld.e().toLowerCase(Locale.getDefault()).contains(paramString))
            this.a.add(mld); 
          continue;
        } 
        notifyDataSetChanged();
        return;
      } 
    } 
    notifyDataSetChanged();
  }
  
  public void a(mpi parammpi, int paramInt) {
    mld mld = this.a.get(paramInt);
    parammpi.a.setText(mld.e());
    if (naq.l(mld.g()) == 33.0D) {
      parammpi.b.setText("CONTA SANTANDER");
      parammpi.c.setText("ag: " + mld.h() + " - conta: " + naq.h(mld.k()));
    } else {
      parammpi.b.setText(mld.i());
      parammpi.c.setText("ag: " + mld.h() + " - conta: " + mld.k());
    } 
    ImageView imageView = parammpi.d;
    if ("S".equalsIgnoreCase(mld.b())) {
      paramInt = 2130838765;
    } else {
      paramInt = 2130838767;
    } 
    imageView.setImageResource(paramInt);
    parammpi.itemView.setOnClickListener(new mph(this, parammpi, mld));
  }
  
  public int getItemCount() {
    return this.a.size();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mpf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */