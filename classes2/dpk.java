public final class dpk extends dqy<dpk> {
  public dpl[] a;
  
  public dpk() {
    b();
  }
  
  protected int a() {
    int i = super.a();
    int j = i;
    if (this.a != null) {
      j = i;
      if (this.a.length > 0) {
        int k = 0;
        while (true) {
          j = i;
          if (k < this.a.length) {
            dpl dpl1 = this.a[k];
            j = i;
            if (dpl1 != null)
              j = i + dqw.c(1, dpl1); 
            k++;
            i = j;
            continue;
          } 
          break;
        } 
      } 
    } 
    return j;
  }
  
  public dpk a(dqv paramdqv) {
    while (true) {
      int j;
      dpl[] arrayOfDpl;
      int i = paramdqv.a();
      switch (i) {
        case 0:
          return this;
        case 10:
          j = drh.a(paramdqv, 10);
          if (this.a == null) {
            i = 0;
          } else {
            i = this.a.length;
          } 
          arrayOfDpl = new dpl[j + i];
          j = i;
          if (i != 0) {
            System.arraycopy(this.a, 0, arrayOfDpl, 0, i);
            j = i;
          } 
          while (j < arrayOfDpl.length - 1) {
            arrayOfDpl[j] = new dpl();
            paramdqv.a(arrayOfDpl[j]);
            paramdqv.a();
            j++;
          } 
          arrayOfDpl[j] = new dpl();
          paramdqv.a(arrayOfDpl[j]);
          this.a = arrayOfDpl;
          break;
      } 
    } 
  }
  
  public void a(dqw paramdqw) {
    if (this.a != null && this.a.length > 0)
      for (int i = 0; i < this.a.length; i++) {
        dpl dpl1 = this.a[i];
        if (dpl1 != null)
          paramdqw.a(1, dpl1); 
      }  
    super.a(paramdqw);
  }
  
  public dpk b() {
    this.a = dpl.b();
    this.ag = null;
    this.ah = -1;
    return this;
  }
  
  public boolean equals(Object paramObject) {
    boolean bool2 = false;
    if (paramObject == this)
      return true; 
    boolean bool1 = bool2;
    if (paramObject instanceof dpk) {
      paramObject = paramObject;
      bool1 = bool2;
      if (drc.a((Object[])this.a, (Object[])((dpk)paramObject).a)) {
        if (this.ag == null || this.ag.b()) {
          if (((dpk)paramObject).ag != null) {
            bool1 = bool2;
            return ((dpk)paramObject).ag.b() ? true : bool1;
          } 
          return true;
        } 
        return this.ag.equals(((dpk)paramObject).ag);
      } 
    } 
    return bool1;
  }
  
  public int hashCode() {
    int j = getClass().getName().hashCode();
    int k = drc.a((Object[])this.a);
    if (this.ag == null || this.ag.b()) {
      byte b = 0;
      return b + ((j + 527) * 31 + k) * 31;
    } 
    int i = this.ag.hashCode();
    return i + ((j + 527) * 31 + k) * 31;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dpk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */