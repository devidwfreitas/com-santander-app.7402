import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;
import android.widget.ImageView;
import java.util.HashSet;

public class grp extends Drawable {
  public static final String a = "RoundedDrawable";
  
  public static final int b = -16777216;
  
  public static final int c = 0;
  
  public static final int d = 1;
  
  public static final int e = 2;
  
  public static final int f = 3;
  
  private final RectF g = new RectF();
  
  private final RectF h = new RectF();
  
  private final RectF i = new RectF();
  
  private final Bitmap j;
  
  private final Paint k;
  
  private final int l;
  
  private final int m;
  
  private final RectF n = new RectF();
  
  private final Paint o;
  
  private final Matrix p = new Matrix();
  
  private final RectF q = new RectF();
  
  private Shader.TileMode r = Shader.TileMode.CLAMP;
  
  private Shader.TileMode s = Shader.TileMode.CLAMP;
  
  private boolean t = true;
  
  private float u = 0.0F;
  
  private final boolean[] v = new boolean[] { true, true, true, true };
  
  private boolean w = false;
  
  private float x = 0.0F;
  
  private ColorStateList y = ColorStateList.valueOf(-16777216);
  
  private ImageView.ScaleType z = ImageView.ScaleType.FIT_CENTER;
  
  public grp(Bitmap paramBitmap) {
    this.j = paramBitmap;
    this.l = paramBitmap.getWidth();
    this.m = paramBitmap.getHeight();
    this.i.set(0.0F, 0.0F, this.l, this.m);
    this.k = new Paint();
    this.k.setStyle(Paint.Style.FILL);
    this.k.setAntiAlias(true);
    this.o = new Paint();
    this.o.setStyle(Paint.Style.STROKE);
    this.o.setAntiAlias(true);
    this.o.setColor(this.y.getColorForState(getState(), -16777216));
    this.o.setStrokeWidth(this.x);
  }
  
  public static Drawable a(Drawable paramDrawable) {
    LayerDrawable layerDrawable1;
    Drawable drawable = paramDrawable;
    if (paramDrawable != null) {
      if (paramDrawable instanceof grp)
        return paramDrawable; 
    } else {
      return drawable;
    } 
    if (paramDrawable instanceof LayerDrawable) {
      layerDrawable1 = (LayerDrawable)paramDrawable;
      int j = layerDrawable1.getNumberOfLayers();
      int i = 0;
      while (true) {
        Drawable drawable1;
        LayerDrawable layerDrawable = layerDrawable1;
        if (i < j) {
          drawable1 = layerDrawable1.getDrawable(i);
          layerDrawable1.setDrawableByLayerId(layerDrawable1.getId(i), a(drawable1));
          i++;
          continue;
        } 
        return drawable1;
      } 
    } 
    Bitmap bitmap = b((Drawable)layerDrawable1);
    LayerDrawable layerDrawable2 = layerDrawable1;
    return (Drawable)((bitmap != null) ? new grp(bitmap) : layerDrawable2);
  }
  
  public static grp a(Bitmap paramBitmap) {
    return (paramBitmap != null) ? new grp(paramBitmap) : null;
  }
  
  private void a(Canvas paramCanvas) {
    if (!b(this.v) && this.u != 0.0F) {
      float f1 = this.h.left;
      float f2 = this.h.top;
      float f3 = this.h.width() + f1;
      float f4 = this.h.height() + f2;
      float f5 = this.u;
      if (!this.v[0]) {
        this.q.set(f1, f2, f1 + f5, f2 + f5);
        paramCanvas.drawRect(this.q, this.k);
      } 
      if (!this.v[1]) {
        this.q.set(f3 - f5, f2, f3, f5);
        paramCanvas.drawRect(this.q, this.k);
      } 
      if (!this.v[2]) {
        this.q.set(f3 - f5, f4 - f5, f3, f4);
        paramCanvas.drawRect(this.q, this.k);
      } 
      if (!this.v[3]) {
        this.q.set(f1, f4 - f5, f5 + f1, f4);
        paramCanvas.drawRect(this.q, this.k);
        return;
      } 
    } 
  }
  
  private static boolean a(int paramInt, boolean[] paramArrayOfboolean) {
    int j = paramArrayOfboolean.length;
    for (int i = 0; i < j; i++) {
      boolean bool1;
      boolean bool2 = paramArrayOfboolean[i];
      if (i == paramInt) {
        bool1 = true;
      } else {
        bool1 = false;
      } 
      if (bool2 != bool1)
        return false; 
    } 
    return true;
  }
  
  private static boolean a(boolean[] paramArrayOfboolean) {
    boolean bool = false;
    int j = paramArrayOfboolean.length;
    for (int i = 0;; i++) {
      boolean bool1 = bool;
      if (i < j) {
        if (paramArrayOfboolean[i])
          return true; 
      } else {
        return bool1;
      } 
    } 
  }
  
  public static Bitmap b(Drawable paramDrawable) {
    if (paramDrawable instanceof BitmapDrawable)
      return ((BitmapDrawable)paramDrawable).getBitmap(); 
    int i = Math.max(paramDrawable.getIntrinsicWidth(), 2);
    int j = Math.max(paramDrawable.getIntrinsicHeight(), 2);
    try {
      Bitmap bitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
      Canvas canvas = new Canvas(bitmap);
      paramDrawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
      paramDrawable.draw(canvas);
      return bitmap;
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      Log.w("RoundedDrawable", "Failed to create bitmap from drawable!");
      return null;
    } 
  }
  
  private void b(Canvas paramCanvas) {
    if (!b(this.v) && this.u != 0.0F) {
      float f1 = this.h.left;
      float f2 = this.h.top;
      float f3 = f1 + this.h.width();
      float f4 = f2 + this.h.height();
      float f5 = this.u;
      float f6 = this.x / 2.0F;
      if (!this.v[0]) {
        paramCanvas.drawLine(f1 - f6, f2, f1 + f5, f2, this.o);
        paramCanvas.drawLine(f1, f2 - f6, f1, f2 + f5, this.o);
      } 
      if (!this.v[1]) {
        paramCanvas.drawLine(f3 - f5 - f6, f2, f3, f2, this.o);
        paramCanvas.drawLine(f3, f2 - f6, f3, f2 + f5, this.o);
      } 
      if (!this.v[2]) {
        paramCanvas.drawLine(f3 - f5 - f6, f4, f3 + f6, f4, this.o);
        paramCanvas.drawLine(f3, f4 - f5, f3, f4, this.o);
      } 
      if (!this.v[3]) {
        paramCanvas.drawLine(f1 - f6, f4, f1 + f5, f4, this.o);
        paramCanvas.drawLine(f1, f4 - f5, f1, f4, this.o);
        return;
      } 
    } 
  }
  
  private static boolean b(boolean[] paramArrayOfboolean) {
    int j = paramArrayOfboolean.length;
    for (int i = 0; i < j; i++) {
      if (paramArrayOfboolean[i])
        return false; 
    } 
    return true;
  }
  
  private void k() {
    float f2;
    float f3;
    float f1 = 0.0F;
    switch (grq.a[this.z.ordinal()]) {
      default:
        this.n.set(this.i);
        this.p.setRectToRect(this.i, this.g, Matrix.ScaleToFit.CENTER);
        this.p.mapRect(this.n);
        this.n.inset(this.x / 2.0F, this.x / 2.0F);
        this.p.setRectToRect(this.i, this.n, Matrix.ScaleToFit.FILL);
        this.h.set(this.n);
        return;
      case 1:
        this.n.set(this.g);
        this.n.inset(this.x / 2.0F, this.x / 2.0F);
        this.p.reset();
        this.p.setTranslate((int)((this.n.width() - this.l) * 0.5F + 0.5F), (int)((this.n.height() - this.m) * 0.5F + 0.5F));
        this.h.set(this.n);
        return;
      case 2:
        this.n.set(this.g);
        this.n.inset(this.x / 2.0F, this.x / 2.0F);
        this.p.reset();
        if (this.l * this.n.height() > this.n.width() * this.m) {
          f3 = this.n.height() / this.m;
          f2 = (this.n.width() - this.l * f3) * 0.5F;
        } else {
          f3 = this.n.width() / this.l;
          f1 = this.n.height();
          float f = this.m;
          f2 = 0.0F;
          f1 = (f1 - f * f3) * 0.5F;
        } 
        this.p.setScale(f3, f3);
        this.p.postTranslate((int)(f2 + 0.5F), (int)(f1 + 0.5F));
        this.h.set(this.n);
        return;
      case 3:
        this.p.reset();
        if (this.l <= this.g.width() && this.m <= this.g.height()) {
          f1 = 1.0F;
        } else {
          f1 = Math.min(this.g.width() / this.l, this.g.height() / this.m);
        } 
        f2 = (int)((this.g.width() - this.l * f1) * 0.5F + 0.5F);
        f3 = (int)((this.g.height() - this.m * f1) * 0.5F + 0.5F);
        this.p.setScale(f1, f1);
        this.p.postTranslate(f2, f3);
        this.n.set(this.i);
        this.p.mapRect(this.n);
        this.n.inset(this.x / 2.0F, this.x / 2.0F);
        this.p.setRectToRect(this.i, this.n, Matrix.ScaleToFit.FILL);
        this.h.set(this.n);
        return;
      case 5:
        this.n.set(this.i);
        this.p.setRectToRect(this.i, this.g, Matrix.ScaleToFit.END);
        this.p.mapRect(this.n);
        this.n.inset(this.x / 2.0F, this.x / 2.0F);
        this.p.setRectToRect(this.i, this.n, Matrix.ScaleToFit.FILL);
        this.h.set(this.n);
        return;
      case 6:
        this.n.set(this.i);
        this.p.setRectToRect(this.i, this.g, Matrix.ScaleToFit.START);
        this.p.mapRect(this.n);
        this.n.inset(this.x / 2.0F, this.x / 2.0F);
        this.p.setRectToRect(this.i, this.n, Matrix.ScaleToFit.FILL);
        this.h.set(this.n);
        return;
      case 7:
        break;
    } 
    this.n.set(this.g);
    this.n.inset(this.x / 2.0F, this.x / 2.0F);
    this.p.reset();
    this.p.setRectToRect(this.i, this.n, Matrix.ScaleToFit.FILL);
    this.h.set(this.n);
  }
  
  public float a(int paramInt) {
    return this.v[paramInt] ? this.u : 0.0F;
  }
  
  public Bitmap a() {
    return this.j;
  }
  
  public grp a(float paramFloat) {
    a(paramFloat, paramFloat, paramFloat, paramFloat);
    return this;
  }
  
  public grp a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    boolean bool2 = true;
    HashSet<Float> hashSet = new HashSet(4);
    hashSet.add(Float.valueOf(paramFloat1));
    hashSet.add(Float.valueOf(paramFloat2));
    hashSet.add(Float.valueOf(paramFloat3));
    hashSet.add(Float.valueOf(paramFloat4));
    hashSet.remove(Float.valueOf(0.0F));
    if (hashSet.size() > 1)
      throw new IllegalArgumentException("Multiple nonzero corner radii not yet supported."); 
    if (!hashSet.isEmpty()) {
      float f = ((Float)hashSet.iterator().next()).floatValue();
      if (Float.isInfinite(f) || Float.isNaN(f) || f < 0.0F)
        throw new IllegalArgumentException("Invalid radius value: " + f); 
      this.u = f;
    } else {
      this.u = 0.0F;
    } 
    boolean[] arrayOfBoolean = this.v;
    if (paramFloat1 > 0.0F) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    arrayOfBoolean[0] = bool1;
    arrayOfBoolean = this.v;
    if (paramFloat2 > 0.0F) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    arrayOfBoolean[1] = bool1;
    arrayOfBoolean = this.v;
    if (paramFloat3 > 0.0F) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    arrayOfBoolean[2] = bool1;
    arrayOfBoolean = this.v;
    if (paramFloat4 > 0.0F) {
      bool1 = bool2;
      arrayOfBoolean[3] = bool1;
      return this;
    } 
    boolean bool1 = false;
    arrayOfBoolean[3] = bool1;
    return this;
  }
  
  public grp a(int paramInt, float paramFloat) {
    if (paramFloat != 0.0F && this.u != 0.0F && this.u != paramFloat)
      throw new IllegalArgumentException("Multiple nonzero corner radii not yet supported."); 
    if (paramFloat == 0.0F) {
      if (a(paramInt, this.v))
        this.u = 0.0F; 
      this.v[paramInt] = false;
      return this;
    } 
    if (this.u == 0.0F)
      this.u = paramFloat; 
    this.v[paramInt] = true;
    return this;
  }
  
  public grp a(ColorStateList paramColorStateList) {
    if (paramColorStateList == null)
      paramColorStateList = ColorStateList.valueOf(0); 
    this.y = paramColorStateList;
    this.o.setColor(this.y.getColorForState(getState(), -16777216));
    return this;
  }
  
  public grp a(Shader.TileMode paramTileMode) {
    if (this.r != paramTileMode) {
      this.r = paramTileMode;
      this.t = true;
      invalidateSelf();
    } 
    return this;
  }
  
  public grp a(ImageView.ScaleType paramScaleType) {
    ImageView.ScaleType scaleType = paramScaleType;
    if (paramScaleType == null)
      scaleType = ImageView.ScaleType.FIT_CENTER; 
    if (this.z != scaleType) {
      this.z = scaleType;
      k();
    } 
    return this;
  }
  
  public grp a(boolean paramBoolean) {
    this.w = paramBoolean;
    return this;
  }
  
  public float b() {
    return this.u;
  }
  
  public grp b(float paramFloat) {
    this.x = paramFloat;
    this.o.setStrokeWidth(this.x);
    return this;
  }
  
  public grp b(int paramInt) {
    return a(ColorStateList.valueOf(paramInt));
  }
  
  public grp b(Shader.TileMode paramTileMode) {
    if (this.s != paramTileMode) {
      this.s = paramTileMode;
      this.t = true;
      invalidateSelf();
    } 
    return this;
  }
  
  public float c() {
    return this.x;
  }
  
  public int d() {
    return this.y.getDefaultColor();
  }
  
  public void draw(Canvas paramCanvas) {
    if (this.t) {
      BitmapShader bitmapShader = new BitmapShader(this.j, this.r, this.s);
      if (this.r == Shader.TileMode.CLAMP && this.s == Shader.TileMode.CLAMP)
        bitmapShader.setLocalMatrix(this.p); 
      this.k.setShader((Shader)bitmapShader);
      this.t = false;
    } 
    if (this.w) {
      if (this.x > 0.0F) {
        paramCanvas.drawOval(this.h, this.k);
        paramCanvas.drawOval(this.n, this.o);
        return;
      } 
      paramCanvas.drawOval(this.h, this.k);
      return;
    } 
    if (a(this.v)) {
      float f = this.u;
      if (this.x > 0.0F) {
        paramCanvas.drawRoundRect(this.h, f, f, this.k);
        paramCanvas.drawRoundRect(this.n, f, f, this.o);
        a(paramCanvas);
        b(paramCanvas);
        return;
      } 
      paramCanvas.drawRoundRect(this.h, f, f, this.k);
      a(paramCanvas);
      return;
    } 
    paramCanvas.drawRect(this.h, this.k);
    paramCanvas.drawRect(this.n, this.o);
  }
  
  public ColorStateList e() {
    return this.y;
  }
  
  public boolean f() {
    return this.w;
  }
  
  public ImageView.ScaleType g() {
    return this.z;
  }
  
  public int getAlpha() {
    return this.k.getAlpha();
  }
  
  @SuppressLint({"Override"})
  public ColorFilter getColorFilter() {
    return this.k.getColorFilter();
  }
  
  public int getIntrinsicHeight() {
    return this.m;
  }
  
  public int getIntrinsicWidth() {
    return this.l;
  }
  
  public int getOpacity() {
    return -3;
  }
  
  public Shader.TileMode h() {
    return this.r;
  }
  
  public Shader.TileMode i() {
    return this.s;
  }
  
  public boolean isStateful() {
    return this.y.isStateful();
  }
  
  public Bitmap j() {
    return b(this);
  }
  
  protected void onBoundsChange(Rect paramRect) {
    super.onBoundsChange(paramRect);
    this.g.set(paramRect);
    k();
  }
  
  protected boolean onStateChange(int[] paramArrayOfint) {
    int i = this.y.getColorForState(paramArrayOfint, 0);
    if (this.o.getColor() != i) {
      this.o.setColor(i);
      return true;
    } 
    return super.onStateChange(paramArrayOfint);
  }
  
  public void setAlpha(int paramInt) {
    this.k.setAlpha(paramInt);
    invalidateSelf();
  }
  
  public void setColorFilter(ColorFilter paramColorFilter) {
    this.k.setColorFilter(paramColorFilter);
    invalidateSelf();
  }
  
  public void setDither(boolean paramBoolean) {
    this.k.setDither(paramBoolean);
    invalidateSelf();
  }
  
  public void setFilterBitmap(boolean paramBoolean) {
    this.k.setFilterBitmap(paramBoolean);
    invalidateSelf();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\grp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */