final class eyq {
  private ett a;
  
  private eqo b;
  
  private eqo c;
  
  private eqo d;
  
  private eqo e;
  
  private int f;
  
  private int g;
  
  private int h;
  
  private int i;
  
  eyq(ett paramett, eqo parameqo1, eqo parameqo2, eqo parameqo3, eqo parameqo4) {
    if ((parameqo1 == null && parameqo3 == null) || (parameqo2 == null && parameqo4 == null) || (parameqo1 != null && parameqo2 == null) || (parameqo3 != null && parameqo4 == null))
      throw eqh.a(); 
    a(paramett, parameqo1, parameqo2, parameqo3, parameqo4);
  }
  
  eyq(eyq parameyq) {
    a(parameyq.a, parameyq.b, parameyq.c, parameyq.d, parameyq.e);
  }
  
  static eyq a(eyq parameyq1, eyq parameyq2) {
    return (parameyq1 == null) ? parameyq2 : ((parameyq2 == null) ? parameyq1 : new eyq(parameyq1.a, parameyq1.b, parameyq1.c, parameyq2.d, parameyq2.e));
  }
  
  private void a(ett paramett, eqo parameqo1, eqo parameqo2, eqo parameqo3, eqo parameqo4) {
    this.a = paramett;
    this.b = parameqo1;
    this.c = parameqo2;
    this.d = parameqo3;
    this.e = parameqo4;
    i();
  }
  
  private void i() {
    if (this.b == null) {
      this.b = new eqo(0.0F, this.d.b());
      this.c = new eqo(0.0F, this.e.b());
    } else if (this.d == null) {
      this.d = new eqo((this.a.f() - 1), this.b.b());
      this.e = new eqo((this.a.f() - 1), this.c.b());
    } 
    this.f = (int)Math.min(this.b.a(), this.c.a());
    this.g = (int)Math.max(this.d.a(), this.e.a());
    this.h = (int)Math.min(this.b.b(), this.d.b());
    this.i = (int)Math.max(this.c.b(), this.e.b());
  }
  
  int a() {
    return this.f;
  }
  
  eyq a(int paramInt1, int paramInt2, boolean paramBoolean) {
    eqo eqo3;
    eqo eqo4;
    eqo eqo1 = this.b;
    eqo eqo2 = this.c;
    eqo eqo6 = this.d;
    eqo eqo5 = this.e;
    if (paramInt1 > 0) {
      if (paramBoolean) {
        eqo3 = this.b;
      } else {
        eqo3 = this.d;
      } 
      int i = (int)eqo3.b() - paramInt1;
      paramInt1 = i;
      if (i < 0)
        paramInt1 = 0; 
      eqo4 = new eqo(eqo3.a(), paramInt1);
      if (paramBoolean) {
        eqo3 = eqo6;
        eqo1 = eqo4;
      } else {
        eqo3 = eqo4;
      } 
    } else {
      eqo3 = eqo6;
    } 
    if (paramInt2 > 0) {
      if (paramBoolean) {
        eqo4 = this.c;
      } else {
        eqo4 = this.e;
      } 
      paramInt2 = (int)eqo4.b() + paramInt2;
      paramInt1 = paramInt2;
      if (paramInt2 >= this.a.g())
        paramInt1 = this.a.g() - 1; 
      eqo4 = new eqo(eqo4.a(), paramInt1);
      if (paramBoolean) {
        eqo2 = eqo4;
        i();
        return new eyq(this.a, eqo1, eqo2, eqo3, eqo5);
      } 
    } else {
      i();
      return new eyq(this.a, eqo1, eqo2, eqo3, eqo5);
    } 
    eqo5 = eqo4;
    i();
    return new eyq(this.a, eqo1, eqo2, eqo3, eqo5);
  }
  
  int b() {
    return this.g;
  }
  
  int c() {
    return this.h;
  }
  
  int d() {
    return this.i;
  }
  
  eqo e() {
    return this.b;
  }
  
  eqo f() {
    return this.d;
  }
  
  eqo g() {
    return this.c;
  }
  
  eqo h() {
    return this.e;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eyq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */