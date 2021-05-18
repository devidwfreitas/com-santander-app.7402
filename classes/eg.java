import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class eg extends Exception {
  private static final long a = 1L;
  
  private static final String b = "There were multiple errors.";
  
  private List<Throwable> c;
  
  public eg(String paramString, List<? extends Throwable> paramList) {
    super(paramString, throwable);
    Throwable throwable;
    this.c = Collections.unmodifiableList(paramList);
  }
  
  public eg(String paramString, Throwable[] paramArrayOfThrowable) {
    this(paramString, Arrays.asList(paramArrayOfThrowable));
  }
  
  public eg(List<? extends Throwable> paramList) {
    this("There were multiple errors.", paramList);
  }
  
  public List<Throwable> a() {
    return this.c;
  }
  
  @Deprecated
  public List<Exception> b() {
    ArrayList<Exception> arrayList = new ArrayList();
    if (this.c == null)
      return arrayList; 
    for (Throwable throwable : this.c) {
      if (throwable instanceof Exception) {
        arrayList.add((Exception)throwable);
        continue;
      } 
      arrayList.add(new Exception(throwable));
    } 
    return arrayList;
  }
  
  @Deprecated
  public Throwable[] c() {
    return this.c.<Throwable>toArray(new Throwable[this.c.size()]);
  }
  
  public void printStackTrace(PrintStream paramPrintStream) {
    super.printStackTrace(paramPrintStream);
    Iterator<Throwable> iterator = this.c.iterator();
    int i = -1;
    while (iterator.hasNext()) {
      Throwable throwable = iterator.next();
      paramPrintStream.append("\n");
      paramPrintStream.append("  Inner throwable #");
      paramPrintStream.append(Integer.toString(++i));
      paramPrintStream.append(": ");
      throwable.printStackTrace(paramPrintStream);
      paramPrintStream.append("\n");
    } 
  }
  
  public void printStackTrace(PrintWriter paramPrintWriter) {
    super.printStackTrace(paramPrintWriter);
    Iterator<Throwable> iterator = this.c.iterator();
    int i = -1;
    while (iterator.hasNext()) {
      Throwable throwable = iterator.next();
      paramPrintWriter.append("\n");
      paramPrintWriter.append("  Inner throwable #");
      paramPrintWriter.append(Integer.toString(++i));
      paramPrintWriter.append(": ");
      throwable.printStackTrace(paramPrintWriter);
      paramPrintWriter.append("\n");
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\eg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */