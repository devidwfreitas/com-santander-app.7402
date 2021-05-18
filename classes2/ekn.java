import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;

public abstract class ekn<T> {
  public final ekn<T> a() {
    return new eko(this);
  }
  
  public final T a(ejz paramejz) {
    try {
      return b(new enc(paramejz));
    } catch (IOException iOException) {
      throw new eka(iOException);
    } 
  }
  
  public final T a(Reader paramReader) {
    return b(new epo(paramReader));
  }
  
  public final T a(String paramString) {
    return a(new StringReader(paramString));
  }
  
  public final String a(T paramT) {
    StringWriter stringWriter = new StringWriter();
    try {
      a(stringWriter, paramT);
      return stringWriter.toString();
    } catch (IOException iOException) {
      throw new AssertionError(iOException);
    } 
  }
  
  public abstract void a(eps parameps, T paramT);
  
  public final void a(Writer paramWriter, T paramT) {
    a(new eps(paramWriter), paramT);
  }
  
  public final ejz b(T paramT) {
    try {
      ene ene = new ene();
      a(ene, paramT);
      return ene.a();
    } catch (IOException iOException) {
      throw new eka(iOException);
    } 
  }
  
  public abstract T b(epo paramepo);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ekn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */