import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.View;

public class clh {
  protected final Matrix a = new Matrix();
  
  protected RectF b = new RectF();
  
  protected float c = 0.0F;
  
  protected float d = 0.0F;
  
  protected float[] e = new float[9];
  
  protected Matrix f = new Matrix();
  
  protected final float[] g = new float[9];
  
  private float h = 1.0F;
  
  private float i = Float.MAX_VALUE;
  
  private float j = 1.0F;
  
  private float k = Float.MAX_VALUE;
  
  private float l = 1.0F;
  
  private float m = 1.0F;
  
  private float n = 0.0F;
  
  private float o = 0.0F;
  
  private float p = 0.0F;
  
  private float q = 0.0F;
  
  public boolean A() {
    return (C() && B());
  }
  
  public boolean B() {
    return (this.m <= this.h && this.h <= 1.0F);
  }
  
  public boolean C() {
    return (this.l <= this.j && this.j <= 1.0F);
  }
  
  public boolean D() {
    return (this.p <= 0.0F && this.q <= 0.0F);
  }
  
  public boolean E() {
    return (this.l > this.j);
  }
  
  public boolean F() {
    return (this.l < this.k);
  }
  
  public boolean G() {
    return (this.m > this.h);
  }
  
  public boolean H() {
    return (this.m < this.i);
  }
  
  public Matrix a(Matrix paramMatrix, View paramView, boolean paramBoolean) {
    this.a.set(paramMatrix);
    a(this.a, this.b);
    if (paramBoolean)
      paramView.invalidate(); 
    paramMatrix.set(this.a);
    return paramMatrix;
  }
  
  public Matrix a(float[] paramArrayOffloat) {
    Matrix matrix = new Matrix();
    a(paramArrayOffloat, matrix);
    return matrix;
  }
  
  public void a(float paramFloat) {
    float f = paramFloat;
    if (paramFloat < 1.0F)
      f = 1.0F; 
    this.j = f;
    a(this.a, this.b);
  }
  
  public void a(float paramFloat1, float paramFloat2) {
    float f1 = b();
    float f2 = d();
    float f3 = c();
    float f4 = e();
    this.d = paramFloat2;
    this.c = paramFloat1;
    a(f1, f2, f3, f4);
  }
  
  public void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    this.b.set(paramFloat1, paramFloat2, this.c - paramFloat3, this.d - paramFloat4);
  }
  
  public void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, Matrix paramMatrix) {
    paramMatrix.reset();
    paramMatrix.set(this.a);
    paramMatrix.postScale(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
  }
  
  public void a(float paramFloat1, float paramFloat2, Matrix paramMatrix) {
    paramMatrix.reset();
    paramMatrix.set(this.a);
    paramMatrix.postScale(1.4F, 1.4F, paramFloat1, paramFloat2);
  }
  
  public void a(Matrix paramMatrix) {
    paramMatrix.reset();
    paramMatrix.set(this.a);
    paramMatrix.postScale(1.0F, 1.0F, 0.0F, 0.0F);
  }
  
  public void a(Matrix paramMatrix, RectF paramRectF) {
    float f1 = 0.0F;
    paramMatrix.getValues(this.g);
    float f3 = this.g[2];
    float f2 = this.g[0];
    float f4 = this.g[5];
    float f5 = this.g[4];
    this.l = Math.min(Math.max(this.j, f2), this.k);
    this.m = Math.min(Math.max(this.h, f5), this.i);
    if (paramRectF != null) {
      f2 = paramRectF.width();
      f1 = paramRectF.height();
    } else {
      f2 = 0.0F;
    } 
    this.n = Math.min(Math.max(f3, -f2 * (this.l - 1.0F) - this.p), this.p);
    this.o = Math.max(Math.min(f4, f1 * (this.m - 1.0F) + this.q), -this.q);
    this.g[2] = this.n;
    this.g[0] = this.l;
    this.g[5] = this.o;
    this.g[4] = this.m;
    paramMatrix.setValues(this.g);
  }
  
  public void a(float[] paramArrayOffloat, Matrix paramMatrix) {
    paramMatrix.reset();
    paramMatrix.set(this.a);
    float f1 = paramArrayOffloat[0];
    float f2 = b();
    float f3 = paramArrayOffloat[1];
    float f4 = d();
    paramMatrix.postTranslate(-(f1 - f2), -(f3 - f4));
  }
  
  public void a(float[] paramArrayOffloat, View paramView) {
    Matrix matrix = this.f;
    matrix.reset();
    matrix.set(this.a);
    float f1 = paramArrayOffloat[0];
    float f2 = b();
    float f3 = paramArrayOffloat[1];
    float f4 = d();
    matrix.postTranslate(-(f1 - f2), -(f3 - f4));
    a(matrix, paramView, true);
  }
  
  public boolean a() {
    return (this.d > 0.0F && this.c > 0.0F);
  }
  
  public float b() {
    return this.b.left;
  }
  
  public Matrix b(float paramFloat1, float paramFloat2) {
    Matrix matrix = new Matrix();
    a(paramFloat1, paramFloat2, matrix);
    return matrix;
  }
  
  public Matrix b(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    Matrix matrix = new Matrix();
    a(paramFloat1, paramFloat2, paramFloat3, paramFloat4, matrix);
    return matrix;
  }
  
  public void b(float paramFloat) {
    float f = paramFloat;
    if (paramFloat == 0.0F)
      f = Float.MAX_VALUE; 
    this.k = f;
    a(this.a, this.b);
  }
  
  public void b(float paramFloat1, float paramFloat2, Matrix paramMatrix) {
    paramMatrix.reset();
    paramMatrix.set(this.a);
    paramMatrix.postScale(0.7F, 0.7F, paramFloat1, paramFloat2);
  }
  
  public void b(Matrix paramMatrix) {
    this.j = 1.0F;
    this.h = 1.0F;
    paramMatrix.set(this.a);
    float[] arrayOfFloat = this.e;
    for (int i = 0; i < 9; i++)
      arrayOfFloat[i] = 0.0F; 
    paramMatrix.getValues(arrayOfFloat);
    arrayOfFloat[2] = 0.0F;
    arrayOfFloat[5] = 0.0F;
    arrayOfFloat[0] = 1.0F;
    arrayOfFloat[4] = 1.0F;
    paramMatrix.setValues(arrayOfFloat);
  }
  
  public float c() {
    return this.c - this.b.right;
  }
  
  public Matrix c(float paramFloat1, float paramFloat2) {
    Matrix matrix = new Matrix();
    b(paramFloat1, paramFloat2, matrix);
    return matrix;
  }
  
  public Matrix c(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    Matrix matrix = new Matrix();
    matrix.set(this.a);
    matrix.setScale(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    return matrix;
  }
  
  public void c(float paramFloat) {
    float f = paramFloat;
    if (paramFloat < 1.0F)
      f = 1.0F; 
    this.h = f;
    a(this.a, this.b);
  }
  
  public void c(float paramFloat1, float paramFloat2, Matrix paramMatrix) {
    paramMatrix.reset();
    paramMatrix.set(this.a);
    paramMatrix.postScale(paramFloat1, paramFloat2);
  }
  
  public float d() {
    return this.b.top;
  }
  
  public Matrix d(float paramFloat1, float paramFloat2) {
    Matrix matrix = new Matrix();
    c(paramFloat1, paramFloat2, matrix);
    return matrix;
  }
  
  public void d(float paramFloat) {
    float f = paramFloat;
    if (paramFloat == 0.0F)
      f = Float.MAX_VALUE; 
    this.i = f;
    a(this.a, this.b);
  }
  
  public void d(float paramFloat1, float paramFloat2, Matrix paramMatrix) {
    paramMatrix.reset();
    paramMatrix.set(this.a);
    paramMatrix.setScale(paramFloat1, paramFloat2);
  }
  
  public float e() {
    return this.d - this.b.bottom;
  }
  
  public Matrix e(float paramFloat1, float paramFloat2) {
    Matrix matrix = new Matrix();
    d(paramFloat1, paramFloat2, matrix);
    return matrix;
  }
  
  public boolean e(float paramFloat) {
    return (g(paramFloat) && h(paramFloat));
  }
  
  public float f() {
    return this.b.top;
  }
  
  public void f(float paramFloat1, float paramFloat2) {
    float f = paramFloat1;
    if (paramFloat1 < 1.0F)
      f = 1.0F; 
    paramFloat1 = paramFloat2;
    if (paramFloat2 == 0.0F)
      paramFloat1 = Float.MAX_VALUE; 
    this.j = f;
    this.k = paramFloat1;
    a(this.a, this.b);
  }
  
  public boolean f(float paramFloat) {
    return (i(paramFloat) && j(paramFloat));
  }
  
  public float g() {
    return this.b.left;
  }
  
  public void g(float paramFloat1, float paramFloat2) {
    float f = paramFloat1;
    if (paramFloat1 < 1.0F)
      f = 1.0F; 
    paramFloat1 = paramFloat2;
    if (paramFloat2 == 0.0F)
      paramFloat1 = Float.MAX_VALUE; 
    this.h = f;
    this.i = paramFloat1;
    a(this.a, this.b);
  }
  
  public boolean g(float paramFloat) {
    return (this.b.left <= 1.0F + paramFloat);
  }
  
  public float h() {
    return this.b.right;
  }
  
  public boolean h(float paramFloat) {
    paramFloat = (int)(paramFloat * 100.0F) / 100.0F;
    return (this.b.right >= paramFloat - 1.0F);
  }
  
  public boolean h(float paramFloat1, float paramFloat2) {
    return (e(paramFloat1) && f(paramFloat2));
  }
  
  public float i() {
    return this.b.bottom;
  }
  
  public boolean i(float paramFloat) {
    return (this.b.top <= paramFloat);
  }
  
  public float j() {
    return this.b.width();
  }
  
  public boolean j(float paramFloat) {
    paramFloat = (int)(paramFloat * 100.0F) / 100.0F;
    return (this.b.bottom >= paramFloat);
  }
  
  public float k() {
    return this.b.height();
  }
  
  public void k(float paramFloat) {
    this.p = clg.a(paramFloat);
  }
  
  public RectF l() {
    return this.b;
  }
  
  public void l(float paramFloat) {
    this.q = clg.a(paramFloat);
  }
  
  public cla m() {
    return cla.a(this.b.centerX(), this.b.centerY());
  }
  
  public float n() {
    return this.d;
  }
  
  public float o() {
    return this.c;
  }
  
  public float p() {
    return Math.min(this.b.width(), this.b.height());
  }
  
  public Matrix q() {
    Matrix matrix = new Matrix();
    b(matrix);
    return matrix;
  }
  
  public Matrix r() {
    return this.a;
  }
  
  public float s() {
    return this.l;
  }
  
  public float t() {
    return this.m;
  }
  
  public float u() {
    return this.j;
  }
  
  public float v() {
    return this.k;
  }
  
  public float w() {
    return this.h;
  }
  
  public float x() {
    return this.i;
  }
  
  public float y() {
    return this.n;
  }
  
  public float z() {
    return this.o;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\clh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */