import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.santander.app.components.view.SantanderTextView;
import java.util.List;

public class idc extends BaseAdapter {
  private LayoutInflater a;
  
  private List<ibv> b;
  
  public idc(Context paramContext, List<ibv> paramList) {
    this.b = paramList;
    this.a = LayoutInflater.from(paramContext);
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
    SantanderTextView santanderTextView1;
    SantanderTextView santanderTextView2;
    if (((ibv)this.b.get(paramInt)).a()) {
      View view = paramView;
      if (paramView == null) {
        view = this.a.inflate(2130969261, paramViewGroup, false);
        santanderTextView1 = (SantanderTextView)view.findViewById(2131758626);
        santanderTextView2 = (SantanderTextView)view.findViewById(2131758627);
        santanderTextView1.setText(((ibv)this.b.get(paramInt)).d());
        santanderTextView2.setText(((ibv)this.b.get(paramInt)).c());
      } 
      return view;
    } 
    SantanderTextView santanderTextView3 = santanderTextView1;
    if (santanderTextView1 == null) {
      View view = this.a.inflate(2130969260, (ViewGroup)santanderTextView2, false);
      ((SantanderTextView)view.findViewById(2131758625)).setText((CharSequence)Html.fromHtml(((ibv)this.b.get(paramInt)).c()));
      return view;
    } 
    return (View)santanderTextView3;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\idc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */