import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;

class btt extends FrameLayout {
  private ImageView b;
  
  private ImageView c;
  
  private View d;
  
  private ImageView e;
  
  public btt(btp parambtp, Context paramContext) {
    super(paramContext);
    c();
  }
  
  private void c() {
    LayoutInflater.from(getContext()).inflate(bjw.com_facebook_tooltip_bubble, (ViewGroup)this);
    this.b = (ImageView)findViewById(bju.com_facebook_tooltip_bubble_view_top_pointer);
    this.c = (ImageView)findViewById(bju.com_facebook_tooltip_bubble_view_bottom_pointer);
    this.d = findViewById(bju.com_facebook_body_frame);
    this.e = (ImageView)findViewById(bju.com_facebook_button_xout);
  }
  
  public void a() {
    this.b.setVisibility(0);
    this.c.setVisibility(4);
  }
  
  public void b() {
    this.b.setVisibility(4);
    this.c.setVisibility(0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\btt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */