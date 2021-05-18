import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;

public final class eke {
  public ejz a(epo paramepo) {
    boolean bool = paramepo.q();
    paramepo.a(true);
    try {
      return emn.a(paramepo);
    } catch (StackOverflowError stackOverflowError) {
      throw new ekd("Failed parsing JSON source: " + paramepo + " to Json", stackOverflowError);
    } catch (OutOfMemoryError outOfMemoryError) {
      throw new ekd("Failed parsing JSON source: " + paramepo + " to Json", outOfMemoryError);
    } finally {
      paramepo.a(bool);
    } 
  }
  
  public ejz a(Reader paramReader) {
    ejz ejz;
    try {
      epo epo = new epo(paramReader);
      ejz = a(epo);
      if (!ejz.s() && epo.f() != epr.END_DOCUMENT)
        throw new ekj("Did not consume the entire document."); 
    } catch (ept ept) {
      throw new ekj(ept);
    } catch (IOException iOException) {
      throw new eka(iOException);
    } catch (NumberFormatException numberFormatException) {
      throw new ekj(numberFormatException);
    } 
    return ejz;
  }
  
  public ejz a(String paramString) {
    return a(new StringReader(paramString));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eke.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */