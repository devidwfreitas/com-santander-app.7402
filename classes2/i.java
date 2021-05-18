import java.io.Serializable;
import java.util.Vector;

public class i implements bgl, Serializable, y {
  private boolean bo = false;
  
  private char bp;
  
  private o bq = null;
  
  public i() {
    (new k(this)).a();
  }
  
  private void a(am paramam, bfm parambfm) {
    parambfm.d().i(paramam.f());
    parambfm.d().a(paramam.h());
    parambfm.d().d(paramam.i());
    parambfm.d().f(paramam.j());
    parambfm.d().k(paramam.n());
    parambfm.d().g(paramam.k());
    parambfm.d().n(paramam.a());
    parambfm.d().j(paramam.m());
    parambfm.d().h(paramam.l());
    parambfm.d().m(paramam.b());
    parambfm.a(paramam.g());
    parambfm.b(paramam.o());
    parambfm.d().l(paramam.c());
    parambfm.c(paramam.u());
    parambfm.d(paramam.t());
    parambfm.d().b(paramam.q());
    parambfm.d().c(paramam.r());
    parambfm.d().e(paramam.p());
    parambfm.d().a(paramam.d());
    parambfm.d().f(paramam.e());
    parambfm.d().o(paramam.s());
  }
  
  private void a(am paramam, bfw parambfw) {
    parambfw.a(paramam.i());
    parambfw.b(paramam.s());
    parambfw.a(paramam.u());
  }
  
  private void a(am paramam, bgb parambgb) {
    parambgb.i(paramam.f());
    parambgb.a(paramam.h());
    parambgb.d(paramam.i());
    parambgb.f(paramam.j());
    parambgb.k(paramam.n());
    parambgb.g(paramam.k());
    parambgb.n(paramam.a());
    parambgb.j(paramam.m());
    parambgb.h(paramam.l());
    parambgb.m(paramam.b());
    parambgb.b(paramam.g());
    parambgb.c(paramam.o());
    parambgb.l(paramam.c());
    parambgb.d(paramam.u());
    parambgb.e(paramam.t());
    parambgb.b(paramam.q());
    parambgb.c(paramam.r());
    parambgb.e(paramam.p());
    parambgb.a(paramam.d());
    parambgb.f(paramam.e());
    parambgb.o(paramam.s());
  }
  
  private static byte[] a(byte[] paramArrayOfbyte, char paramChar) {
    boolean bool = false;
    paramArrayOfbyte = ca.a(paramArrayOfbyte);
    byte[] arrayOfByte = new byte[paramArrayOfbyte.length + 1];
    arrayOfByte[0] = (byte)paramChar;
    paramChar = bool;
    while (true) {
      if (paramChar >= paramArrayOfbyte.length)
        return arrayOfByte; 
      arrayOfByte[paramChar + 1] = paramArrayOfbyte[paramChar];
      int j = paramChar + 1;
    } 
  }
  
  private int b(bfm parambfm, bgb parambgb) {
    if (!this.bo)
      return 1450; 
    try {
      aj aj;
      am am;
      ac ac = ad.a();
      if (parambfm != null) {
        aj = new aj();
        aj.a(parambfm.c().a());
      } else {
        aj = null;
      } 
      if (parambgb != null) {
        am = new am();
      } else {
        am = null;
      } 
      int k = ac.a(aj, this.bq, am);
      if (parambfm != null)
        parambfm.c().a(aj.a()); 
      int j = k;
      if (k == 0) {
        j = k;
        if (parambgb != null) {
          a(am, parambgb);
          return k;
        } 
      } 
      return j;
    } catch (Exception exception) {
      return 1300;
    } 
  }
  
  private int b(bfm parambfm, String paramString, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    aj aj = new aj();
    aj.a(parambfm.c().a());
    int j = ad.a().a(aj, this.bq, paramString, paramVector, paramStringBuffer);
    parambfm.c().a(aj.a());
    return j;
  }
  
  private int b(bfm parambfm, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    try {
      ac ac = ad.a();
      String str = new String(az.a(this.bq.b()));
      aj aj = new aj();
      aj.a(parambfm.c().a());
      int j = ac.b(aj, this.bq, str, paramStringBuffer);
      parambfm.c().a(aj.a());
      return j;
    } catch (Exception exception) {
      return 1409;
    } 
  }
  
  private int b(bfv parambfv, bfw parambfw) {
    if (!this.bo)
      return 1450; 
    try {
      aj aj;
      am am;
      ac ac = ad.a();
      if (parambfv != null) {
        aj = new aj();
        aj.a(parambfv.a());
      } else {
        aj = null;
      } 
      if (parambfw != null) {
        am = new am();
      } else {
        am = null;
      } 
      int k = ac.a(aj, this.bq, am);
      if (parambfv != null)
        parambfv.a(aj.a()); 
      int j = k;
      if (k == 0) {
        j = k;
        if (parambfw != null) {
          a(am, parambfw);
          return k;
        } 
      } 
      return j;
    } catch (Exception exception) {
      return 1300;
    } 
  }
  
  private int b(bfx parambfx, bgb parambgb) {
    if (!this.bo)
      return 1450; 
    try {
      aj aj;
      am am;
      ac ac = ad.a();
      if (parambfx != null) {
        aj = new aj();
        aj.a(parambfx.a());
      } else {
        aj = null;
      } 
      if (parambgb != null) {
        am = new am();
      } else {
        am = null;
      } 
      int k = ac.a(aj, this.bq, am);
      if (parambfx != null)
        parambfx.a(aj.a()); 
      int j = k;
      if (k == 0) {
        j = k;
        if (parambgb != null) {
          a(am, parambgb);
          return k;
        } 
      } 
      return j;
    } catch (Exception exception) {
      return 1300;
    } 
  }
  
  private int b(bfx parambfx, String paramString, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    aj aj = new aj();
    aj.a(parambfx.a());
    int j = ad.a().a(aj, this.bq, paramString, paramVector, paramStringBuffer);
    parambfx.a(aj.a());
    return j;
  }
  
  private int b(bfx parambfx, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    try {
      ac ac = ad.a();
      String str = new String(az.a(this.bq.b()));
      aj aj = new aj();
      aj.a(parambfx.a());
      int j = ac.b(aj, this.bq, str, paramStringBuffer);
      parambfx.a(aj.a());
      return j;
    } catch (Exception exception) {
      return 1409;
    } 
  }
  
  private int b(byte[] paramArrayOfbyte1, byte[] paramArrayOfbyte2, byte[] paramArrayOfbyte3, char paramChar) {
    try {
      this.bp = paramChar;
      this.bq = new o(paramArrayOfbyte1, paramArrayOfbyte2, a(paramArrayOfbyte3, this.bp));
      if (!this.bq.c())
        return 1407; 
      this.bo = true;
      return 0;
    } catch (Exception exception) {
      return 1400;
    } 
  }
  
  private static void b(Integer paramInteger, byte[] paramArrayOfbyte) {
    ((bb)(new j()).a()).a(paramInteger, paramArrayOfbyte);
  }
  
  private int c(bfm parambfm) {
    if (!this.bo)
      return 1450; 
    try {
      ac ac = ad.a();
      aj aj = new aj();
      aj.a(parambfm.c().a());
      int k = ac.b(aj, this.bq);
      int j = k;
      if (k == 0) {
        parambfm.c().a(aj.a());
        return 0;
      } 
      return j;
    } catch (Exception exception) {
      return 1300;
    } 
  }
  
  private int c(bfx parambfx) {
    if (!this.bo)
      return 1450; 
    try {
      ac ac = ad.a();
      aj aj = new aj();
      aj.a(parambfx.a());
      int k = ac.b(aj, this.bq);
      int j = k;
      if (k == 0) {
        parambfx.a(aj.a());
        return 0;
      } 
      return j;
    } catch (Exception exception) {
      return 1300;
    } 
  }
  
  private int d(bfl parambfl, String paramString) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfl != null) {
      aj = new aj();
      aj.a(parambfl.b().a());
    } 
    int j = ac.n(aj, this.bq, paramString);
    if (parambfl != null)
      parambfl.b().a(aj.a()); 
    return j;
  }
  
  private int d(bfm parambfm, bgc parambgc) {
    if (!this.bo)
      return 1450; 
    try {
      aj aj;
      ac ac = ad.a();
      if (parambfm != null) {
        aj = new aj();
        aj.a(parambfm.c().a());
      } else {
        aj = null;
      } 
      StringBuffer stringBuffer = new StringBuffer();
      int j = ac.c(aj, this.bq, stringBuffer);
      if (parambfm != null)
        parambfm.c().a(aj.a()); 
      parambgc.a(Float.parseFloat(stringBuffer.toString()));
      return j;
    } catch (Exception exception) {
      return 1300;
    } 
  }
  
  private int d(bfx parambfx, bgc parambgc) {
    if (!this.bo)
      return 1450; 
    try {
      aj aj;
      ac ac = ad.a();
      if (parambfx != null) {
        aj = new aj();
        aj.a(parambfx.a());
      } else {
        aj = null;
      } 
      StringBuffer stringBuffer = new StringBuffer();
      int j = ac.c(aj, this.bq, stringBuffer);
      if (parambfx != null)
        parambfx.a(aj.a()); 
      parambgc.a(Float.parseFloat(stringBuffer.toString()));
      return j;
    } catch (Exception exception) {
      return 1300;
    } 
  }
  
  private int d(Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return !this.bo ? 1450 : ad.a().b(this.bq, paramVector, paramStringBuffer);
  }
  
  private int e(bfm parambfm, bgc parambgc) {
    if (!this.bo)
      return 1450; 
    try {
      aj aj;
      ac ac = ad.a();
      if (parambfm != null) {
        aj = new aj();
        aj.a(parambfm.c().a());
      } else {
        aj = null;
      } 
      StringBuffer stringBuffer = new StringBuffer();
      int j = ac.d(aj, this.bq, stringBuffer);
      if (parambfm != null)
        parambfm.c().a(aj.a()); 
      parambgc.a(Float.parseFloat(stringBuffer.toString()));
      return j;
    } catch (Exception exception) {
      return 1300;
    } 
  }
  
  private int e(bfx parambfx, bgc parambgc) {
    if (!this.bo)
      return 1450; 
    try {
      aj aj;
      ac ac = ad.a();
      if (parambfx != null) {
        aj = new aj();
        aj.a(parambfx.a());
      } else {
        aj = null;
      } 
      StringBuffer stringBuffer = new StringBuffer();
      int j = ac.d(aj, this.bq, stringBuffer);
      if (parambfx != null)
        parambfx.a(aj.a()); 
      parambgc.a(Float.parseFloat(stringBuffer.toString()));
      return j;
    } catch (Exception exception) {
      return 1300;
    } 
  }
  
  private int f(bfm parambfm, bgc parambgc) {
    if (!this.bo)
      return 1450; 
    try {
      aj aj;
      ac ac = ad.a();
      if (parambfm != null) {
        aj = new aj();
        aj.a(parambfm.c().a());
      } else {
        aj = null;
      } 
      StringBuffer stringBuffer = new StringBuffer();
      int j = ac.b(aj, this.bq, stringBuffer);
      if (parambfm != null)
        parambfm.c().a(aj.a()); 
      parambgc.a(Float.parseFloat(stringBuffer.toString()));
      return j;
    } catch (Exception exception) {
      return 1300;
    } 
  }
  
  private int f(bfx parambfx, bgc parambgc) {
    if (!this.bo)
      return 1450; 
    try {
      aj aj;
      ac ac = ad.a();
      if (parambfx != null) {
        aj = new aj();
        aj.a(parambfx.a());
      } else {
        aj = null;
      } 
      StringBuffer stringBuffer = new StringBuffer();
      int j = ac.b(aj, this.bq, stringBuffer);
      if (parambfx != null)
        parambfx.a(aj.a()); 
      parambgc.a(Float.parseFloat(stringBuffer.toString()));
      return j;
    } catch (Exception exception) {
      return 1300;
    } 
  }
  
  private int g(bfm parambfm, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    aj aj = new aj();
    aj.a(parambfm.c().a());
    int j = ad.a().a(aj, this.bq, paramVector, paramStringBuffer);
    parambfm.c().a(aj.a());
    return j;
  }
  
  private int g(bfx parambfx, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    aj aj = new aj();
    aj.a(parambfx.a());
    int j = ad.a().a(aj, this.bq, paramVector, paramStringBuffer);
    parambfx.a(aj.a());
    return j;
  }
  
  private int h(bfm parambfm, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = new aj();
    aj.a(parambfm.c().a());
    int j = ac.b(aj, this.bq, paramVector, paramStringBuffer);
    parambfm.c().a(aj.a());
    return j;
  }
  
  private int h(bfx parambfx, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = new aj();
    aj.a(parambfx.a());
    int j = ac.b(aj, this.bq, paramVector, paramStringBuffer);
    parambfx.a(aj.a());
    return j;
  }
  
  private int i(bfm parambfm, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = new aj();
    aj.a(parambfm.c().a());
    int j = ac.d(aj, this.bq, paramVector, paramStringBuffer);
    parambfm.c().a(aj.a());
    return j;
  }
  
  private int i(bfx parambfx, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = new aj();
    aj.a(parambfx.a());
    int j = ac.d(aj, this.bq, paramVector, paramStringBuffer);
    parambfx.a(aj.a());
    return j;
  }
  
  private int j(bfm parambfm, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = new aj();
    aj.a(parambfm.c().a());
    int j = ac.c(aj, this.bq, paramVector, paramStringBuffer);
    parambfm.c().a(aj.a());
    return j;
  }
  
  private int j(bfx parambfx, String paramString) {
    if (!this.bo)
      return 1450; 
    try {
      ac ac = ad.a();
      aj aj = new aj();
      aj.a(parambfx.a());
      int j = ac.g(aj, this.bq, paramString);
      parambfx.a(aj.a());
      return j;
    } catch (bfy bfy) {
      throw bfy;
    } 
  }
  
  private int j(bfx parambfx, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = new aj();
    aj.a(parambfx.a());
    int j = ac.c(aj, this.bq, paramVector, paramStringBuffer);
    parambfx.a(aj.a());
    return j;
  }
  
  private int k(bfx parambfx, String paramString) {
    if (!this.bo)
      return 1450; 
    try {
      aj aj;
      ac ac = ad.a();
      if (parambfx != null) {
        aj = new aj();
        aj.a(parambfx.a());
      } else {
        aj = null;
      } 
      int k = ac.e(aj, this.bq, paramString);
      int j = k;
      if (parambfx != null) {
        parambfx.a(aj.a());
        return k;
      } 
      return j;
    } catch (bfy bfy) {
      throw bfy;
    } 
  }
  
  private int l(bfm parambfm, String paramString) {
    if (!this.bo)
      return 1450; 
    try {
      ac ac = ad.a();
      aj aj = new aj();
      aj.a(parambfm.c().a());
      int j = ac.g(aj, this.bq, paramString);
      parambfm.c().a(aj.a());
      return j;
    } catch (bfy bfy) {
      throw bfy;
    } 
  }
  
  private int l(bfx parambfx, String paramString) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = new aj();
    aj.a(parambfx.a());
    int j = ac.a(aj, this.bq, paramString);
    parambfx.a(aj.a());
    return j;
  }
  
  private int m(bfm parambfm, String paramString) {
    if (!this.bo)
      return 1450; 
    try {
      aj aj;
      ac ac = ad.a();
      if (parambfm != null) {
        aj = new aj();
        aj.a(parambfm.c().a());
      } else {
        aj = null;
      } 
      int k = ac.e(aj, this.bq, paramString);
      int j = k;
      if (parambfm != null) {
        parambfm.c().a(aj.a());
        return k;
      } 
      return j;
    } catch (bfy bfy) {
      throw bfy;
    } 
  }
  
  private int m(bfx parambfx, String paramString) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = new aj();
    aj.a(parambfx.a());
    int j = ac.f(aj, this.bq, paramString);
    parambfx.a(aj.a());
    return j;
  }
  
  private int n(bfm parambfm, String paramString) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = new aj();
    aj.a(parambfm.c().a());
    int j = ac.a(aj, this.bq, paramString);
    parambfm.c().a(aj.a());
    return j;
  }
  
  private int n(bfx parambfx, String paramString) {
    if (!this.bo)
      return 1450; 
    try {
      ac ac = ad.a();
      aj aj = new aj();
      aj.a(parambfx.a());
      int k = ac.c(aj, this.bq, paramString);
      int j = k;
      if (k == 0) {
        parambfx.a(aj.a());
        return 0;
      } 
      return j;
    } catch (Exception exception) {
      return 1432;
    } 
  }
  
  private int o(bfm parambfm, String paramString) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = new aj();
    aj.a(parambfm.c().a());
    int j = ac.f(aj, this.bq, paramString);
    parambfm.c().a(aj.a());
    return j;
  }
  
  private int o(bfx parambfx, String paramString) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfx != null) {
      aj = new aj();
      aj.a(parambfx.a());
    } 
    int j = ac.b(aj, this.bq, paramString);
    if (parambfx != null)
      parambfx.a(aj.a()); 
    return j;
  }
  
  private int p(bfm parambfm, String paramString) {
    if (!this.bo)
      return 1450; 
    try {
      ac ac = ad.a();
      aj aj = new aj();
      aj.a(parambfm.c().a());
      int k = ac.c(aj, this.bq, paramString);
      int j = k;
      if (k == 0) {
        parambfm.c().a(aj.a());
        return 0;
      } 
      return j;
    } catch (Exception exception) {
      return 1432;
    } 
  }
  
  private int p(bfx parambfx, String paramString) {
    if (!this.bo)
      return 1450; 
    try {
      aj aj;
      ac ac = ad.a();
      if (parambfx != null) {
        aj = new aj();
        aj.a(parambfx.a());
      } else {
        aj = null;
      } 
      int k = ac.d(aj, this.bq, paramString);
      int j = k;
      if (parambfx != null) {
        parambfx.a(aj.a());
        return k;
      } 
      return j;
    } catch (Exception exception) {
      return 1433;
    } 
  }
  
  private int q(bfm parambfm, String paramString) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfm != null) {
      aj = new aj();
      aj.a(parambfm.c().a());
    } 
    int j = ac.b(aj, this.bq, paramString);
    if (parambfm != null)
      parambfm.c().a(aj.a()); 
    return j;
  }
  
  private int r(bfm parambfm, String paramString) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfm != null) {
      aj = new aj();
      aj.a(parambfm.c().a());
    } 
    int j = ac.m(aj, this.bq, paramString);
    if (parambfm != null)
      parambfm.c().a(aj.a()); 
    return j;
  }
  
  private int s(bfm parambfm, String paramString) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfm != null) {
      aj = new aj();
      aj.a(parambfm.c().a());
    } 
    int j = ac.n(aj, this.bq, paramString);
    if (parambfm != null)
      parambfm.c().a(aj.a()); 
    return j;
  }
  
  private int t(bfm parambfm, String paramString) {
    if (!this.bo)
      return 1450; 
    try {
      aj aj;
      ac ac = ad.a();
      if (parambfm != null) {
        aj = new aj();
        aj.a(parambfm.c().a());
      } else {
        aj = null;
      } 
      int k = ac.d(aj, this.bq, paramString);
      int j = k;
      if (parambfm != null) {
        parambfm.c().a(aj.a());
        return k;
      } 
      return j;
    } catch (Exception exception) {
      return 1433;
    } 
  }
  
  public int a(bfl parambfl, String paramString) {
    return d(parambfl, paramString);
  }
  
  public int a(bfm parambfm) {
    try {
      aj aj;
      ac ac = ad.a();
      if (parambfm != null) {
        aj = new aj();
        aj.a(parambfm.c().a());
      } else {
        aj = null;
      } 
      int j = ac.a(aj, this.bq);
      if (parambfm != null)
        parambfm.c().a(aj.a()); 
      return j;
    } catch (Exception exception) {
      return 1300;
    } 
  }
  
  public int a(bfm parambfm, bgb parambgb) {
    return b(parambfm, parambgb);
  }
  
  public int a(bfm parambfm, bgc parambgc) {
    return d(parambfm, parambgc);
  }
  
  public int a(bfm parambfm, String paramString) {
    return m(parambfm, paramString);
  }
  
  public int a(bfm parambfm, String paramString1, String paramString2, String paramString3, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfm != null) {
      aj = new aj();
      aj.a(parambfm.c().a());
    } 
    int k = ac.a(aj, this.bq, paramString1, paramString2, paramString3, paramStringBuffer);
    int j = k;
    if (parambfm != null) {
      parambfm.c().a(aj.a());
      return k;
    } 
    return j;
  }
  
  public int a(bfm parambfm, String paramString, StringBuffer paramStringBuffer) {
    aj aj;
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    if (parambfm != null) {
      aj = new aj();
      aj.a(parambfm.c().a());
    } else {
      aj = null;
    } 
    int k = ac.a(aj, this.bq, null, paramString, paramStringBuffer);
    int j = k;
    if (parambfm != null) {
      parambfm.c().a(aj.a());
      return k;
    } 
    return j;
  }
  
  public int a(bfm parambfm, String paramString, StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2, Vector<String> paramVector) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfm != null) {
      aj = new aj();
      aj.a(parambfm.c().a());
    } 
    int k = ac.a(aj, this.bq, paramString, paramStringBuffer1, paramStringBuffer2, paramVector);
    int j = k;
    if (parambfm != null) {
      parambfm.c().a(aj.a());
      return k;
    } 
    return j;
  }
  
  public int a(bfm parambfm, String paramString, StringBuffer paramStringBuffer, Vector<String> paramVector) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfm != null) {
      aj = new aj();
      aj.a(parambfm.c().a());
    } 
    int k = ac.a(aj, this.bq, paramString, paramStringBuffer, paramVector);
    int j = k;
    if (parambfm != null) {
      parambfm.c().a(aj.a());
      return k;
    } 
    return j;
  }
  
  public int a(bfm parambfm, String paramString, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return b(parambfm, paramString, paramVector, paramStringBuffer);
  }
  
  public int a(bfm parambfm, StringBuffer paramStringBuffer) {
    return b(parambfm, paramStringBuffer);
  }
  
  public int a(bfm parambfm, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return g(parambfm, paramVector, paramStringBuffer);
  }
  
  public int a(bfm parambfm, boolean paramBoolean, String paramString, StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfm != null) {
      aj = new aj();
      aj.a(parambfm.c().a());
    } 
    int k = ac.a(aj, this.bq, paramBoolean, paramString, paramStringBuffer1, paramStringBuffer2);
    int j = k;
    if (parambfm != null) {
      parambfm.c().a(aj.a());
      return k;
    } 
    return j;
  }
  
  public int a(bfv parambfv) {
    try {
      aj aj;
      ac ac = ad.a();
      if (parambfv != null) {
        aj = new aj();
        aj.a(parambfv.a());
      } else {
        aj = null;
      } 
      int j = ac.c(aj, this.bq);
      if (parambfv != null)
        parambfv.a(aj.a()); 
      return j;
    } catch (Exception exception) {
      return 1300;
    } 
  }
  
  public int a(bfv parambfv, bfw parambfw) {
    return b(parambfv, parambfw);
  }
  
  public int a(bfv parambfv, String paramString) {
    if (!this.bo)
      return 1450; 
    try {
      ac ac = ad.a();
      aj aj = new aj();
      aj.a(parambfv.a());
      int k = ac.k(aj, this.bq, paramString);
      parambfv.a(aj.a());
      int j = k;
      return (k == 0) ? 0 : j;
    } catch (Exception exception) {
      return 1432;
    } 
  }
  
  public int a(bfx parambfx) {
    try {
      aj aj;
      ac ac = ad.a();
      if (parambfx != null) {
        aj = new aj();
        aj.a(parambfx.a());
      } else {
        aj = null;
      } 
      int j = ac.a(aj, this.bq);
      if (parambfx != null)
        parambfx.a(aj.a()); 
      return j;
    } catch (Exception exception) {
      return 1300;
    } 
  }
  
  public int a(bfx parambfx, bgb parambgb) {
    return b(parambfx, parambgb);
  }
  
  public int a(bfx parambfx, bgc parambgc) {
    return d(parambfx, parambgc);
  }
  
  public int a(bfx parambfx, String paramString) {
    return k(parambfx, paramString);
  }
  
  public int a(bfx parambfx, String paramString1, String paramString2, String paramString3, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfx != null) {
      aj = new aj();
      aj.a(parambfx.a());
    } 
    int k = ac.a(aj, this.bq, paramString1, paramString2, paramString3, paramStringBuffer);
    int j = k;
    if (parambfx != null) {
      parambfx.a(aj.a());
      return k;
    } 
    return j;
  }
  
  public int a(bfx parambfx, String paramString, StringBuffer paramStringBuffer) {
    aj aj;
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    if (parambfx != null) {
      aj = new aj();
      aj.a(parambfx.a());
    } else {
      aj = null;
    } 
    int k = ac.a(aj, this.bq, null, paramString, paramStringBuffer);
    int j = k;
    if (parambfx != null) {
      parambfx.a(aj.a());
      return k;
    } 
    return j;
  }
  
  public int a(bfx parambfx, String paramString, StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2, Vector<String> paramVector) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfx != null) {
      aj = new aj();
      aj.a(parambfx.a());
    } 
    int k = ac.a(aj, this.bq, paramString, paramStringBuffer1, paramStringBuffer2, paramVector);
    int j = k;
    if (parambfx != null) {
      parambfx.a(aj.a());
      return k;
    } 
    return j;
  }
  
  public int a(bfx parambfx, String paramString, StringBuffer paramStringBuffer, Vector<String> paramVector) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfx != null) {
      aj = new aj();
      aj.a(parambfx.a());
    } 
    int k = ac.a(aj, this.bq, paramString, paramStringBuffer, paramVector);
    int j = k;
    if (parambfx != null) {
      parambfx.a(aj.a());
      return k;
    } 
    return j;
  }
  
  public int a(bfx parambfx, String paramString, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return b(parambfx, paramString, paramVector, paramStringBuffer);
  }
  
  public int a(bfx parambfx, StringBuffer paramStringBuffer) {
    return b(parambfx, paramStringBuffer);
  }
  
  public int a(bfx parambfx, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return g(parambfx, paramVector, paramStringBuffer);
  }
  
  public int a(bfx parambfx, boolean paramBoolean, String paramString, StringBuffer paramStringBuffer1, StringBuffer paramStringBuffer2) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfx != null) {
      aj = new aj();
      aj.a(parambfx.a());
    } 
    int k = ac.a(aj, this.bq, paramBoolean, paramString, paramStringBuffer1, paramStringBuffer2);
    int j = k;
    if (parambfx != null) {
      parambfx.a(aj.a());
      return k;
    } 
    return j;
  }
  
  public int a(String paramString, Vector<String> paramVector) {
    if (!this.bo)
      return 1450; 
    try {
      int k = ad.a().a(this.bq, paramString, paramVector);
      int j = k;
      return (k == 0) ? 0 : j;
    } catch (Exception exception) {
      return 1300;
    } 
  }
  
  protected int a(StringBuffer paramStringBuffer, String paramString) {
    return c(paramStringBuffer, paramString);
  }
  
  public int a(Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return d(paramVector, paramStringBuffer);
  }
  
  public int a(byte[] paramArrayOfbyte1, byte[] paramArrayOfbyte2, byte[] paramArrayOfbyte3, char paramChar) {
    return b(paramArrayOfbyte1, paramArrayOfbyte2, paramArrayOfbyte3, paramChar);
  }
  
  public int b(bfl parambfl, String paramString) {
    if (!this.bo)
      return 1450; 
    try {
      ac ac = ad.a();
      aj aj = new aj();
      aj.a(parambfl.b().a());
      int k = ac.k(aj, this.bq, paramString);
      parambfl.b().a(aj.a());
      int j = k;
      return (k == 0) ? 0 : j;
    } catch (Exception exception) {
      return 1432;
    } 
  }
  
  public int b(bfm parambfm) {
    return c(parambfm);
  }
  
  public int b(bfm parambfm, bgc parambgc) {
    return f(parambfm, parambgc);
  }
  
  public int b(bfm parambfm, String paramString) {
    return o(parambfm, paramString);
  }
  
  public int b(bfm parambfm, String paramString, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfm != null) {
      aj = new aj();
      aj.a(parambfm.c().a());
    } 
    int j = ac.a(aj, this.bq, paramString, paramStringBuffer);
    if (parambfm != null)
      parambfm.c().a(aj.a()); 
    return j;
  }
  
  public int b(bfm parambfm, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return h(parambfm, paramVector, paramStringBuffer);
  }
  
  public int b(bfv parambfv, String paramString) {
    if (!this.bo)
      return 1450; 
    try {
      ac ac = ad.a();
      aj aj = new aj();
      aj.a(parambfv.a());
      int k = ac.l(aj, this.bq, paramString);
      int j = k;
      if (k == 0) {
        parambfv.a(aj.a());
        return 0;
      } 
      return j;
    } catch (Exception exception) {
      return 1432;
    } 
  }
  
  public int b(bfx parambfx) {
    return c(parambfx);
  }
  
  public int b(bfx parambfx, bgc parambgc) {
    return f(parambfx, parambgc);
  }
  
  public int b(bfx parambfx, String paramString) {
    return m(parambfx, paramString);
  }
  
  public int b(bfx parambfx, String paramString, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfx != null) {
      aj = new aj();
      aj.a(parambfx.a());
    } 
    int j = ac.a(aj, this.bq, paramString, paramStringBuffer);
    if (parambfx != null)
      parambfx.a(aj.a()); 
    return j;
  }
  
  public int b(bfx parambfx, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return h(parambfx, paramVector, paramStringBuffer);
  }
  
  public int b(String paramString, Vector<String> paramVector) {
    if (!this.bo)
      return 1450; 
    try {
      int k = ad.a().b(this.bq, paramString, paramVector);
      int j = k;
      return (k == 0) ? 0 : j;
    } catch (Exception exception) {
      return 1300;
    } 
  }
  
  protected int b(StringBuffer paramStringBuffer, String paramString) {
    return c(paramStringBuffer, paramString);
  }
  
  public int b(Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return !this.bo ? 1450 : ad.a().a(this.bq, paramVector, paramStringBuffer);
  }
  
  public int c(bfl parambfl, String paramString) {
    if (!this.bo)
      return 1450; 
    try {
      ac ac = ad.a();
      aj aj = new aj();
      aj.a(parambfl.b().a());
      int k = ac.l(aj, this.bq, paramString);
      int j = k;
      if (k == 0) {
        parambfl.b().a(aj.a());
        return 0;
      } 
      return j;
    } catch (Exception exception) {
      exception.printStackTrace();
      return 1432;
    } 
  }
  
  public int c(bfm parambfm, bgc parambgc) {
    return e(parambfm, parambgc);
  }
  
  public int c(bfm parambfm, String paramString) {
    return n(parambfm, paramString);
  }
  
  public int c(bfm parambfm, String paramString, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfm != null) {
      aj = new aj();
      aj.a(parambfm.c().a());
    } 
    int j = ac.c(aj, this.bq, paramString, paramStringBuffer);
    if (parambfm != null)
      parambfm.c().a(aj.a()); 
    return j;
  }
  
  public int c(bfm parambfm, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return i(parambfm, paramVector, paramStringBuffer);
  }
  
  public int c(bfx parambfx, bgc parambgc) {
    return e(parambfx, parambgc);
  }
  
  public int c(bfx parambfx, String paramString) {
    return l(parambfx, paramString);
  }
  
  public int c(bfx parambfx, String paramString, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfx != null) {
      aj = new aj();
      aj.a(parambfx.a());
    } 
    int j = ac.c(aj, this.bq, paramString, paramStringBuffer);
    if (parambfx != null)
      parambfx.a(aj.a()); 
    return j;
  }
  
  public int c(bfx parambfx, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return i(parambfx, paramVector, paramStringBuffer);
  }
  
  public int c(String paramString, Vector<String> paramVector) {
    return !this.bo ? 1450 : ad.a().c(this.bq, paramString, paramVector);
  }
  
  protected int c(StringBuffer paramStringBuffer, String paramString) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (paramStringBuffer != null) {
      aj = new aj();
      aj.a(paramStringBuffer.toString());
    } 
    int j = ac.n(aj, this.bq, paramString);
    if (paramStringBuffer != null) {
      paramStringBuffer.setLength(0);
      paramStringBuffer.append(aj.a());
    } 
    return j;
  }
  
  public int c(Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return !this.bo ? 1450 : ad.a().c(this.bq, paramVector, paramStringBuffer);
  }
  
  public int d(bfm parambfm, String paramString) {
    return l(parambfm, paramString);
  }
  
  public int d(bfm parambfm, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfm != null) {
      aj = new aj();
      aj.a(parambfm.c().a());
    } 
    int j = ac.e(aj, this.bq, paramVector, paramStringBuffer);
    if (parambfm != null)
      parambfm.c().a(aj.a()); 
    return j;
  }
  
  public int d(bfx parambfx, String paramString) {
    return j(parambfx, paramString);
  }
  
  public int d(bfx parambfx, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfx != null) {
      aj = new aj();
      aj.a(parambfx.a());
    } 
    int j = ac.e(aj, this.bq, paramVector, paramStringBuffer);
    if (parambfx != null)
      parambfx.a(aj.a()); 
    return j;
  }
  
  public int d(String paramString, Vector<String> paramVector) {
    return !this.bo ? 1450 : ad.a().d(this.bq, paramString, paramVector);
  }
  
  public int e(bfm parambfm, String paramString) {
    return p(parambfm, paramString);
  }
  
  public int e(bfm parambfm, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfm != null) {
      aj = new aj();
      aj.a(parambfm.c().a());
    } 
    int j = ac.f(aj, this.bq, paramVector, paramStringBuffer);
    if (parambfm != null)
      parambfm.c().a(aj.a()); 
    return j;
  }
  
  public int e(bfx parambfx, String paramString) {
    return n(parambfx, paramString);
  }
  
  public int e(bfx parambfx, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfx != null) {
      aj = new aj();
      aj.a(parambfx.a());
    } 
    int j = ac.f(aj, this.bq, paramVector, paramStringBuffer);
    if (parambfx != null)
      parambfx.a(aj.a()); 
    return j;
  }
  
  public int e(String paramString, Vector<String> paramVector) {
    return !this.bo ? 1450 : ad.a().e(this.bq, paramString, paramVector);
  }
  
  public int f(bfm parambfm, String paramString) {
    return t(parambfm, paramString);
  }
  
  public int f(bfm parambfm, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return j(parambfm, paramVector, paramStringBuffer);
  }
  
  public int f(bfx parambfx, String paramString) {
    return p(parambfx, paramString);
  }
  
  public int f(bfx parambfx, Vector<String> paramVector, StringBuffer paramStringBuffer) {
    return j(parambfx, paramVector, paramStringBuffer);
  }
  
  public int f(String paramString, Vector<String> paramVector) {
    return !this.bo ? 1450 : ad.a().f(this.bq, paramString, paramVector);
  }
  
  public int g(bfm parambfm, String paramString) {
    return q(parambfm, paramString);
  }
  
  public int g(bfx parambfx, String paramString) {
    return o(parambfx, paramString);
  }
  
  public int h(bfm parambfm, String paramString) {
    return r(parambfm, paramString);
  }
  
  public int h(bfx parambfx, String paramString) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfx != null) {
      aj = new aj();
      aj.a(parambfx.a());
    } 
    int j = ac.h(aj, this.bq, paramString);
    if (parambfx != null)
      parambfx.a(aj.a()); 
    return j;
  }
  
  public int i(bfm parambfm, String paramString) {
    return s(parambfm, paramString);
  }
  
  public int i(bfx parambfx, String paramString) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfx != null) {
      aj = new aj();
      aj.a(parambfx.a());
    } 
    int j = ac.i(aj, this.bq, paramString);
    if (parambfx != null)
      parambfx.a(aj.a()); 
    return j;
  }
  
  public int j(bfm parambfm, String paramString) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfm != null) {
      aj = new aj();
      aj.a(parambfm.c().a());
    } 
    int j = ac.h(aj, this.bq, paramString);
    if (parambfm != null)
      parambfm.c().a(aj.a()); 
    return j;
  }
  
  public int k(bfm parambfm, String paramString) {
    if (!this.bo)
      return 1450; 
    ac ac = ad.a();
    aj aj = null;
    if (parambfm != null) {
      aj = new aj();
      aj.a(parambfm.c().a());
    } 
    int j = ac.i(aj, this.bq, paramString);
    if (parambfm != null)
      parambfm.c().a(aj.a()); 
    return j;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */