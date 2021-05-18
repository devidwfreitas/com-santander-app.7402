package com.journeyapps.barcodescanner;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import ese;
import fct;
import fcu;
import fcv;
import fcw;
import fcy;
import fcz;
import fdr;
import fds;
import fdu;
import fdw;
import fec;
import fel;
import fen;
import fep;
import feq;
import fer;
import fes;
import few;
import java.util.ArrayList;
import java.util.List;

public class CameraPreview extends ViewGroup {
  private static final String a = CameraPreview.class.getSimpleName();
  
  private static final int k = 250;
  
  private fdr A = (fdr)new fcw(this);
  
  private final fcz B = (fcz)new fcy(this);
  
  private fec b;
  
  private WindowManager c;
  
  private Handler d;
  
  private boolean e = false;
  
  private SurfaceView f;
  
  private TextureView g;
  
  private boolean h = false;
  
  private fds i;
  
  private int j = -1;
  
  private List<fcz> l = new ArrayList<fcz>();
  
  private feq m;
  
  private fel n = new fel();
  
  private fdu o;
  
  private fdu p;
  
  private Rect q;
  
  private fdu r;
  
  private Rect s = null;
  
  private Rect t = null;
  
  private fdu u = null;
  
  private double v = 0.1D;
  
  private few w = null;
  
  private boolean x = false;
  
  private final SurfaceHolder.Callback y = (SurfaceHolder.Callback)new fcu(this);
  
  private final Handler.Callback z = (Handler.Callback)new fcv(this);
  
  public CameraPreview(Context paramContext) {
    super(paramContext);
    a(paramContext, (AttributeSet)null, 0, 0);
  }
  
  public CameraPreview(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet, 0, 0);
  }
  
  public CameraPreview(Context paramContext, AttributeSet paramAttributeSet, int paramInt) {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet, paramInt, 0);
  }
  
  @TargetApi(14)
  private TextureView.SurfaceTextureListener a() {
    return (TextureView.SurfaceTextureListener)new fct(this);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2) {
    if (getBackground() == null)
      setBackgroundColor(-16777216); 
    a(paramAttributeSet);
    this.c = (WindowManager)paramContext.getSystemService("window");
    this.d = new Handler(this.z);
    this.i = new fds();
  }
  
  private void a(fdu paramfdu) {
    this.o = paramfdu;
    if (this.b != null && this.b.a() == null) {
      this.m = new feq(u(), paramfdu);
      this.m.a(f());
      this.b.a(this.m);
      this.b.e();
      if (this.x)
        this.b.a(this.x); 
    } 
  }
  
  private void a(fen paramfen) {
    if (!this.h && this.b != null) {
      Log.i(a, "Starting preview");
      this.b.a(paramfen);
      this.b.f();
      this.h = true;
      d();
      this.B.b();
    } 
  }
  
  private void b() {
    if (n() && u() != this.j) {
      e();
      j();
    } 
  }
  
  private void b(fdu paramfdu) {
    this.p = paramfdu;
    if (this.o != null) {
      s();
      requestLayout();
      t();
    } 
  }
  
  @SuppressLint({"NewAPI"})
  private void c() {
    if (this.e && Build.VERSION.SDK_INT >= 14) {
      this.g = new TextureView(getContext());
      this.g.setSurfaceTextureListener(a());
      addView((View)this.g);
      return;
    } 
    this.f = new SurfaceView(getContext());
    if (Build.VERSION.SDK_INT < 11)
      this.f.getHolder().setType(3); 
    this.f.getHolder().addCallback(this.y);
    addView((View)this.f);
  }
  
  private void s() {
    if (this.o == null || this.p == null || this.m == null) {
      this.t = null;
      this.s = null;
      this.q = null;
      throw new IllegalStateException("containerSize or previewSize is not set yet");
    } 
    int i = this.p.a;
    int j = this.p.b;
    int k = this.o.a;
    int m = this.o.b;
    this.q = this.m.a(this.p);
    this.s = a(new Rect(0, 0, k, m), this.q);
    Rect rect = new Rect(this.s);
    rect.offset(-this.q.left, -this.q.top);
    this.t = new Rect(rect.left * i / this.q.width(), rect.top * j / this.q.height(), i * rect.right / this.q.width(), j * rect.bottom / this.q.height());
    if (this.t.width() <= 0 || this.t.height() <= 0) {
      this.t = null;
      this.s = null;
      Log.w(a, "Preview frame is too small");
      return;
    } 
    this.B.a();
  }
  
  private void t() {
    if (this.r != null && this.p != null && this.q != null) {
      if (this.f != null && this.r.equals(new fdu(this.q.width(), this.q.height()))) {
        a(new fen(this.f.getHolder()));
        return;
      } 
    } else {
      return;
    } 
    if (this.g != null && Build.VERSION.SDK_INT >= 14 && this.g.getSurfaceTexture() != null) {
      if (this.p != null) {
        Matrix matrix = a(new fdu(this.g.getWidth(), this.g.getHeight()), this.p);
        this.g.setTransform(matrix);
      } 
      a(new fen(this.g.getSurfaceTexture()));
      return;
    } 
  }
  
  private int u() {
    return this.c.getDefaultDisplay().getRotation();
  }
  
  private void v() {
    if (this.b != null) {
      Log.w(a, "initCamera called twice");
      return;
    } 
    this.b = o();
    this.b.a(this.d);
    this.b.d();
    this.j = u();
  }
  
  protected Matrix a(fdu paramfdu1, fdu paramfdu2) {
    float f1 = 1.0F;
    float f2 = paramfdu1.a / paramfdu1.b;
    float f3 = paramfdu2.a / paramfdu2.b;
    if (f2 < f3) {
      f2 = f3 / f2;
      Matrix matrix1 = new Matrix();
      matrix1.setScale(f2, f1);
      f3 = paramfdu1.a;
      float f = paramfdu1.b;
      matrix1.postTranslate((paramfdu1.a - f2 * f3) / 2.0F, (paramfdu1.b - f1 * f) / 2.0F);
      return matrix1;
    } 
    f1 = f2 / f3;
    f2 = 1.0F;
    Matrix matrix = new Matrix();
    matrix.setScale(f2, f1);
    f3 = paramfdu1.a;
    float f4 = paramfdu1.b;
    matrix.postTranslate((paramfdu1.a - f2 * f3) / 2.0F, (paramfdu1.b - f1 * f4) / 2.0F);
    return matrix;
  }
  
  protected Rect a(Rect paramRect1, Rect paramRect2) {
    paramRect1 = new Rect(paramRect1);
    paramRect1.intersect(paramRect2);
    if (this.u != null) {
      paramRect1.inset(Math.max(0, (paramRect1.width() - this.u.a) / 2), Math.max(0, (paramRect1.height() - this.u.b) / 2));
      return paramRect1;
    } 
    int i = (int)Math.min(paramRect1.width() * this.v, paramRect1.height() * this.v);
    paramRect1.inset(i, i);
    if (paramRect1.height() > paramRect1.width()) {
      paramRect1.inset(0, (paramRect1.height() - paramRect1.width()) / 2);
      return paramRect1;
    } 
    return paramRect1;
  }
  
  protected void a(AttributeSet paramAttributeSet) {
    TypedArray typedArray = getContext().obtainStyledAttributes(paramAttributeSet, ese.zxing_camera_preview);
    int i = (int)typedArray.getDimension(ese.zxing_camera_preview_zxing_framing_rect_width, -1.0F);
    int j = (int)typedArray.getDimension(ese.zxing_camera_preview_zxing_framing_rect_height, -1.0F);
    if (i > 0 && j > 0)
      this.u = new fdu(i, j); 
    this.e = typedArray.getBoolean(ese.zxing_camera_preview_zxing_use_texture_view, true);
    i = typedArray.getInteger(ese.zxing_camera_preview_zxing_preview_scaling_strategy, -1);
    if (i == 1) {
      this.w = (few)new fep();
    } else if (i == 2) {
      this.w = (few)new fer();
    } else if (i == 3) {
      this.w = (few)new fes();
    } 
    typedArray.recycle();
  }
  
  public void a(fcz paramfcz) {
    this.l.add(paramfcz);
  }
  
  protected void d() {}
  
  public void e() {
    fdw.a();
    Log.d(a, "pause()");
    this.j = -1;
    if (this.b != null) {
      this.b.close();
      this.b = null;
      this.h = false;
    } 
    if (this.r == null && this.f != null)
      this.f.getHolder().removeCallback(this.y); 
    if (this.r == null && this.g != null && Build.VERSION.SDK_INT >= 14)
      this.g.setSurfaceTextureListener(null); 
    this.o = null;
    this.p = null;
    this.t = null;
    this.i.a();
    this.B.c();
  }
  
  public few f() {
    return (few)((this.w != null) ? this.w : ((this.g != null) ? new fep() : new fer()));
  }
  
  public Rect g() {
    return this.s;
  }
  
  public Rect h() {
    return this.t;
  }
  
  public fel i() {
    return this.n;
  }
  
  public void j() {
    fdw.a();
    Log.d(a, "resume()");
    v();
    if (this.r != null) {
      t();
    } else if (this.f != null) {
      this.f.getHolder().addCallback(this.y);
    } else if (this.g != null && Build.VERSION.SDK_INT >= 14) {
      if (this.g.isAvailable()) {
        a().onSurfaceTextureAvailable(this.g.getSurfaceTexture(), this.g.getWidth(), this.g.getHeight());
      } else {
        this.g.setSurfaceTextureListener(a());
      } 
    } 
    requestLayout();
    this.i.a(getContext(), this.A);
  }
  
  public fdu k() {
    return this.u;
  }
  
  public double l() {
    return this.v;
  }
  
  public boolean m() {
    return this.e;
  }
  
  public boolean n() {
    return (this.b != null);
  }
  
  protected fec o() {
    fec fec1 = new fec(getContext());
    fec1.a(this.n);
    return fec1;
  }
  
  protected void onAttachedToWindow() {
    super.onAttachedToWindow();
    c();
  }
  
  @SuppressLint({"DrawAllocation"})
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    a(new fdu(paramInt3 - paramInt1, paramInt4 - paramInt2));
    if (this.f != null) {
      if (this.q == null) {
        this.f.layout(0, 0, getWidth(), getHeight());
        return;
      } 
      this.f.layout(this.q.left, this.q.top, this.q.right, this.q.bottom);
      return;
    } 
    if (this.g != null && Build.VERSION.SDK_INT >= 14) {
      this.g.layout(0, 0, getWidth(), getHeight());
      return;
    } 
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable) {
    if (!(paramParcelable instanceof Bundle)) {
      super.onRestoreInstanceState(paramParcelable);
      return;
    } 
    Bundle bundle = (Bundle)paramParcelable;
    super.onRestoreInstanceState(bundle.getParcelable("super"));
    setTorch(bundle.getBoolean("torch"));
  }
  
  protected Parcelable onSaveInstanceState() {
    Parcelable parcelable = super.onSaveInstanceState();
    Bundle bundle = new Bundle();
    bundle.putParcelable("super", parcelable);
    bundle.putBoolean("torch", this.x);
    return (Parcelable)bundle;
  }
  
  public fec p() {
    return this.b;
  }
  
  public boolean q() {
    return this.h;
  }
  
  public void setCameraSettings(fel paramfel) {
    this.n = paramfel;
  }
  
  public void setFramingRectSize(fdu paramfdu) {
    this.u = paramfdu;
  }
  
  public void setMarginFraction(double paramDouble) {
    if (paramDouble >= 0.5D)
      throw new IllegalArgumentException("The margin fraction must be less than 0.5"); 
    this.v = paramDouble;
  }
  
  public void setPreviewScalingStrategy(few paramfew) {
    this.w = paramfew;
  }
  
  public void setTorch(boolean paramBoolean) {
    this.x = paramBoolean;
    if (this.b != null)
      this.b.a(paramBoolean); 
  }
  
  public void setUseTextureView(boolean paramBoolean) {
    this.e = paramBoolean;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\journeyapps\barcodescanner\CameraPreview.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */