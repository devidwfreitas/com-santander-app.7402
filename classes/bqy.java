import android.annotation.SuppressLint;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.ca.android.app.CaMDOWebView;
import java.util.Locale;

public class bqy extends Dialog {
  static final String a = "fbconnect://success";
  
  static final String b = "fbconnect://cancel";
  
  static final boolean c = false;
  
  private static final String d = "FacebookSDK.WebDialog";
  
  private static final String e = "touch";
  
  private static final int f = 4201;
  
  private static final int g = 480;
  
  private static final int h = 800;
  
  private static final int i = 800;
  
  private static final int j = 1280;
  
  private static final double k = 0.5D;
  
  private static final int l = -872415232;
  
  private String m;
  
  private String n = "fbconnect://success";
  
  private brf o;
  
  private WebView p;
  
  private ProgressDialog q;
  
  private ImageView r;
  
  private FrameLayout s;
  
  private brg t;
  
  private boolean u = false;
  
  private boolean v = false;
  
  private boolean w = false;
  
  public bqy(Context paramContext, String paramString) {
    this(paramContext, paramString, bhv.o());
  }
  
  public bqy(Context paramContext, String paramString, int paramInt) {
    super(paramContext, i);
    this.m = paramString;
  }
  
  public bqy(Context paramContext, String paramString, Bundle paramBundle, int paramInt, brf parambrf) {
    super(paramContext, i);
    Bundle bundle = paramBundle;
    if (paramBundle == null)
      bundle = new Bundle(); 
    bundle.putString("redirect_uri", "fbconnect://success");
    bundle.putString("display", "touch");
    bundle.putString("sdk", String.format(Locale.ROOT, "android-%s", new Object[] { bhv.j() }));
    this.o = parambrf;
    if (paramString.equals("share") && bundle.containsKey("media")) {
      this.t = new brg(this, paramString, bundle);
      return;
    } 
    this.m = bqq.a(bqn.a(), bhv.i() + "/" + "dialog/" + paramString, bundle).toString();
  }
  
  private int a(int paramInt1, float paramFloat, int paramInt2, int paramInt3) {
    double d = 0.5D;
    int i = (int)(paramInt1 / paramFloat);
    if (i <= paramInt2) {
      d = 1.0D;
      return (int)(d * paramInt1);
    } 
    if (i < paramInt3)
      d = 0.5D + (paramInt3 - i) / (paramInt3 - paramInt2) * 0.5D; 
    return (int)(d * paramInt1);
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  private void a(int paramInt) {
    LinearLayout linearLayout = new LinearLayout(getContext());
    this.p = new brb(this, getContext().getApplicationContext());
    this.p.setVerticalScrollBarEnabled(false);
    this.p.setHorizontalScrollBarEnabled(false);
    CaMDOWebView.setWebViewClient(this.p, new bre(this, null));
    this.p.getSettings().setJavaScriptEnabled(true);
    CaMDOWebView.loadUrl(this.p, this.m);
    this.p.setLayoutParams((ViewGroup.LayoutParams)new FrameLayout.LayoutParams(-1, -1));
    this.p.setVisibility(4);
    this.p.getSettings().setSavePassword(false);
    this.p.getSettings().setSaveFormData(false);
    this.p.setFocusable(true);
    this.p.setFocusableInTouchMode(true);
    this.p.setOnTouchListener(new brc(this));
    linearLayout.setPadding(paramInt, paramInt, paramInt, paramInt);
    linearLayout.addView((View)this.p);
    linearLayout.setBackgroundColor(-872415232);
    this.s.addView((View)linearLayout);
  }
  
  private void f() {
    this.r = new ImageView(getContext());
    this.r.setOnClickListener(new bra(this));
    Drawable drawable = getContext().getResources().getDrawable(bjt.com_facebook_close);
    this.r.setImageDrawable(drawable);
    this.r.setVisibility(4);
  }
  
  protected Bundle a(String paramString) {
    Uri uri = Uri.parse(paramString);
    Bundle bundle = bqq.d(uri.getQuery());
    bundle.putAll(bqq.d(uri.getFragment()));
    return bundle;
  }
  
  public brf a() {
    return this.o;
  }
  
  protected void a(Bundle paramBundle) {
    if (this.o != null && !this.u) {
      this.u = true;
      this.o.a(paramBundle, null);
      dismiss();
    } 
  }
  
  public void a(brf parambrf) {
    this.o = parambrf;
  }
  
  protected void a(Throwable paramThrowable) {
    if (this.o != null && !this.u) {
      this.u = true;
      if (paramThrowable instanceof bhp) {
        paramThrowable = paramThrowable;
      } else {
        paramThrowable = new bhp(paramThrowable);
      } 
      this.o.a(null, (bhp)paramThrowable);
      dismiss();
    } 
  }
  
  protected void b(String paramString) {
    this.n = paramString;
  }
  
  protected boolean b() {
    return this.u;
  }
  
  protected boolean c() {
    return this.w;
  }
  
  public void cancel() {
    if (this.o != null && !this.u)
      a(new bhr()); 
  }
  
  protected WebView d() {
    return this.p;
  }
  
  public void dismiss() {
    if (this.p != null)
      this.p.stopLoading(); 
    if (!this.v && this.q != null && this.q.isShowing())
      this.q.dismiss(); 
    super.dismiss();
  }
  
  public void e() {
    Display display = ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay();
    DisplayMetrics displayMetrics = new DisplayMetrics();
    display.getMetrics(displayMetrics);
    if (displayMetrics.widthPixels < displayMetrics.heightPixels) {
      i = displayMetrics.widthPixels;
    } else {
      i = displayMetrics.heightPixels;
    } 
    if (displayMetrics.widthPixels < displayMetrics.heightPixels) {
      j = displayMetrics.heightPixels;
    } else {
      j = displayMetrics.widthPixels;
    } 
    int i = Math.min(a(i, displayMetrics.density, 480, 800), displayMetrics.widthPixels);
    int j = Math.min(a(j, displayMetrics.density, 800, 1280), displayMetrics.heightPixels);
    getWindow().setLayout(i, j);
  }
  
  public void onAttachedToWindow() {
    this.v = false;
    super.onAttachedToWindow();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    this.q = new ProgressDialog(getContext());
    this.q.requestWindowFeature(1);
    this.q.setMessage(getContext().getString(bjx.com_facebook_loading));
    this.q.setCanceledOnTouchOutside(false);
    this.q.setOnCancelListener(new bqz(this));
    requestWindowFeature(1);
    this.s = new FrameLayout(getContext());
    e();
    getWindow().setGravity(17);
    getWindow().setSoftInputMode(16);
    f();
    if (this.m != null)
      a(this.r.getDrawable().getIntrinsicWidth() / 2 + 1); 
    this.s.addView((View)this.r, new ViewGroup.LayoutParams(-2, -2));
    setContentView((View)this.s);
  }
  
  public void onDetachedFromWindow() {
    this.v = true;
    super.onDetachedFromWindow();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent) {
    if (paramInt == 4)
      cancel(); 
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onStart() {
    super.onStart();
    if (this.t != null && this.t.getStatus() == AsyncTask.Status.PENDING) {
      this.t.execute((Object[])new Void[0]);
      this.q.show();
      return;
    } 
    e();
  }
  
  protected void onStop() {
    if (this.t != null) {
      this.t.cancel(true);
      this.q.dismiss();
    } 
    super.onStop();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bqy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */