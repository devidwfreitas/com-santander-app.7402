import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class fqh extends BaseAdapter {
  private ArrayList<ioj> a;
  
  private ArrayList<ioj> b;
  
  private Context c;
  
  private LayoutInflater d;
  
  private fye e;
  
  private Activity f;
  
  public fqh(fye paramfye, Context paramContext, int paramInt, List<ioj> paramList) {
    this.e = paramfye;
  }
  
  public fqh(ArrayList<ioj> paramArrayList, Activity paramActivity) {
    this.a = paramArrayList;
    this.c = paramActivity.getBaseContext();
    this.d = LayoutInflater.from(this.c);
    this.b = new ArrayList<ioj>();
    this.b.addAll(this.a);
    this.f = paramActivity;
  }
  
  public void a(String paramString) {
    paramString = paramString.toLowerCase(Locale.getDefault());
    this.a.clear();
    if (paramString.length() == 0) {
      this.a.addAll(this.b);
    } else {
      Iterator<ioj> iterator = this.b.iterator();
      while (true) {
        if (iterator.hasNext()) {
          ioj ioj = iterator.next();
          if (ioj.b().toLowerCase(Locale.getDefault()).contains(paramString))
            this.a.add(ioj); 
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
  
  public Object getItem(int paramInt) {
    return this.a.get(paramInt);
  }
  
  public long getItemId(int paramInt) {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    paramView = this.d.inflate(2130969350, null);
    if (((ioj)this.a.get(paramInt)).b() != null || ((ioj)this.a.get(paramInt)).a() != null) {
      TextView textView1 = (TextView)paramView.findViewById(2131757634);
      TextView textView2 = (TextView)paramView.findViewById(2131757624);
      textView1.setText(((ioj)this.a.get(paramInt)).b());
      textView2.setText(((ioj)this.a.get(paramInt)).a());
      return paramView;
    } 
    mxn.b(this.f, "Falha ao carregar lista de países.");
    return paramView;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fqh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */