final class eyj {
  private final ets a;
  
  private final eyc b = new eyc();
  
  private final StringBuilder c = new StringBuilder();
  
  eyj(ets paramets) {
    this.a = paramets;
  }
  
  static int a(ets paramets, int paramInt1, int paramInt2) {
    int j = 0;
    int i = 0;
    while (i < paramInt2) {
      int k = j;
      if (paramets.a(paramInt1 + i))
        k = j | 1 << paramInt2 - i - 1; 
      i++;
      j = k;
    } 
    return j;
  }
  
  private eyf a() {
    while (true) {
      boolean bool;
      eyb eyb;
      int i = this.b.a();
      if (this.b.b()) {
        eyb = d();
        bool = eyb.b();
      } else if (this.b.d()) {
        eyb = c();
        bool = eyb.b();
      } else {
        eyb = b();
        bool = eyb.b();
      } 
      if (i != this.b.a()) {
        i = 1;
      } else {
        i = 0;
      } 
      if ((i == 0 && !bool) || bool)
        return eyb.a(); 
    } 
  }
  
  private boolean a(int paramInt) {
    if (paramInt + 7 > this.a.a())
      return !(paramInt + 4 > this.a.a()); 
    int i = paramInt;
    while (i < paramInt + 3) {
      if (!this.a.a(i)) {
        i++;
        continue;
      } 
      return true;
    } 
    return this.a.a(paramInt + 3);
  }
  
  private eyb b() {
    while (a(this.b.a())) {
      eyf eyf;
      eyg eyg = b(this.b.a());
      this.b.a(eyg.g());
      if (eyg.d()) {
        if (eyg.e()) {
          eyf = new eyf(this.b.a(), this.c.toString());
          return new eyb(eyf, true);
        } 
        eyf = new eyf(this.b.a(), this.c.toString(), eyf.b());
        return new eyb(eyf, true);
      } 
      this.c.append(eyf.a());
      if (eyf.e())
        return new eyb(new eyf(this.b.a(), this.c.toString()), true); 
      this.c.append(eyf.b());
    } 
    if (i(this.b.a())) {
      this.b.f();
      this.b.b(4);
    } 
    return new eyb(false);
  }
  
  private eyg b(int paramInt) {
    if (paramInt + 7 > this.a.a()) {
      paramInt = a(paramInt, 4);
      return (paramInt == 0) ? new eyg(this.a.a(), 10, 10) : new eyg(this.a.a(), paramInt - 1, 10);
    } 
    int i = a(paramInt, 7);
    return new eyg(paramInt + 7, (i - 8) / 11, (i - 8) % 11);
  }
  
  private eyb c() {
    while (c(this.b.a())) {
      eye eye = d(this.b.a());
      this.b.a(eye.g());
      if (eye.b())
        return new eyb(new eyf(this.b.a(), this.c.toString()), true); 
      this.c.append(eye.a());
    } 
    if (h(this.b.a())) {
      this.b.b(3);
      this.b.e();
      return new eyb(false);
    } 
    if (g(this.b.a())) {
      if (this.b.a() + 5 < this.a.a()) {
        this.b.b(5);
      } else {
        this.b.a(this.a.a());
      } 
      this.b.f();
    } 
    return new eyb(false);
  }
  
  private boolean c(int paramInt) {
    boolean bool = true;
    if (paramInt + 5 <= this.a.a()) {
      int i = a(paramInt, 5);
      if (i >= 5 && i < 16)
        return true; 
      if (paramInt + 7 <= this.a.a()) {
        i = a(paramInt, 7);
        if (i >= 64 && i < 116)
          return true; 
        if (paramInt + 8 <= this.a.a()) {
          paramInt = a(paramInt, 8);
          if (paramInt < 232 || paramInt >= 253)
            bool = false; 
          return bool;
        } 
      } 
    } 
    return false;
  }
  
  private eyb d() {
    while (e(this.b.a())) {
      eye eye = f(this.b.a());
      this.b.a(eye.g());
      if (eye.b())
        return new eyb(new eyf(this.b.a(), this.c.toString()), true); 
      this.c.append(eye.a());
    } 
    if (h(this.b.a())) {
      this.b.b(3);
      this.b.e();
      return new eyb(false);
    } 
    if (g(this.b.a())) {
      if (this.b.a() + 5 < this.a.a()) {
        this.b.b(5);
      } else {
        this.b.a(this.a.a());
      } 
      this.b.g();
    } 
    return new eyb(false);
  }
  
  private eye d(int paramInt) {
    int i = a(paramInt, 5);
    if (i == 15)
      return new eye(paramInt + 5, '$'); 
    if (i >= 5 && i < 15)
      return new eye(paramInt + 5, (char)(i + 48 - 5)); 
    i = a(paramInt, 7);
    if (i >= 64 && i < 90)
      return new eye(paramInt + 7, (char)(i + 1)); 
    if (i >= 90 && i < 116)
      return new eye(paramInt + 7, (char)(i + 7)); 
    switch (a(paramInt, 8)) {
      default:
        throw eqb.a();
      case 232:
        b = 33;
        return new eye(paramInt + 8, b);
      case 233:
        b = 34;
        return new eye(paramInt + 8, b);
      case 234:
        b = 37;
        return new eye(paramInt + 8, b);
      case 235:
        b = 38;
        return new eye(paramInt + 8, b);
      case 236:
        b = 39;
        return new eye(paramInt + 8, b);
      case 237:
        b = 40;
        return new eye(paramInt + 8, b);
      case 238:
        b = 41;
        return new eye(paramInt + 8, b);
      case 239:
        b = 42;
        return new eye(paramInt + 8, b);
      case 240:
        b = 43;
        return new eye(paramInt + 8, b);
      case 241:
        b = 44;
        return new eye(paramInt + 8, b);
      case 242:
        b = 45;
        return new eye(paramInt + 8, b);
      case 243:
        b = 46;
        return new eye(paramInt + 8, b);
      case 244:
        b = 47;
        return new eye(paramInt + 8, b);
      case 245:
        b = 58;
        return new eye(paramInt + 8, b);
      case 246:
        b = 59;
        return new eye(paramInt + 8, b);
      case 247:
        b = 60;
        return new eye(paramInt + 8, b);
      case 248:
        b = 61;
        return new eye(paramInt + 8, b);
      case 249:
        b = 62;
        return new eye(paramInt + 8, b);
      case 250:
        b = 63;
        return new eye(paramInt + 8, b);
      case 251:
        b = 95;
        return new eye(paramInt + 8, b);
      case 252:
        break;
    } 
    byte b = 32;
    return new eye(paramInt + 8, b);
  }
  
  private boolean e(int paramInt) {
    boolean bool = true;
    if (paramInt + 5 <= this.a.a()) {
      int i = a(paramInt, 5);
      if (i >= 5 && i < 16)
        return true; 
      if (paramInt + 6 <= this.a.a()) {
        paramInt = a(paramInt, 6);
        if (paramInt < 16 || paramInt >= 63)
          bool = false; 
        return bool;
      } 
    } 
    return false;
  }
  
  private eye f(int paramInt) {
    int i = a(paramInt, 5);
    if (i == 15)
      return new eye(paramInt + 5, '$'); 
    if (i >= 5 && i < 15)
      return new eye(paramInt + 5, (char)(i + 48 - 5)); 
    i = a(paramInt, 6);
    if (i >= 32 && i < 58)
      return new eye(paramInt + 6, (char)(i + 33)); 
    switch (i) {
      default:
        throw new IllegalStateException("Decoding invalid alphanumeric value: " + i);
      case 58:
        b = 42;
        return new eye(paramInt + 6, b);
      case 59:
        b = 44;
        return new eye(paramInt + 6, b);
      case 60:
        b = 45;
        return new eye(paramInt + 6, b);
      case 61:
        b = 46;
        return new eye(paramInt + 6, b);
      case 62:
        break;
    } 
    byte b = 47;
    return new eye(paramInt + 6, b);
  }
  
  private boolean g(int paramInt) {
    if (paramInt + 1 <= this.a.a()) {
      for (int i = 0; i < 5 && i + paramInt < this.a.a(); i++) {
        if (i == 2) {
          if (this.a.a(paramInt + 2))
            continue; 
          return false;
        } 
        if (this.a.a(paramInt + i))
          return false; 
        continue;
      } 
      return true;
    } 
    return false;
  }
  
  private boolean h(int paramInt) {
    if (paramInt + 3 <= this.a.a()) {
      int i = paramInt;
      while (i < paramInt + 3) {
        if (!this.a.a(i)) {
          i++;
          continue;
        } 
        return false;
      } 
      return true;
    } 
    return false;
  }
  
  private boolean i(int paramInt) {
    if (paramInt + 1 <= this.a.a()) {
      int i = 0;
      while (i < 4 && i + paramInt < this.a.a()) {
        if (!this.a.a(paramInt + i)) {
          i++;
          continue;
        } 
        return false;
      } 
      return true;
    } 
    return false;
  }
  
  int a(int paramInt1, int paramInt2) {
    return a(this.a, paramInt1, paramInt2);
  }
  
  eyf a(int paramInt, String paramString) {
    this.c.setLength(0);
    if (paramString != null)
      this.c.append(paramString); 
    this.b.a(paramInt);
    eyf eyf = a();
    return (eyf != null && eyf.b()) ? new eyf(this.b.a(), this.c.toString(), eyf.c()) : new eyf(this.b.a(), this.c.toString());
  }
  
  String a(StringBuilder paramStringBuilder, int paramInt) {
    String str = null;
    while (true) {
      eyf eyf = a(paramInt, str);
      str = eyi.a(eyf.a());
      if (str != null)
        paramStringBuilder.append(str); 
      if (eyf.b()) {
        str = String.valueOf(eyf.c());
      } else {
        str = null;
      } 
      if (paramInt == eyf.g())
        return paramStringBuilder.toString(); 
      paramInt = eyf.g();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eyj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */