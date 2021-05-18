public final class dpm extends dqy<dpm> {
  public long[] a;
  
  public long[] b;
  
  public dpm() {
    b();
  }
  
  protected int a() {
    int i;
    boolean bool = false;
    int k = super.a();
    if (this.a != null && this.a.length > 0) {
      i = 0;
      int m = 0;
      while (i < this.a.length) {
        m += dqw.e(this.a[i]);
        i++;
      } 
      i = k + m + this.a.length * 1;
    } else {
      i = k;
    } 
    int j = i;
    if (this.b != null) {
      j = i;
      if (this.b.length > 0) {
        k = 0;
        for (j = bool; j < this.b.length; j++)
          k += dqw.e(this.b[j]); 
        j = i + k + this.b.length * 1;
      } 
    } 
    return j;
  }
  
  public dpm a(dqv paramdqv) {
    while (true) {
      int j;
      int k;
      long[] arrayOfLong;
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 8:
          j = drh.a(paramdqv, 8);
          if (this.a == null) {
            i = 0;
          } else {
            i = this.a.length;
          } 
          arrayOfLong = new long[j + i];
          j = i;
          if (i != 0) {
            System.arraycopy(this.a, 0, arrayOfLong, 0, i);
            j = i;
          } 
          while (j < arrayOfLong.length - 1) {
            arrayOfLong[j] = paramdqv.e();
            paramdqv.a();
            j++;
          } 
          arrayOfLong[j] = paramdqv.e();
          this.a = arrayOfLong;
          break;
        case 10:
          k = paramdqv.d(paramdqv.n());
          i = paramdqv.t();
          for (j = 0; paramdqv.r() > 0; j++)
            paramdqv.e(); 
          paramdqv.f(i);
          if (this.a == null) {
            i = 0;
          } else {
            i = this.a.length;
          } 
          arrayOfLong = new long[j + i];
          j = i;
          if (i != 0) {
            System.arraycopy(this.a, 0, arrayOfLong, 0, i);
            j = i;
          } 
          while (j < arrayOfLong.length) {
            arrayOfLong[j] = paramdqv.e();
            j++;
          } 
          this.a = arrayOfLong;
          paramdqv.e(k);
          break;
        case 16:
          j = drh.a(paramdqv, 16);
          if (this.b == null) {
            i = 0;
          } else {
            i = this.b.length;
          } 
          arrayOfLong = new long[j + i];
          j = i;
          if (i != 0) {
            System.arraycopy(this.b, 0, arrayOfLong, 0, i);
            j = i;
          } 
          while (j < arrayOfLong.length - 1) {
            arrayOfLong[j] = paramdqv.e();
            paramdqv.a();
            j++;
          } 
          arrayOfLong[j] = paramdqv.e();
          this.b = arrayOfLong;
          break;
        case 18:
          k = paramdqv.d(paramdqv.n());
          i = paramdqv.t();
          for (j = 0; paramdqv.r() > 0; j++)
            paramdqv.e(); 
          paramdqv.f(i);
          if (this.b == null) {
            i = 0;
          } else {
            i = this.b.length;
          } 
          arrayOfLong = new long[j + i];
          j = i;
          if (i != 0) {
            System.arraycopy(this.b, 0, arrayOfLong, 0, i);
            j = i;
          } 
          while (j < arrayOfLong.length) {
            arrayOfLong[j] = paramdqv.e();
            j++;
          } 
          this.b = arrayOfLong;
          paramdqv.e(k);
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    byte b = 0;
    if (this.a != null && this.a.length > 0)
      for (int i = 0; i < this.a.length; i++)
        paramdqw.a(1, this.a[i]);  
    if (this.b != null && this.b.length > 0)
      for (int i = b; i < this.b.length; i++)
        paramdqw.a(2, this.b[i]);  
    super.a(paramdqw);
  }
  
  public dpm b() {
    this.a = drh.f;
    this.b = drh.f;
    this.ag = null;
    this.ah = -1;
    return this;
  }
  
  public boolean equals(Object paramObject) {
    boolean bool2 = false;
    if (paramObject == this)
      return true; 
    boolean bool1 = bool2;
    if (paramObject instanceof dpm) {
      paramObject = paramObject;
      bool1 = bool2;
      if (drc.a(this.a, ((dpm)paramObject).a)) {
        bool1 = bool2;
        if (drc.a(this.b, ((dpm)paramObject).b)) {
          if (this.ag == null || this.ag.b()) {
            if (((dpm)paramObject).ag != null) {
              bool1 = bool2;
              return ((dpm)paramObject).ag.b() ? true : bool1;
            } 
            return true;
          } 
          return this.ag.equals(((dpm)paramObject).ag);
        } 
      } 
    } 
    return bool1;
  }
  
  public int hashCode() {
    int j = getClass().getName().hashCode();
    int k = drc.a(this.a);
    int m = drc.a(this.b);
    if (this.ag == null || this.ag.b()) {
      byte b = 0;
      return b + (((j + 527) * 31 + k) * 31 + m) * 31;
    } 
    int i = this.ag.hashCode();
    return i + (((j + 527) * 31 + k) * 31 + m) * 31;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dpm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */