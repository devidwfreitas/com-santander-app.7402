import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

public final class emn {
  private emn() {
    throw new UnsupportedOperationException();
  }
  
  public static ejz a(epo paramepo) {
    boolean bool = true;
    try {
      paramepo.f();
      bool = false;
      return eny.X.b(paramepo);
    } catch (EOFException eOFException) {
      if (bool)
        return (ejz)ekb.a; 
      throw new ekj(eOFException);
    } catch (ept ept) {
      throw new ekj(ept);
    } catch (IOException iOException) {
      throw new eka(iOException);
    } catch (NumberFormatException numberFormatException) {
      throw new ekj(numberFormatException);
    } 
  }
  
  public static Writer a(Appendable paramAppendable) {
    return (paramAppendable instanceof Writer) ? (Writer)paramAppendable : new emo(paramAppendable);
  }
  
  public static void a(ejz paramejz, eps parameps) {
    eny.X.a(parameps, paramejz);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\emn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */