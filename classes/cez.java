import com.github.mikephil.charting.data.BarEntry;

public class cez extends cey<cik> {
  protected int g = 0;
  
  protected int h = 1;
  
  protected boolean i = false;
  
  protected boolean j = false;
  
  protected float k = 1.0F;
  
  public cez(int paramInt1, int paramInt2, boolean paramBoolean) {
    super(paramInt1);
    this.h = paramInt2;
    this.i = paramBoolean;
  }
  
  public void a(float paramFloat) {
    this.k = paramFloat;
  }
  
  protected void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4) {
    float[] arrayOfFloat = this.b;
    int i = this.a;
    this.a = i + 1;
    arrayOfFloat[i] = paramFloat1;
    arrayOfFloat = this.b;
    i = this.a;
    this.a = i + 1;
    arrayOfFloat[i] = paramFloat2;
    arrayOfFloat = this.b;
    i = this.a;
    this.a = i + 1;
    arrayOfFloat[i] = paramFloat3;
    arrayOfFloat = this.b;
    i = this.a;
    this.a = i + 1;
    arrayOfFloat[i] = paramFloat4;
  }
  
  public void a(cik paramcik) {
    float f1 = paramcik.I();
    float f2 = this.c;
    float f3 = this.k / 2.0F;
    int i = 0;
    label68: while (i < f1 * f2) {
      BarEntry barEntry = paramcik.m(i);
      if (barEntry == null)
        continue; 
      float f7 = barEntry.k();
      float f4 = barEntry.c();
      float[] arrayOfFloat = barEntry.b();
      if (!this.i || arrayOfFloat == null) {
        float f8;
        float f9;
        if (this.j) {
          if (f4 >= 0.0F) {
            f8 = f4;
          } else {
            f8 = 0.0F;
          } 
          if (f4 <= 0.0F) {
            f9 = f4;
          } else {
            f9 = 0.0F;
          } 
        } else {
          float f;
          if (f4 >= 0.0F) {
            f = f4;
          } else {
            f = 0.0F;
          } 
          f9 = f;
          f8 = f4;
          if (f4 > 0.0F) {
            f8 = 0.0F;
            f9 = f;
          } 
        } 
        if (f9 > 0.0F) {
          f9 *= this.d;
        } else {
          f8 *= this.d;
        } 
        a(f7 - f3, f9, f7 + f3, f8);
        continue;
      } 
      float f6 = 0.0F;
      float f5 = -barEntry.g();
      int j = 0;
      while (true) {
        if (j < arrayOfFloat.length) {
          float f8;
          float f9;
          f4 = arrayOfFloat[j];
          if (f4 == 0.0F && (f6 == 0.0F || f5 == 0.0F)) {
            f8 = f4;
            f9 = f5;
          } else if (f4 >= 0.0F) {
            f4 += f6;
            f8 = f6;
            f6 = f4;
            f9 = f5;
          } else {
            float f = Math.abs(f4);
            f4 = Math.abs(f4);
            f8 = f5;
            f9 = f4 + f5;
            f4 = f + f5;
          } 
          if (this.j) {
            if (f8 >= f4) {
              f5 = f8;
            } else {
              f5 = f4;
            } 
            if (f8 > f4)
              f8 = f4; 
          } else {
            if (f8 >= f4) {
              f5 = f8;
            } else {
              f5 = f4;
            } 
            if (f8 > f4)
              f8 = f4; 
            f4 = f5;
            f5 = f8;
            f8 = f4;
          } 
          a(f7 - f3, f8 * this.d, f7 + f3, f5 * this.d);
          j++;
          f5 = f9;
          continue;
        } 
        i++;
        continue label68;
      } 
    } 
    a();
  }
  
  public void a(boolean paramBoolean) {
    this.j = paramBoolean;
  }
  
  public void c(int paramInt) {
    this.g = paramInt;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cez.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */