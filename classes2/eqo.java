public class eqo {
  private final float a;
  
  private final float b;
  
  public eqo(float paramFloat1, float paramFloat2) {
    this.a = paramFloat1;
    this.b = paramFloat2;
  }
  
  public static float a(eqo parameqo1, eqo parameqo2) {
    return eue.a(parameqo1.a, parameqo1.b, parameqo2.a, parameqo2.b);
  }
  
  private static float a(eqo parameqo1, eqo parameqo2, eqo parameqo3) {
    float f1 = parameqo2.a;
    float f2 = parameqo2.b;
    float f3 = parameqo3.a;
    float f4 = parameqo1.b;
    float f5 = parameqo3.b;
    return (f3 - f1) * (f4 - f2) - (parameqo1.a - f1) * (f5 - f2);
  }
  
  public static void a(eqo[] paramArrayOfeqo) {
    eqo eqo1;
    eqo eqo2;
    eqo eqo3;
    float f1 = a(paramArrayOfeqo[0], paramArrayOfeqo[1]);
    float f2 = a(paramArrayOfeqo[1], paramArrayOfeqo[2]);
    float f3 = a(paramArrayOfeqo[0], paramArrayOfeqo[2]);
    if (f2 >= f1 && f2 >= f3) {
      eqo3 = paramArrayOfeqo[0];
      eqo2 = paramArrayOfeqo[1];
      eqo1 = paramArrayOfeqo[2];
    } else if (f3 >= f2 && f3 >= f1) {
      eqo3 = paramArrayOfeqo[1];
      eqo2 = paramArrayOfeqo[0];
      eqo1 = paramArrayOfeqo[2];
    } else {
      eqo3 = paramArrayOfeqo[2];
      eqo2 = paramArrayOfeqo[0];
      eqo1 = paramArrayOfeqo[1];
    } 
    if (a(eqo2, eqo3, eqo1) >= 0.0F) {
      eqo eqo4 = eqo1;
      eqo1 = eqo2;
      eqo2 = eqo4;
    } 
    paramArrayOfeqo[0] = eqo1;
    paramArrayOfeqo[1] = eqo3;
    paramArrayOfeqo[2] = eqo2;
  }
  
  public final float a() {
    return this.a;
  }
  
  public final float b() {
    return this.b;
  }
  
  public final boolean equals(Object paramObject) {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramObject instanceof eqo) {
      paramObject = paramObject;
      bool1 = bool2;
      if (this.a == ((eqo)paramObject).a) {
        bool1 = bool2;
        if (this.b == ((eqo)paramObject).b)
          bool1 = true; 
      } 
    } 
    return bool1;
  }
  
  public final int hashCode() {
    return Float.floatToIntBits(this.a) * 31 + Float.floatToIntBits(this.b);
  }
  
  public final String toString() {
    StringBuilder stringBuilder = new StringBuilder(25);
    stringBuilder.append('(');
    stringBuilder.append(this.a);
    stringBuilder.append(',');
    stringBuilder.append(this.b);
    stringBuilder.append(')');
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eqo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */