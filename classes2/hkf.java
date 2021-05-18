import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.List;

public class hkf extends BaseAdapter {
  private Context a;
  
  private LayoutInflater b;
  
  private List<gky> c;
  
  public hkf(Context paramContext, List<gky> paramList) {
    this.a = paramContext;
    this.c = paramList;
  }
  
  private void a() {
    mxn.a((Activity)this.a, this.a.getResources().getString(2131298994), this.a.getResources().getString(2131298212), false);
  }
  
  private void b() {
    mxn.a((Activity)this.a, this.a.getResources().getString(2131298993), this.a.getResources().getString(2131298211), false);
  }
  
  public gky a(int paramInt) {
    return this.c.get(paramInt);
  }
  
  public int getCount() {
    return this.c.size();
  }
  
  public long getItemId(int paramInt) {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup) {
    ImageView imageView;
    View view = paramView;
    if (paramView == null) {
      gky gky = this.c.get(paramInt);
      this.b = (LayoutInflater)this.a.getSystemService("layout_inflater");
      view = this.b.inflate(2130969264, null);
      ((TextView)view.findViewById(2131758610)).setText(gky.b());
      ((TextView)view.findViewById(2131758611)).setText(gky.c());
      imageView = (ImageView)view.findViewById(2131758630);
      if (gky.e()) {
        imageView.setVisibility(0);
        imageView.setOnClickListener(new hkg(this, gky));
        return view;
      } 
    } else {
      return view;
    } 
    imageView.setVisibility(8);
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hkf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */