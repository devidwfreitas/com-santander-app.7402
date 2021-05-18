import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class ida extends BaseAdapter {
  private Context a;
  
  private List<ibp> b;
  
  public ida(Context paramContext, ibo paramibo) {
    this.a = paramContext;
    ArrayList<ibp> arrayList = new ArrayList();
    for (ibp ibp : paramibo.f()) {
      if (ibp.b().equalsIgnoreCase("s"))
        arrayList.add(ibp); 
    } 
    Collections.sort(arrayList);
    this.b = arrayList;
  }
  
  public int getCount() {
    return this.b.size();
  }
  
  public Object getItem(int paramInt) {
    return this.b.get(paramInt);
  }
  
  public long getItemId(int paramInt) {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    if (paramView == null) {
      paramView = LayoutInflater.from(this.a).inflate(2130969259, paramViewGroup, false);
      TextView textView4 = (TextView)paramView.findViewById(2131758622);
      TextView textView3 = (TextView)paramView.findViewById(2131758623);
      paramView.setTag(new idb(this, textView4, textView3));
      textView4.setText(String.valueOf(((ibp)this.b.get(paramInt)).c()) + " .");
      textView3.setText(((ibp)this.b.get(paramInt)).d());
      return paramView;
    } 
    idb idb = (idb)paramView.getTag();
    TextView textView2 = idb.a;
    TextView textView1 = idb.b;
    textView2.setText(String.valueOf(((ibp)this.b.get(paramInt)).c()) + " .");
    textView1.setText(((ibp)this.b.get(paramInt)).d());
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ida.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */