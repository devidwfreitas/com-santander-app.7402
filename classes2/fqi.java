import android.content.Context;
import android.database.DataSetObserver;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;

public class fqi extends BaseAdapter {
  private ArrayList<inx> a;
  
  private Context b;
  
  private LayoutInflater c;
  
  private ArrayList<DataSetObserver> d = new ArrayList<DataSetObserver>();
  
  public fqi(ArrayList<inx> paramArrayList, Context paramContext, DataSetObserver paramDataSetObserver) {
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
    paramView = this.c.inflate(2130969108, null);
    TextView textView1 = (TextView)paramView.findViewById(2131757613);
    TextView textView2 = (TextView)paramView.findViewById(2131757622);
    TextView textView3 = (TextView)paramView.findViewById(2131757623);
    TextView textView4 = (TextView)paramView.findViewById(2131757624);
    ImageView imageView = (ImageView)paramView.findViewById(2131757625);
    Log.d("Santander", "Findview");
    textView1.setText(((inx)this.a.get(paramInt)).b());
    textView2.setText(((inx)this.a.get(paramInt)).c());
    textView3.setText(((inx)this.a.get(paramInt)).d());
    textView4.setText(((inx)this.a.get(paramInt)).a());
    imageView.setOnClickListener(new fqj(this, paramInt));
    return paramView;
  }
  
  public void notifyDataSetChanged() {
    Iterator<DataSetObserver> iterator = this.d.iterator();
    while (iterator.hasNext())
      ((DataSetObserver)iterator.next()).onChanged(); 
    super.notifyDataSetChanged();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fqi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */