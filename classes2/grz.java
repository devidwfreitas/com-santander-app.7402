import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.santander.app.components.view.SantanderCheckedTextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class grz<T> extends BaseAdapter {
  private List<T> a;
  
  private List<T> b;
  
  private Context c;
  
  private LayoutInflater d;
  
  public grz(List<T> paramList, Context paramContext) {
    this.a = paramList;
    this.b = new ArrayList<T>(paramList);
    this.c = paramContext;
  }
  
  public void a(String paramString) {
    paramString = paramString.toLowerCase(Locale.getDefault());
    this.a.clear();
    if (paramString.length() == 0) {
      this.a.addAll(this.b);
    } else {
      Iterator<T> iterator = this.b.iterator();
      while (true) {
        if (iterator.hasNext()) {
          T t = iterator.next();
          if (t.toString().toLowerCase(Locale.getDefault()).contains(paramString))
            this.a.add(t); 
          continue;
        } 
        notifyDataSetChanged();
        return;
      } 
    } 
    notifyDataSetChanged();
  }
  
  public int getCount() {
    return this.a.size();
  }
  
  public T getItem(int paramInt) {
    return this.a.get(paramInt);
  }
  
  public long getItemId(int paramInt) {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    T t = this.a.get(paramInt);
    if (paramView == null) {
      paramView = LayoutInflater.from(this.c).inflate(2130968857, paramViewGroup, false);
      SantanderCheckedTextView santanderCheckedTextView1 = (SantanderCheckedTextView)paramView.findViewById(2131756472);
      paramView.setTag(new gsa(this, santanderCheckedTextView1));
      santanderCheckedTextView1.setText(t.toString());
      return paramView;
    } 
    SantanderCheckedTextView santanderCheckedTextView = gsa.a((gsa)paramView.getTag());
    santanderCheckedTextView.setText(t.toString());
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\grz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */