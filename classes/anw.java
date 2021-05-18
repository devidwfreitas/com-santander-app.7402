import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

public class anw extends RecyclerView.ViewHolder {
  protected TextView a;
  
  protected TextView b;
  
  protected LinearLayout c;
  
  public anw(View paramView) {
    super(paramView);
    this.a = (TextView)paramView.findViewById(als.textview_search_title);
    this.b = (TextView)paramView.findViewById(als.textview_search_description);
    this.c = (LinearLayout)paramView.findViewById(als.linearlayout_box_detail);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\anw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */