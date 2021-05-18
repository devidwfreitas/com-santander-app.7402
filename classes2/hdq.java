import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.text.NumberFormat;
import java.util.ArrayList;

public class hdq extends BaseAdapter {
  private ArrayList<heq> a;
  
  private Context b;
  
  private LayoutInflater c;
  
  public hdq(ArrayList<heq> paramArrayList, Context paramContext) {
    this.a = paramArrayList;
    this.b = paramContext;
    this.c = LayoutInflater.from(paramContext);
  }
  
  private String a(String paramString) {
    double d = Double.parseDouble(paramString.replaceAll("[R$,.]", ""));
    paramString = NumberFormat.getCurrencyInstance().format(d / 100.0D).substring(2);
    return "R$ " + paramString;
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
    paramView = this.c.inflate(2130969002, null);
    TextView textView1 = (TextView)paramView.findViewById(2131757068);
    TextView textView2 = (TextView)paramView.findViewById(2131757069);
    Log.d("Santander", "Findview");
    textView1.setText(naq.c(((heq)this.a.get(paramInt)).d(), ((heq)this.a.get(paramInt)).g()));
    textView2.setText(a(((heq)this.a.get(paramInt)).s()));
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hdq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */