import java.io.IOException;
import java.io.StringWriter;
import java.math.BigDecimal;
import java.math.BigInteger;

public abstract class ejz {
  public Number c() {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public String d() {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public double e() {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public BigDecimal f() {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public BigInteger g() {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public float h() {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public long i() {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public int j() {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public byte k() {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public char l() {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public short m() {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  public boolean n() {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
  
  abstract ejz o();
  
  public boolean p() {
    return this instanceof ejw;
  }
  
  public boolean q() {
    return this instanceof ekc;
  }
  
  public boolean r() {
    return this instanceof ekf;
  }
  
  public boolean s() {
    return this instanceof ekb;
  }
  
  public ekc t() {
    if (q())
      return (ekc)this; 
    throw new IllegalStateException("Not a JSON Object: " + this);
  }
  
  public String toString() {
    try {
      StringWriter stringWriter = new StringWriter();
      eps eps = new eps(stringWriter);
      eps.b(true);
      emn.a(this, eps);
      return stringWriter.toString();
    } catch (IOException iOException) {
      throw new AssertionError(iOException);
    } 
  }
  
  public ejw u() {
    if (p())
      return (ejw)this; 
    throw new IllegalStateException("This is not a JSON Array.");
  }
  
  public ekf v() {
    if (r())
      return (ekf)this; 
    throw new IllegalStateException("This is not a JSON Primitive.");
  }
  
  public ekb w() {
    if (s())
      return (ekb)this; 
    throw new IllegalStateException("This is not a JSON Null.");
  }
  
  Boolean x() {
    throw new UnsupportedOperationException(getClass().getSimpleName());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ejz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */