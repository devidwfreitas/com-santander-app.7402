import android.app.Activity;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

public class akb {
  private View a;
  
  private TextView b;
  
  private View c;
  
  private Activity d;
  
  private List<View> e = new ArrayList<View>();
  
  public akb(Activity paramActivity) {
    this.d = paramActivity;
    a();
  }
  
  public akb(Activity paramActivity, View paramView) {
    this.d = paramActivity;
    this.a = paramView;
    a();
  }
  
  private void a() {
    b();
  }
  
  private void b() {
    View view = this.d.findViewById(agg.header_main);
    if (view == null && this.a != null)
      view = this.a.findViewById(agg.header_main); 
    if (view != null) {
      if (Build.VERSION.SDK_INT >= 21) {
        Drawable drawable = ContextCompat.getDrawable((Context)this.d, agf.abc_ic_ab_back_material);
        drawable.setColorFilter(-1, PorterDuff.Mode.SRC_ATOP);
        ImageView imageView = (ImageView)this.d.findViewById(agg.back_button);
        imageView.setImageDrawable(drawable);
        imageView.setOnClickListener(new akc(this));
      } 
      switch (akd.a[ajd.a().b().ordinal()]) {
        default:
          view.setBackgroundColor(this.d.getResources().getColor(agd.cred_header_defaut));
          return;
        case 1:
          view.setBackgroundColor(this.d.getResources().getColor(agd.cred_header_private));
          return;
        case 2:
          view.setBackgroundColor(this.d.getResources().getColor(agd.cred_header_select));
          return;
        case 3:
        case 4:
          break;
      } 
    } else {
      return;
    } 
    view.setBackgroundColor(this.d.getResources().getColor(agd.cred_header_van_gogh));
  }
  
  public void a(int paramInt) {
    d(this.d.getResources().getString(paramInt));
  }
  
  public Activity d() {
    return this.d;
  }
  
  public void d(String paramString) {
    if (this.b != null) {
      this.b.setText(paramString);
      this.c.setVisibility(0);
    } 
  }
  
  @Deprecated
  protected String e(String paramString) {
    try {
      return ji.a().c(paramString);
    } catch (Exception exception) {
      return paramString;
    } 
  }
  
  @Deprecated
  protected String f(String paramString) {
    try {
      return ji.a().f(paramString);
    } catch (Exception exception) {
      return paramString;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\akb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */