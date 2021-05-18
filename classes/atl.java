import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

public class atl extends RecyclerView.ViewHolder {
  private TextView a;
  
  private TextView b;
  
  private ImageView c;
  
  private ImageView d;
  
  public atl(View paramView) {
    super(paramView);
    this.a = (TextView)paramView.findViewById(api.client_text_tv);
    this.b = (TextView)paramView.findViewById(api.client_time_tv);
    this.c = (ImageView)paramView.findViewById(api.status_msg_imv);
    this.d = (ImageView)paramView.findViewById(api.client_msg_error_imv);
  }
  
  public ImageView a() {
    return this.d;
  }
  
  public void a(int paramInt) {
    this.c.setImageResource(paramInt);
  }
  
  public void a(ark paramark) {
    boolean bool;
    ImageView imageView = this.c;
    if (paramark.o() || paramark.v()) {
      bool = true;
    } else {
      bool = false;
    } 
    imageView.setVisibility(bool);
  }
  
  public void a(String paramString) {
    this.a.setText(paramString.trim());
  }
  
  public void b(ark paramark) {
    byte b;
    ImageView imageView = this.d;
    if (paramark.o() || paramark.v()) {
      b = 0;
    } else {
      b = 8;
    } 
    imageView.setVisibility(b);
  }
  
  public void b(String paramString) {
    this.b.setText(paramString.trim());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\atl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */