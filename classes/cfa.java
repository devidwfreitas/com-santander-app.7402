import com.github.mikephil.charting.data.BarEntry;

public class cfa extends cez {
  public cfa(int paramInt1, int paramInt2, boolean paramBoolean) {
    super(paramInt1, paramInt2, paramBoolean);
  }
  
  public void a(cik paramcik) {
    float f1 = paramcik.I();
    float f2 = this.c;
    float f3 = this.k / 2.0F;
    int i = 0;
    label64: while (i < f1 * f2) {
      BarEntry barEntry = paramcik.m(i);
      if (barEntry == null)
        continue; 
      float f6 = barEntry.k();
      float f4 = barEntry.c();
      float[] arrayOfFloat = barEntry.b();
      if (!this.i || arrayOfFloat == null) {
        float f7;
        float f8;
        if (this.j) {
          if (f4 >= 0.0F) {
            f7 = f4;
          } else {
            f7 = 0.0F;
          } 
          if (f4 <= 0.0F) {
            f8 = f4;
          } else {
            f8 = 0.0F;
          } 
        } else {
          float f;
          if (f4 >= 0.0F) {
            f = f4;
          } else {
            f = 0.0F;
          } 
          f8 = f;
          f7 = f4;
          if (f4 > 0.0F) {
            f7 = 0.0F;
            f8 = f;
          } 
        } 
        if (f8 > 0.0F) {
          f8 *= this.d;
        } else {
          f7 *= this.d;
        } 
        a(f7, f6 + f3, f8, f6 - f3);
        continue;
      } 
      f4 = 0.0F;
      float f5 = -barEntry.g();
      int j = 0;
      while (true) {
        if (j < arrayOfFloat.length) {
          float f8;
          float f9;
          float f7 = arrayOfFloat[j];
          if (f7 >= 0.0F) {
            f8 = f4 + f7;
            f9 = f8;
            f7 = f4;
            f4 = f8;
            f8 = f5;
          } else {
            float f = Math.abs(f7) + f5;
            f8 = Math.abs(f7);
            f7 = f5;
            f8 += f5;
            f9 = f4;
            f4 = f;
          } 
          if (this.j) {
            if (f7 >= f4) {
              f5 = f7;
            } else {
              f5 = f4;
            } 
            if (f7 > f4)
              f7 = f4; 
            f4 = f5;
          } else {
            if (f7 >= f4) {
              f5 = f7;
            } else {
              f5 = f4;
            } 
            if (f7 > f4)
              f7 = f4; 
            f4 = f7;
            f7 = f5;
          } 
          f5 = this.d;
          a(f4 * this.d, f6 + f3, f7 * f5, f6 - f3);
          j++;
          f5 = f8;
          f4 = f9;
          continue;
        } 
        i++;
        continue label64;
      } 
    } 
    a();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cfa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */