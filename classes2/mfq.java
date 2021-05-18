import android.content.res.TypedArray;
import android.graphics.Point;
import android.graphics.PointF;
import android.os.Handler;
import android.support.annotation.LayoutRes;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.PopupWindow;
import android.widget.SeekBar;
import android.widget.TextView;

public abstract class mfq implements SeekBar.OnSeekBarChangeListener {
  public static final int g = 1;
  
  public static final int h = 0;
  
  public static final mfy i = new mfv();
  
  protected SeekBar a;
  
  protected PopupWindow b;
  
  protected View c;
  
  protected TextView d;
  
  protected int e;
  
  protected int f;
  
  private int j;
  
  private boolean k;
  
  private boolean l;
  
  private int m;
  
  private mfy n;
  
  private mfz o;
  
  private mfx p = new mfx(null);
  
  private Handler q = new Handler();
  
  private boolean r;
  
  private View.OnTouchListener s = new mft(this);
  
  public mfq(SeekBar paramSeekBar, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, int paramInt3, int paramInt4) {
    a(paramSeekBar, paramInt1, paramInt2, paramBoolean1, paramBoolean2, paramInt3, paramInt4, i);
  }
  
  public mfq(SeekBar paramSeekBar, AttributeSet paramAttributeSet, int paramInt) {
    TypedArray typedArray = paramSeekBar.getContext().obtainStyledAttributes(paramAttributeSet, flv.ProgressHint, paramInt, 2131427857);
    paramInt = typedArray.getResourceId(0, 2130969422);
    int i = (int)typedArray.getDimension(1, 0.0F);
    int j = typedArray.getInt(2, 0);
    int k = typedArray.getResourceId(3, 2131427657);
    boolean bool1 = typedArray.getBoolean(4, false);
    boolean bool2 = typedArray.getBoolean(5, false);
    typedArray.recycle();
    a(paramSeekBar, paramInt, i, bool1, bool2, j, k, i);
  }
  
  private void a(SeekBar paramSeekBar, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, int paramInt3, int paramInt4, mfy parammfy) {
    this.a = paramSeekBar;
    this.j = paramInt1;
    this.e = paramInt2;
    this.k = paramBoolean1;
    this.l = paramBoolean2;
    this.f = paramInt3;
    this.m = paramInt4;
    this.n = parammfy;
    j();
    k();
  }
  
  private void j() {
    String str;
    if (this.n != null) {
      str = this.n.a(this.a, this.a.getProgress());
    } else {
      str = null;
    } 
    this.c = ((LayoutInflater)this.a.getContext().getSystemService("layout_inflater")).inflate(this.j, null);
    this.c.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
    this.d = (TextView)this.c.findViewById(16908308);
    TextView textView = this.d;
    if (str != null) {
      str = str + "%";
    } else {
      str = String.valueOf(this.a.getProgress() + "%");
    } 
    textView.setText(str);
    this.b = new PopupWindow(this.c, -2, -2, false);
    this.b.setAnimationStyle(this.m);
  }
  
  private void k() {
    mfr mfr = new mfr(this);
    this.a.addOnAttachStateChangeListener(new mfs(this, mfr));
    this.p.a(this);
  }
  
  private void l() {
    a(this.k);
    b(this.l);
  }
  
  private void m() {
    switch (this.f) {
      default:
        point = null;
        this.b.showAtLocation((View)this.a, 0, 0, 0);
        this.b.update((View)this.a, point.x, point.y, -1, -1);
        return;
      case 0:
        point = b();
        this.b.showAtLocation((View)this.a, 0, 0, 0);
        this.b.update((View)this.a, point.x, point.y, -1, -1);
        return;
      case 1:
        break;
    } 
    Point point = a();
    this.b.showAtLocation((View)this.a, 0, 0, 0);
    this.b.update((View)this.a, point.x, point.y, -1, -1);
  }
  
  protected abstract Point a();
  
  protected abstract PointF a(MotionEvent paramMotionEvent);
  
  public SeekBar.OnSeekBarChangeListener a(SeekBar.OnSeekBarChangeListener paramOnSeekBarChangeListener) {
    if (paramOnSeekBarChangeListener instanceof mfx) {
      this.p = (mfx)paramOnSeekBarChangeListener;
      return this.p;
    } 
    this.p.b(paramOnSeekBarChangeListener);
    return this.p;
  }
  
  public void a(@LayoutRes int paramInt) {
    this.j = paramInt;
    if (this.b != null)
      this.b.dismiss(); 
    j();
    l();
  }
  
  public void a(mfy parammfy) {
    this.n = parammfy;
    if (this.d != null)
      this.d.setText(this.n.a(this.a, this.a.getProgress()) + "%"); 
  }
  
  public void a(mfz parammfz) {
    this.o = parammfz;
  }
  
  public void a(boolean paramBoolean) {
    this.k = paramBoolean;
    if (paramBoolean) {
      c();
      return;
    } 
    if (!this.r) {
      d();
      return;
    } 
  }
  
  protected abstract Point b();
  
  public void b(int paramInt) {
    this.f = paramInt;
    if (this.k)
      c(); 
  }
  
  public void b(boolean paramBoolean) {
    this.l = paramBoolean;
    if (this.c != null) {
      View.OnTouchListener onTouchListener;
      View view = this.c;
      if (paramBoolean) {
        onTouchListener = this.s;
      } else {
        onTouchListener = null;
      } 
      view.setOnTouchListener(onTouchListener);
    } 
  }
  
  protected int c(int paramInt) {
    return (int)(((this.a.getWidth() - this.a.getPaddingLeft() - this.a.getPaddingRight()) * paramInt) / this.a.getMax());
  }
  
  public void c() {
    this.q.post(new mfu(this));
  }
  
  public void d() {
    this.q.removeCallbacksAndMessages(null);
    if (this.b.isShowing())
      this.b.dismiss(); 
  }
  
  @LayoutRes
  public int e() {
    return this.j;
  }
  
  public int f() {
    return this.f;
  }
  
  public boolean g() {
    return this.k;
  }
  
  public boolean h() {
    return this.l;
  }
  
  protected int i() {
    return c(this.a.getProgress());
  }
  
  public void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean) {
    String str;
    paramSeekBar = null;
    if (this.n != null)
      str = this.n.a(this.a, paramInt); 
    TextView textView = this.d;
    if (str != null) {
      str = str + "%";
    } else {
      str = String.valueOf(paramInt);
    } 
    textView.setText(str);
    if (this.f == 0) {
      Point point = b();
      this.b.update((View)this.a, point.x, point.y, -1, -1);
    } 
  }
  
  public void onStartTrackingTouch(SeekBar paramSeekBar) {
    this.r = true;
    m();
  }
  
  public void onStopTrackingTouch(SeekBar paramSeekBar) {
    this.r = false;
    if (!this.k)
      d(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mfq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */