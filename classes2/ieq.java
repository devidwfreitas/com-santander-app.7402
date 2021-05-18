import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;

public class ieq extends BaseAdapter {
  private LayoutInflater a;
  
  private Context b;
  
  private ArrayList<iet> c;
  
  public ieq(Context paramContext, ArrayList<iet> paramArrayList) {
    this.b = paramContext;
    this.c = paramArrayList;
  }
  
  public int getCount() {
    return this.c.size();
  }
  
  public Object getItem(int paramInt) {
    return this.c.get(paramInt);
  }
  
  public long getItemId(int paramInt) {
    return 0L;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    ies ies;
    if (paramView == null) {
      this.a = (LayoutInflater)this.b.getSystemService("layout_inflater");
      paramView = this.a.inflate(2130969348, null);
      ies = new ies(null);
      ies.a = (TextView)paramView.findViewById(2131759039);
      ies.b = (TextView)paramView.findViewById(2131759040);
      ies.c = (TextView)paramView.findViewById(2131759041);
      paramView.setTag(ies);
    } else {
      ies = (ies)paramView.getTag();
    } 
    if (this.c != null) {
      if (!((iet)this.c.get(paramInt)).b().contains("SUBTOTAL")) {
        ies.a.setText(((iet)this.c.get(paramInt)).a());
        ies.b.setText(((iet)this.c.get(paramInt)).b().trim());
        if (((iet)this.c.get(paramInt)).c() != null) {
          if (((iet)this.c.get(paramInt)).d() == null) {
            goh.b(ies.c, ((iet)this.c.get(paramInt)).c(), "false");
            return paramView;
          } 
          goh.b(ies.c, ((iet)this.c.get(paramInt)).c(), ((iet)this.c.get(paramInt)).d());
          return paramView;
        } 
        ies.c.setText("R$0,00");
        return paramView;
      } 
    } else {
      return paramView;
    } 
    ies.a.setVisibility(8);
    ies.b.setText(((iet)this.c.get(paramInt)).b());
    if (((iet)this.c.get(paramInt)).c() != null) {
      if (((iet)this.c.get(paramInt)).d() == null) {
        goh.b(ies.c, ((iet)this.c.get(paramInt)).c(), "false");
        return paramView;
      } 
      goh.b(ies.c, ((iet)this.c.get(paramInt)).c(), ((iet)this.c.get(paramInt)).d());
      return paramView;
    } 
    ies.c.setText("R$0,00");
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ieq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */