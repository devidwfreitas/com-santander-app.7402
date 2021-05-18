import java.io.Reader;
import java.io.StringReader;
import java.util.Iterator;
import java.util.NoSuchElementException;

public final class eki implements Iterator<ejz> {
  private final epo a;
  
  private final Object b;
  
  public eki(Reader paramReader) {
    this.a = new epo(paramReader);
    this.a.a(true);
    this.b = new Object();
  }
  
  public eki(String paramString) {
    this(new StringReader(paramString));
  }
  
  public ejz a() {
    if (!hasNext())
      throw new NoSuchElementException(); 
    try {
      return emn.a(this.a);
    } catch (StackOverflowError stackOverflowError) {
      throw new ekd("Failed parsing JSON source to Json", stackOverflowError);
    } catch (OutOfMemoryError outOfMemoryError) {
      throw new ekd("Failed parsing JSON source to Json", outOfMemoryError);
    } catch (ekd ekd2) {
      NoSuchElementException noSuchElementException;
      ekd ekd1 = ekd2;
      if (ekd2.getCause() instanceof java.io.EOFException)
        noSuchElementException = new NoSuchElementException(); 
      throw noSuchElementException;
    } 
  }
  
  public boolean hasNext() {
    synchronized (this.b) {
      epr epr1 = this.a.f();
      epr epr2 = epr.END_DOCUMENT;
      if (epr1 != epr2)
        return true; 
    } 
    boolean bool = false;
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
    return bool;
  }
  
  public void remove() {
    throw new UnsupportedOperationException();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eki.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */