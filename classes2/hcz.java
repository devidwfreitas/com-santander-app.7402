import android.content.Context;
import android.database.DataSetObserver;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;

public class hcz extends BaseAdapter {
  private ArrayList<heq> a;
  
  private Context b;
  
  private LayoutInflater c;
  
  private ArrayList<DataSetObserver> d = new ArrayList<DataSetObserver>();
  
  public hcz(ArrayList<heq> paramArrayList, Context paramContext, DataSetObserver paramDataSetObserver) {
    this.a = paramArrayList;
    this.b = paramContext;
    this.c = LayoutInflater.from(paramContext);
    this.d.add(paramDataSetObserver);
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
    paramView = this.c.inflate(2130968997, null);
    TextView textView1 = (TextView)paramView.findViewById(2131757005);
    TextView textView2 = (TextView)paramView.findViewById(2131757008);
    TextView textView3 = (TextView)paramView.findViewById(2131757010);
    TextView textView4 = (TextView)paramView.findViewById(2131757012);
    TextView textView5 = (TextView)paramView.findViewById(2131757014);
    TextView textView6 = (TextView)paramView.findViewById(2131757016);
    ImageView imageView = (ImageView)paramView.findViewById(2131757017);
    LinearLayout linearLayout = (LinearLayout)paramView.findViewById(2131757006);
    textView1.setText(((heq)this.a.get(paramInt)).h());
    textView2.setText(((heq)this.a.get(paramInt)).s());
    textView3.setText(((heq)this.a.get(paramInt)).n());
    textView4.setText(((heq)this.a.get(paramInt)).j());
    textView5.setText(((heq)this.a.get(paramInt)).l());
    textView6.setText(((heq)this.a.get(paramInt)).m());
    if (((heq)this.a.get(paramInt)).t().booleanValue()) {
      linearLayout.setVisibility(0);
      imageView.setImageResource(2130839077);
      imageView.setOnClickListener(new hda(this, linearLayout, paramInt));
      return paramView;
    } 
    linearLayout.setVisibility(8);
    imageView.setImageResource(2130839078);
    imageView.setOnClickListener(new hda(this, linearLayout, paramInt));
    return paramView;
  }
  
  public void notifyDataSetChanged() {
    Iterator<DataSetObserver> iterator = this.d.iterator();
    while (iterator.hasNext())
      ((DataSetObserver)iterator.next()).onChanged(); 
    super.notifyDataSetChanged();
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver) {
    super.registerDataSetObserver(paramDataSetObserver);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hcz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */