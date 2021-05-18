package com.jeremyfeinstein.slidingmenu.lib;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import fbh;
import fbi;
import fbj;
import fcd;
import fcf;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class CustomViewAbove extends ViewGroup {
  private static final String e = "CustomViewAbove";
  
  private static final boolean f = false;
  
  private static final boolean g = false;
  
  private static final int h = 600;
  
  private static final int i = 25;
  
  private static final Interpolator j = (Interpolator)new fbh();
  
  private static final int v = -1;
  
  private fbj A;
  
  private fbj B;
  
  private fcd C;
  
  private fcf D;
  
  private List<View> E = new ArrayList<View>();
  
  private boolean F = false;
  
  private float G = 0.0F;
  
  protected int a = -1;
  
  protected VelocityTracker b;
  
  protected int c;
  
  protected int d = 0;
  
  private View k;
  
  private int l;
  
  private Scroller m;
  
  private boolean n;
  
  private boolean o;
  
  private boolean p;
  
  private boolean q;
  
  private int r;
  
  private float s;
  
  private float t;
  
  private float u;
  
  private int w;
  
  private int x;
  
  private CustomViewBehind y;
  
  private boolean z = true;
  
  public CustomViewAbove(Context paramContext) {
    this(paramContext, (AttributeSet)null);
  }
  
  public CustomViewAbove(Context paramContext, AttributeSet paramAttributeSet) {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private int a(float paramFloat, int paramInt1, int paramInt2) {
    int i = this.l;
    if (Math.abs(paramInt2) > this.x && Math.abs(paramInt1) > this.w) {
      if (paramInt1 > 0 && paramInt2 > 0)
        return i - 1; 
      int j = i;
      if (paramInt1 < 0) {
        j = i;
        if (paramInt2 < 0)
          return i + 1; 
      } 
      return j;
    } 
    return Math.round(this.l + paramFloat);
  }
  
  private int a(MotionEvent paramMotionEvent, int paramInt) {
    paramInt = MotionEventCompat.findPointerIndex(paramMotionEvent, paramInt);
    if (paramInt == -1)
      this.a = -1; 
    return paramInt;
  }
  
  private void a(boolean paramBoolean) {
    if (this.n != paramBoolean)
      this.n = paramBoolean; 
  }
  
  private boolean a(MotionEvent paramMotionEvent) {
    Rect rect = new Rect();
    Iterator<View> iterator = this.E.iterator();
    while (iterator.hasNext()) {
      ((View)iterator.next()).getHitRect(rect);
      if (rect.contains((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()))
        return true; 
    } 
    return false;
  }
  
  private boolean b(float paramFloat) {
    return e() ? this.y.b(paramFloat) : this.y.a(paramFloat);
  }
  
  private boolean b(MotionEvent paramMotionEvent) {
    boolean bool2 = false;
    int i = (int)(paramMotionEvent.getX() + this.G);
    if (e())
      boolean bool = this.y.a(this.k, this.l, i); 
    boolean bool1 = bool2;
    switch (this.d) {
      case 2:
        return bool1;
      default:
        return false;
      case 0:
        return this.y.b(this.k, i);
      case 1:
        break;
    } 
    bool1 = bool2;
    if (!a(paramMotionEvent))
      return true; 
  }
  
  private void c(MotionEvent paramMotionEvent) {
    int i = this.a;
    int j = a(paramMotionEvent, i);
    if (i != -1) {
      float f1 = MotionEventCompat.getX(paramMotionEvent, j);
      float f2 = f1 - this.t;
      float f3 = Math.abs(f2);
      float f4 = MotionEventCompat.getY(paramMotionEvent, j);
      float f5 = Math.abs(f4 - this.u);
      if (e()) {
        i = this.r / 2;
      } else {
        i = this.r;
      } 
      if (f3 > i && f3 > f5 && b(f2)) {
        p();
        this.t = f1;
        this.u = f4;
        a(true);
        return;
      } 
      if (f3 > this.r) {
        this.q = true;
        return;
      } 
    } 
  }
  
  private void d(int paramInt) {
    int i = getWidth();
    int j = paramInt / i;
    paramInt %= i;
    a(j, paramInt / i, paramInt);
  }
  
  private void d(MotionEvent paramMotionEvent) {
    int i = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (MotionEventCompat.getPointerId(paramMotionEvent, i) == this.a) {
      if (i == 0) {
        i = 1;
      } else {
        i = 0;
      } 
      this.t = MotionEventCompat.getX(paramMotionEvent, i);
      this.a = MotionEventCompat.getPointerId(paramMotionEvent, i);
      if (this.b != null)
        this.b.clear(); 
    } 
  }
  
  private int m() {
    return this.y.a(this.k);
  }
  
  private int n() {
    return this.y.b(this.k);
  }
  
  private void o() {
    if (this.o) {
      a(false);
      this.m.abortAnimation();
      int i = getScrollX();
      int j = getScrollY();
      int k = this.m.getCurrX();
      int m = this.m.getCurrY();
      if (i != k || j != m)
        scrollTo(k, m); 
      if (e()) {
        if (this.D != null)
          this.D.a(); 
      } else if (this.C != null) {
        this.C.a();
      } 
    } 
    this.o = false;
  }
  
  private void p() {
    this.p = true;
    this.F = false;
  }
  
  private void q() {
    this.F = false;
    this.p = false;
    this.q = false;
    this.a = -1;
    if (this.b != null) {
      this.b.recycle();
      this.b = null;
    } 
  }
  
  float a(float paramFloat) {
    return (float)Math.sin((float)((paramFloat - 0.5F) * 0.4712389167638204D));
  }
  
  public int a(int paramInt) {
    switch (paramInt) {
      default:
        return 0;
      case 0:
      case 2:
        return this.y.a(this.k, paramInt);
      case 1:
        break;
    } 
    return this.k.getLeft();
  }
  
  fbj a(fbj paramfbj) {
    fbj fbj1 = this.B;
    this.B = paramfbj;
    return fbj1;
  }
  
  void a() {
    setWillNotDraw(false);
    setDescendantFocusability(262144);
    setFocusable(true);
    Context context = getContext();
    this.m = new Scroller(context, j);
    ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
    this.r = ViewConfigurationCompat.getScaledPagingTouchSlop(viewConfiguration);
    this.w = viewConfiguration.getScaledMinimumFlingVelocity();
    this.c = viewConfiguration.getScaledMaximumFlingVelocity();
    a((fbj)new fbi(this));
    this.x = (int)((context.getResources().getDisplayMetrics()).density * 25.0F);
  }
  
  protected void a(int paramInt1, float paramFloat, int paramInt2) {
    if (this.A != null)
      this.A.a(paramInt1, paramFloat, paramInt2); 
    if (this.B != null)
      this.B.a(paramInt1, paramFloat, paramInt2); 
  }
  
  void a(int paramInt1, int paramInt2) {
    a(paramInt1, paramInt2, 0);
  }
  
  void a(int paramInt1, int paramInt2, int paramInt3) {
    if (getChildCount() == 0) {
      a(false);
      return;
    } 
    int i = getScrollX();
    int j = getScrollY();
    int k = paramInt1 - i;
    paramInt2 -= j;
    if (k == 0 && paramInt2 == 0) {
      o();
      if (e()) {
        if (this.D != null) {
          this.D.a();
          return;
        } 
        return;
      } 
      if (this.C != null) {
        this.C.a();
        return;
      } 
      return;
    } 
    a(true);
    this.o = true;
    paramInt1 = f();
    int m = paramInt1 / 2;
    float f3 = Math.min(1.0F, Math.abs(k) * 1.0F / paramInt1);
    float f1 = m;
    float f2 = m;
    f3 = a(f3);
    paramInt3 = Math.abs(paramInt3);
    if (paramInt3 > 0) {
      paramInt1 = Math.round(1000.0F * Math.abs((f2 * f3 + f1) / paramInt3)) * 4;
    } else {
      paramInt1 = (int)((Math.abs(k) / paramInt1 + 1.0F) * 100.0F);
      paramInt1 = 600;
    } 
    paramInt1 = Math.min(paramInt1, 600);
    this.m.startScroll(i, j, k, paramInt2, paramInt1);
    invalidate();
  }
  
  void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2) {
    a(paramInt, paramBoolean1, paramBoolean2, 0);
  }
  
  void a(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2) {
    if (!paramBoolean2 && this.l == paramInt1) {
      a(false);
      return;
    } 
    int i = this.y.a(paramInt1);
    if (this.l != i) {
      paramInt1 = 1;
    } else {
      paramInt1 = 0;
    } 
    this.l = i;
    int j = a(this.l);
    if (paramInt1 != 0 && this.A != null)
      this.A.a(i); 
    if (paramInt1 != 0 && this.B != null)
      this.B.a(i); 
    if (paramBoolean1) {
      a(j, 0, paramInt2);
      return;
    } 
    o();
    scrollTo(j, 0);
  }
  
  public void a(View paramView) {
    if (!this.E.contains(paramView))
      this.E.add(paramView); 
  }
  
  public boolean a(KeyEvent paramKeyEvent) {
    if (paramKeyEvent.getAction() == 0) {
      switch (paramKeyEvent.getKeyCode()) {
        default:
          return false;
        case 21:
          return c(17);
        case 22:
          return c(66);
        case 61:
          break;
      } 
      if (Build.VERSION.SDK_INT >= 11) {
        if (KeyEventCompat.hasNoModifiers(paramKeyEvent))
          return c(2); 
        if (KeyEventCompat.hasModifiers(paramKeyEvent, 1))
          return c(1); 
      } 
    } 
  }
  
  protected boolean a(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3) {
    if (paramView instanceof ViewGroup) {
      ViewGroup viewGroup = (ViewGroup)paramView;
      int j = paramView.getScrollX();
      int k = paramView.getScrollY();
      int i = viewGroup.getChildCount() - 1;
      while (i >= 0) {
        View view = viewGroup.getChildAt(i);
        if (paramInt2 + j < view.getLeft() || paramInt2 + j >= view.getRight() || paramInt3 + k < view.getTop() || paramInt3 + k >= view.getBottom() || !a(view, true, paramInt1, paramInt2 + j - view.getLeft(), paramInt3 + k - view.getTop())) {
          i--;
          continue;
        } 
        return true;
      } 
    } 
    return !(!paramBoolean || !ViewCompat.canScrollHorizontally(paramView, -paramInt1));
  }
  
  public int b() {
    return this.l;
  }
  
  public int b(int paramInt) {
    switch (paramInt) {
      default:
        return 0;
      case 0:
        return f();
      case 1:
        break;
    } 
    return this.k.getWidth();
  }
  
  public void b(View paramView) {
    this.E.remove(paramView);
  }
  
  public void c() {
    this.E.clear();
  }
  
  public boolean c(int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual findFocus : ()Landroid/view/View;
    //   4: astore #4
    //   6: aload #4
    //   8: astore_3
    //   9: aload #4
    //   11: aload_0
    //   12: if_acmpne -> 17
    //   15: aconst_null
    //   16: astore_3
    //   17: invokestatic getInstance : ()Landroid/view/FocusFinder;
    //   20: aload_0
    //   21: aload_3
    //   22: iload_1
    //   23: invokevirtual findNextFocus : (Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;
    //   26: astore #4
    //   28: aload #4
    //   30: ifnull -> 104
    //   33: aload #4
    //   35: aload_3
    //   36: if_acmpeq -> 104
    //   39: iload_1
    //   40: bipush #17
    //   42: if_icmpne -> 65
    //   45: aload #4
    //   47: invokevirtual requestFocus : ()Z
    //   50: istore_2
    //   51: iload_2
    //   52: ifeq -> 63
    //   55: aload_0
    //   56: iload_1
    //   57: invokestatic getContantForFocusDirection : (I)I
    //   60: invokevirtual playSoundEffect : (I)V
    //   63: iload_2
    //   64: ireturn
    //   65: iload_1
    //   66: bipush #66
    //   68: if_icmpne -> 142
    //   71: aload_3
    //   72: ifnull -> 95
    //   75: aload #4
    //   77: invokevirtual getLeft : ()I
    //   80: aload_3
    //   81: invokevirtual getLeft : ()I
    //   84: if_icmpgt -> 95
    //   87: aload_0
    //   88: invokevirtual l : ()Z
    //   91: istore_2
    //   92: goto -> 51
    //   95: aload #4
    //   97: invokevirtual requestFocus : ()Z
    //   100: istore_2
    //   101: goto -> 51
    //   104: iload_1
    //   105: bipush #17
    //   107: if_icmpeq -> 115
    //   110: iload_1
    //   111: iconst_1
    //   112: if_icmpne -> 123
    //   115: aload_0
    //   116: invokevirtual k : ()Z
    //   119: istore_2
    //   120: goto -> 51
    //   123: iload_1
    //   124: bipush #66
    //   126: if_icmpeq -> 134
    //   129: iload_1
    //   130: iconst_2
    //   131: if_icmpne -> 142
    //   134: aload_0
    //   135: invokevirtual l : ()Z
    //   138: istore_2
    //   139: goto -> 51
    //   142: iconst_0
    //   143: istore_2
    //   144: goto -> 51
  }
  
  public void computeScroll() {
    if (!this.m.isFinished() && this.m.computeScrollOffset()) {
      int i = getScrollX();
      int j = getScrollY();
      int k = this.m.getCurrX();
      int m = this.m.getCurrY();
      if (i != k || j != m) {
        scrollTo(k, m);
        d(k);
      } 
      invalidate();
      return;
    } 
    o();
  }
  
  public int d() {
    return this.k.getLeft() + this.k.getPaddingLeft();
  }
  
  protected void dispatchDraw(Canvas paramCanvas) {
    super.dispatchDraw(paramCanvas);
    this.y.a(this.k, paramCanvas);
    this.y.a(this.k, paramCanvas, j());
    this.y.b(this.k, paramCanvas, j());
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent) {
    return (super.dispatchKeyEvent(paramKeyEvent) || a(paramKeyEvent));
  }
  
  public boolean e() {
    return (this.l == 0 || this.l == 2);
  }
  
  public int f() {
    return (this.y == null) ? 0 : this.y.b();
  }
  
  public boolean g() {
    return this.z;
  }
  
  public View h() {
    return this.k;
  }
  
  public int i() {
    return this.d;
  }
  
  protected float j() {
    return Math.abs(this.G - this.k.getLeft()) / f();
  }
  
  boolean k() {
    if (this.l > 0) {
      setCurrentItem(this.l - 1, true);
      return true;
    } 
    return false;
  }
  
  boolean l() {
    if (this.l < 1) {
      setCurrentItem(this.l + 1, true);
      return true;
    } 
    return false;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent) {
    if (this.z) {
      int i = paramMotionEvent.getAction() & 0xFF;
      if (i == 3 || i == 1 || (i != 0 && this.q)) {
        q();
        return false;
      } 
      switch (i) {
        default:
          if (!this.p) {
            if (this.b == null)
              this.b = VelocityTracker.obtain(); 
            this.b.addMovement(paramMotionEvent);
          } 
          return (this.p || this.F);
        case 2:
          c(paramMotionEvent);
        case 0:
          i = MotionEventCompat.getActionIndex(paramMotionEvent);
          this.a = MotionEventCompat.getPointerId(paramMotionEvent, i);
          if (this.a != -1) {
            float f = MotionEventCompat.getX(paramMotionEvent, i);
            this.s = f;
            this.t = f;
            this.u = MotionEventCompat.getY(paramMotionEvent, i);
            if (b(paramMotionEvent)) {
              this.p = false;
              this.q = false;
              if (e() && this.y.b(this.k, this.l, paramMotionEvent.getX() + this.G))
                this.F = true; 
            } else {
              this.q = true;
            } 
          } 
        case 6:
          break;
      } 
      d(paramMotionEvent);
    } 
    return false;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    this.k.layout(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2) {
    int j = getDefaultSize(0, paramInt1);
    int i = getDefaultSize(0, paramInt2);
    setMeasuredDimension(j, i);
    paramInt1 = getChildMeasureSpec(paramInt1, 0, j);
    paramInt2 = getChildMeasureSpec(paramInt2, 0, i);
    this.k.measure(paramInt1, paramInt2);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3) {
      o();
      scrollTo(a(this.l), getScrollY());
    } 
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent) {
    // Byte code:
    //   0: aload_0
    //   1: getfield z : Z
    //   4: ifne -> 9
    //   7: iconst_0
    //   8: ireturn
    //   9: aload_0
    //   10: getfield p : Z
    //   13: ifne -> 24
    //   16: aload_0
    //   17: aload_1
    //   18: invokespecial b : (Landroid/view/MotionEvent;)Z
    //   21: ifeq -> 7
    //   24: aload_1
    //   25: invokevirtual getAction : ()I
    //   28: istore #5
    //   30: aload_0
    //   31: getfield b : Landroid/view/VelocityTracker;
    //   34: ifnonnull -> 44
    //   37: aload_0
    //   38: invokestatic obtain : ()Landroid/view/VelocityTracker;
    //   41: putfield b : Landroid/view/VelocityTracker;
    //   44: aload_0
    //   45: getfield b : Landroid/view/VelocityTracker;
    //   48: aload_1
    //   49: invokevirtual addMovement : (Landroid/view/MotionEvent;)V
    //   52: iload #5
    //   54: sipush #255
    //   57: iand
    //   58: tableswitch default -> 100, 0 -> 102, 1 -> 275, 2 -> 136, 3 -> 453, 4 -> 100, 5 -> 482, 6 -> 511
    //   100: iconst_1
    //   101: ireturn
    //   102: aload_0
    //   103: invokespecial o : ()V
    //   106: aload_0
    //   107: aload_1
    //   108: aload_1
    //   109: invokestatic getActionIndex : (Landroid/view/MotionEvent;)I
    //   112: invokestatic getPointerId : (Landroid/view/MotionEvent;I)I
    //   115: putfield a : I
    //   118: aload_1
    //   119: invokevirtual getX : ()F
    //   122: fstore_2
    //   123: aload_0
    //   124: fload_2
    //   125: putfield s : F
    //   128: aload_0
    //   129: fload_2
    //   130: putfield t : F
    //   133: goto -> 100
    //   136: aload_0
    //   137: getfield p : Z
    //   140: ifne -> 155
    //   143: aload_0
    //   144: aload_1
    //   145: invokespecial c : (Landroid/view/MotionEvent;)V
    //   148: aload_0
    //   149: getfield q : Z
    //   152: ifne -> 7
    //   155: aload_0
    //   156: getfield p : Z
    //   159: ifeq -> 100
    //   162: aload_0
    //   163: aload_1
    //   164: aload_0
    //   165: getfield a : I
    //   168: invokespecial a : (Landroid/view/MotionEvent;I)I
    //   171: istore #5
    //   173: aload_0
    //   174: getfield a : I
    //   177: iconst_m1
    //   178: if_icmpeq -> 100
    //   181: aload_1
    //   182: iload #5
    //   184: invokestatic getX : (Landroid/view/MotionEvent;I)F
    //   187: fstore_2
    //   188: aload_0
    //   189: getfield t : F
    //   192: fstore_3
    //   193: aload_0
    //   194: fload_2
    //   195: putfield t : F
    //   198: aload_0
    //   199: invokevirtual getScrollX : ()I
    //   202: i2f
    //   203: fload_3
    //   204: fload_2
    //   205: fsub
    //   206: fadd
    //   207: fstore_2
    //   208: aload_0
    //   209: invokespecial m : ()I
    //   212: i2f
    //   213: fstore_3
    //   214: aload_0
    //   215: invokespecial n : ()I
    //   218: i2f
    //   219: fstore #4
    //   221: fload_2
    //   222: fload_3
    //   223: fcmpg
    //   224: ifge -> 262
    //   227: fload_3
    //   228: fstore_2
    //   229: aload_0
    //   230: aload_0
    //   231: getfield t : F
    //   234: fload_2
    //   235: fload_2
    //   236: f2i
    //   237: i2f
    //   238: fsub
    //   239: fadd
    //   240: putfield t : F
    //   243: aload_0
    //   244: fload_2
    //   245: f2i
    //   246: aload_0
    //   247: invokevirtual getScrollY : ()I
    //   250: invokevirtual scrollTo : (II)V
    //   253: aload_0
    //   254: fload_2
    //   255: f2i
    //   256: invokespecial d : (I)V
    //   259: goto -> 100
    //   262: fload_2
    //   263: fload #4
    //   265: fcmpl
    //   266: ifle -> 548
    //   269: fload #4
    //   271: fstore_2
    //   272: goto -> 229
    //   275: aload_0
    //   276: getfield p : Z
    //   279: ifeq -> 407
    //   282: aload_0
    //   283: getfield b : Landroid/view/VelocityTracker;
    //   286: astore #7
    //   288: aload #7
    //   290: sipush #1000
    //   293: aload_0
    //   294: getfield c : I
    //   297: i2f
    //   298: invokevirtual computeCurrentVelocity : (IF)V
    //   301: aload #7
    //   303: aload_0
    //   304: getfield a : I
    //   307: invokestatic getXVelocity : (Landroid/view/VelocityTracker;I)F
    //   310: f2i
    //   311: istore #5
    //   313: aload_0
    //   314: invokevirtual getScrollX : ()I
    //   317: aload_0
    //   318: aload_0
    //   319: getfield l : I
    //   322: invokevirtual a : (I)I
    //   325: isub
    //   326: i2f
    //   327: aload_0
    //   328: invokevirtual f : ()I
    //   331: i2f
    //   332: fdiv
    //   333: fstore_2
    //   334: aload_0
    //   335: aload_1
    //   336: aload_0
    //   337: getfield a : I
    //   340: invokespecial a : (Landroid/view/MotionEvent;I)I
    //   343: istore #6
    //   345: aload_0
    //   346: getfield a : I
    //   349: iconst_m1
    //   350: if_icmpeq -> 392
    //   353: aload_0
    //   354: aload_0
    //   355: fload_2
    //   356: iload #5
    //   358: aload_1
    //   359: iload #6
    //   361: invokestatic getX : (Landroid/view/MotionEvent;I)F
    //   364: aload_0
    //   365: getfield s : F
    //   368: fsub
    //   369: f2i
    //   370: invokespecial a : (FII)I
    //   373: iconst_1
    //   374: iconst_1
    //   375: iload #5
    //   377: invokevirtual a : (IZZI)V
    //   380: aload_0
    //   381: iconst_m1
    //   382: putfield a : I
    //   385: aload_0
    //   386: invokespecial q : ()V
    //   389: goto -> 100
    //   392: aload_0
    //   393: aload_0
    //   394: getfield l : I
    //   397: iconst_1
    //   398: iconst_1
    //   399: iload #5
    //   401: invokevirtual a : (IZZI)V
    //   404: goto -> 380
    //   407: aload_0
    //   408: getfield F : Z
    //   411: ifeq -> 100
    //   414: aload_0
    //   415: getfield y : Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
    //   418: aload_0
    //   419: getfield k : Landroid/view/View;
    //   422: aload_0
    //   423: getfield l : I
    //   426: aload_1
    //   427: invokevirtual getX : ()F
    //   430: aload_0
    //   431: getfield G : F
    //   434: fadd
    //   435: invokevirtual b : (Landroid/view/View;IF)Z
    //   438: ifeq -> 100
    //   441: aload_0
    //   442: iconst_1
    //   443: invokevirtual setCurrentItem : (I)V
    //   446: aload_0
    //   447: invokespecial q : ()V
    //   450: goto -> 100
    //   453: aload_0
    //   454: getfield p : Z
    //   457: ifeq -> 100
    //   460: aload_0
    //   461: aload_0
    //   462: getfield l : I
    //   465: iconst_1
    //   466: iconst_1
    //   467: invokevirtual a : (IZZ)V
    //   470: aload_0
    //   471: iconst_m1
    //   472: putfield a : I
    //   475: aload_0
    //   476: invokespecial q : ()V
    //   479: goto -> 100
    //   482: aload_1
    //   483: invokestatic getActionIndex : (Landroid/view/MotionEvent;)I
    //   486: istore #5
    //   488: aload_0
    //   489: aload_1
    //   490: iload #5
    //   492: invokestatic getX : (Landroid/view/MotionEvent;I)F
    //   495: putfield t : F
    //   498: aload_0
    //   499: aload_1
    //   500: iload #5
    //   502: invokestatic getPointerId : (Landroid/view/MotionEvent;I)I
    //   505: putfield a : I
    //   508: goto -> 100
    //   511: aload_0
    //   512: aload_1
    //   513: invokespecial d : (Landroid/view/MotionEvent;)V
    //   516: aload_0
    //   517: aload_1
    //   518: aload_0
    //   519: getfield a : I
    //   522: invokespecial a : (Landroid/view/MotionEvent;I)I
    //   525: istore #5
    //   527: aload_0
    //   528: getfield a : I
    //   531: iconst_m1
    //   532: if_icmpeq -> 100
    //   535: aload_0
    //   536: aload_1
    //   537: iload #5
    //   539: invokestatic getX : (Landroid/view/MotionEvent;I)F
    //   542: putfield t : F
    //   545: goto -> 100
    //   548: goto -> 229
  }
  
  public void scrollTo(int paramInt1, int paramInt2) {
    super.scrollTo(paramInt1, paramInt2);
    this.G = paramInt1;
    this.y.a(this.k, paramInt1, paramInt2);
    ((SlidingMenu)getParent()).a(j());
  }
  
  public void setAboveOffset(int paramInt) {
    this.k.setPadding(paramInt, this.k.getPaddingTop(), this.k.getPaddingRight(), this.k.getPaddingBottom());
  }
  
  public void setContent(View paramView) {
    if (this.k != null)
      removeView(this.k); 
    this.k = paramView;
    addView(this.k);
  }
  
  public void setCurrentItem(int paramInt) {
    a(paramInt, true, false);
  }
  
  public void setCurrentItem(int paramInt, boolean paramBoolean) {
    a(paramInt, paramBoolean, false);
  }
  
  public void setCustomViewBehind(CustomViewBehind paramCustomViewBehind) {
    this.y = paramCustomViewBehind;
  }
  
  public void setOnClosedListener(fcd paramfcd) {
    this.C = paramfcd;
  }
  
  public void setOnOpenedListener(fcf paramfcf) {
    this.D = paramfcf;
  }
  
  public void setOnPageChangeListener(fbj paramfbj) {
    this.A = paramfbj;
  }
  
  public void setSlidingEnabled(boolean paramBoolean) {
    this.z = paramBoolean;
  }
  
  public void setTouchMode(int paramInt) {
    this.d = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\jeremyfeinstein\slidingmenu\lib\CustomViewAbove.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */