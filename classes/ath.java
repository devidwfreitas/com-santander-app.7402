import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;

public class ath extends RecyclerView.ViewHolder {
  private TextView a;
  
  public ath(View paramView) {
    super(paramView);
    this.a = (TextView)paramView.findViewById(api.external_tv);
  }
  
  public void a(String paramString) {
    this.a.setText(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ath.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */