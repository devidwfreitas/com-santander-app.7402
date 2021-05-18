import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;

public class atg extends RecyclerView.ViewHolder {
  private TextView a;
  
  private TextView b;
  
  private TextView c;
  
  public atg(View paramView) {
    super(paramView);
    this.a = (TextView)paramView.findViewById(api.agent_name_tv);
    this.b = (TextView)paramView.findViewById(api.agent_text_tv);
    this.c = (TextView)paramView.findViewById(api.agent_time_tv);
  }
  
  public void a(String paramString) {
    this.a.setText(paramString);
  }
  
  public void b(String paramString) {
    this.b.setText(paramString);
  }
  
  public void c(String paramString) {
    this.c.setText(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\atg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */