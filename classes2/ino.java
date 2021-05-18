import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;

public class ino extends BaseAdapter {
  private ArrayList<inx> a;
  
  private Context b;
  
  private LayoutInflater c;
  
  public ino(ArrayList<inx> paramArrayList, Context paramContext) {
    this.a = paramArrayList;
    this.b = paramContext;
    this.c = LayoutInflater.from(paramContext);
  }
  
  public int getCount() {
    return this.a.size();
  }
  
  public Object getItem(int paramInt) {
    return this.a.get(paramInt);
  }
  
  public long getItemId(int paramInt) {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    Log.d("Santander", "adapter getview");
    paramView = this.c.inflate(2130969112, null);
    TextView textView1 = (TextView)paramView.findViewById(2131757641);
    TextView textView2 = (TextView)paramView.findViewById(2131757639);
    TextView textView3 = (TextView)paramView.findViewById(2131757637);
    Log.d("Santander", "Findview");
    textView1.setText(((inx)this.a.get(paramInt)).b());
    textView2.setText(((inx)this.a.get(paramInt)).e() + " - " + ((inx)this.a.get(paramInt)).f());
    textView3.setText(((inx)this.a.get(paramInt)).c() + " - " + ((inx)this.a.get(paramInt)).d());
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ino.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */