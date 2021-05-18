import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.lang.ref.WeakReference;

public class btp {
  public static final long a = 6000L;
  
  private final String b;
  
  private final WeakReference<View> c;
  
  private final Context d;
  
  private btt e;
  
  private PopupWindow f;
  
  private btu g = btu.BLUE;
  
  private long h = 6000L;
  
  private final ViewTreeObserver.OnScrollChangedListener i = new btq(this);
  
  public btp(String paramString, View paramView) {
    this.b = paramString;
    this.c = new WeakReference<View>(paramView);
    this.d = paramView.getContext();
  }
  
  private void c() {
    if (this.f != null && this.f.isShowing()) {
      if (this.f.isAboveAnchor()) {
        this.e.b();
        return;
      } 
    } else {
      return;
    } 
    this.e.a();
  }
  
  private void d() {
    e();
    if (this.c.get() != null)
      ((View)this.c.get()).getViewTreeObserver().addOnScrollChangedListener(this.i); 
  }
  
  private void e() {
    if (this.c.get() != null)
      ((View)this.c.get()).getViewTreeObserver().removeOnScrollChangedListener(this.i); 
  }
  
  public void a() {
    if (this.c.get() != null) {
      this.e = new btt(this, this.d);
      ((TextView)this.e.findViewById(bju.com_facebook_tooltip_bubble_view_text_body)).setText(this.b);
      if (this.g == btu.BLUE) {
        btt.a(this.e).setBackgroundResource(bjt.com_facebook_tooltip_blue_background);
        btt.b(this.e).setImageResource(bjt.com_facebook_tooltip_blue_bottomnub);
        btt.c(this.e).setImageResource(bjt.com_facebook_tooltip_blue_topnub);
        btt.d(this.e).setImageResource(bjt.com_facebook_tooltip_blue_xout);
      } else {
        btt.a(this.e).setBackgroundResource(bjt.com_facebook_tooltip_black_background);
        btt.b(this.e).setImageResource(bjt.com_facebook_tooltip_black_bottomnub);
        btt.c(this.e).setImageResource(bjt.com_facebook_tooltip_black_topnub);
        btt.d(this.e).setImageResource(bjt.com_facebook_tooltip_black_xout);
      } 
      View view = ((Activity)this.d).getWindow().getDecorView();
      int i = view.getWidth();
      int j = view.getHeight();
      d();
      this.e.measure(View.MeasureSpec.makeMeasureSpec(i, -2147483648), View.MeasureSpec.makeMeasureSpec(j, -2147483648));
      this.f = new PopupWindow((View)this.e, this.e.getMeasuredWidth(), this.e.getMeasuredHeight());
      this.f.showAsDropDown(this.c.get());
      c();
      if (this.h > 0L)
        this.e.postDelayed(new btr(this), this.h); 
      this.f.setTouchable(true);
      this.e.setOnClickListener(new bts(this));
    } 
  }
  
  public void a(long paramLong) {
    this.h = paramLong;
  }
  
  public void a(btu parambtu) {
    this.g = parambtu;
  }
  
  public void b() {
    e();
    if (this.f != null)
      this.f.dismiss(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\btp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */