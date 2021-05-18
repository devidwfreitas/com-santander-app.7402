public final class drk extends dqy<drk> {
  public String a;
  
  public String b;
  
  public long c;
  
  public String d;
  
  public int e;
  
  public int f;
  
  public String g;
  
  public String h;
  
  public String i;
  
  public String j;
  
  public String k;
  
  public int l;
  
  public drj[] m;
  
  public drk() {
    b();
  }
  
  public static drk a(byte[] paramArrayOfbyte) {
    return dre.<drk>a(new drk(), paramArrayOfbyte);
  }
  
  protected int a() {
    int j = super.a();
    int i = j;
    if (this.a != null) {
      i = j;
      if (!this.a.equals(""))
        i = j + dqw.b(1, this.a); 
    } 
    j = i;
    if (this.b != null) {
      j = i;
      if (!this.b.equals(""))
        j = i + dqw.b(2, this.b); 
    } 
    i = j;
    if (this.c != 0L)
      i = j + dqw.f(3, this.c); 
    j = i;
    if (this.d != null) {
      j = i;
      if (!this.d.equals(""))
        j = i + dqw.b(4, this.d); 
    } 
    i = j;
    if (this.e != 0)
      i = j + dqw.c(5, this.e); 
    j = i;
    if (this.f != 0)
      j = i + dqw.c(6, this.f); 
    i = j;
    if (this.g != null) {
      i = j;
      if (!this.g.equals(""))
        i = j + dqw.b(7, this.g); 
    } 
    j = i;
    if (this.h != null) {
      j = i;
      if (!this.h.equals(""))
        j = i + dqw.b(8, this.h); 
    } 
    i = j;
    if (this.i != null) {
      i = j;
      if (!this.i.equals(""))
        i = j + dqw.b(9, this.i); 
    } 
    j = i;
    if (this.j != null) {
      j = i;
      if (!this.j.equals(""))
        j = i + dqw.b(10, this.j); 
    } 
    int k = j;
    if (this.k != null) {
      k = j;
      if (!this.k.equals(""))
        k = j + dqw.b(11, this.k); 
    } 
    i = k;
    if (this.l != 0)
      i = k + dqw.c(12, this.l); 
    j = i;
    if (this.m != null) {
      j = i;
      if (this.m.length > 0) {
        j = 0;
        while (j < this.m.length) {
          drj drj1 = this.m[j];
          k = i;
          if (drj1 != null)
            k = i + dqw.c(13, drj1); 
          j++;
          i = k;
        } 
        j = i;
      } 
    } 
    return j;
  }
  
  public drk a(dqv paramdqv) {
    while (true) {
      int j;
      drj[] arrayOfDrj;
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 10:
          this.a = paramdqv.j();
          break;
        case 18:
          this.b = paramdqv.j();
          break;
        case 24:
          this.c = paramdqv.f();
          break;
        case 34:
          this.d = paramdqv.j();
          break;
        case 40:
          this.e = paramdqv.g();
          break;
        case 48:
          this.f = paramdqv.g();
          break;
        case 58:
          this.g = paramdqv.j();
          break;
        case 66:
          this.h = paramdqv.j();
          break;
        case 74:
          this.i = paramdqv.j();
          break;
        case 82:
          this.j = paramdqv.j();
          break;
        case 90:
          this.k = paramdqv.j();
          break;
        case 96:
          i = paramdqv.g();
          switch (i) {
            default:
              break;
            case 0:
            case 1:
            case 2:
              break;
          } 
          this.l = i;
          break;
        case 106:
          j = drh.a(paramdqv, 106);
          if (this.m == null) {
            i = 0;
          } else {
            i = this.m.length;
          } 
          arrayOfDrj = new drj[j + i];
          j = i;
          if (i != 0) {
            System.arraycopy(this.m, 0, arrayOfDrj, 0, i);
            j = i;
          } 
          while (j < arrayOfDrj.length - 1) {
            arrayOfDrj[j] = new drj();
            paramdqv.a(arrayOfDrj[j]);
            paramdqv.a();
            j++;
          } 
          arrayOfDrj[j] = new drj();
          paramdqv.a(arrayOfDrj[j]);
          this.m = arrayOfDrj;
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    if (this.a != null && !this.a.equals(""))
      paramdqw.a(1, this.a); 
    if (this.b != null && !this.b.equals(""))
      paramdqw.a(2, this.b); 
    if (this.c != 0L)
      paramdqw.b(3, this.c); 
    if (this.d != null && !this.d.equals(""))
      paramdqw.a(4, this.d); 
    if (this.e != 0)
      paramdqw.a(5, this.e); 
    if (this.f != 0)
      paramdqw.a(6, this.f); 
    if (this.g != null && !this.g.equals(""))
      paramdqw.a(7, this.g); 
    if (this.h != null && !this.h.equals(""))
      paramdqw.a(8, this.h); 
    if (this.i != null && !this.i.equals(""))
      paramdqw.a(9, this.i); 
    if (this.j != null && !this.j.equals(""))
      paramdqw.a(10, this.j); 
    if (this.k != null && !this.k.equals(""))
      paramdqw.a(11, this.k); 
    if (this.l != 0)
      paramdqw.a(12, this.l); 
    if (this.m != null && this.m.length > 0)
      for (int i = 0; i < this.m.length; i++) {
        drj drj1 = this.m[i];
        if (drj1 != null)
          paramdqw.a(13, drj1); 
      }  
    super.a(paramdqw);
  }
  
  public drk b() {
    this.a = "";
    this.b = "";
    this.c = 0L;
    this.d = "";
    this.e = 0;
    this.f = 0;
    this.g = "";
    this.h = "";
    this.i = "";
    this.j = "";
    this.k = "";
    this.l = 0;
    this.m = drj.b();
    this.ag = null;
    this.ah = -1;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\drk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */