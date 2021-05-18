import java.util.concurrent.Callable;

abstract class gno<Params, Result> implements Callable<Result> {
  Params[] b;
  
  private gno() {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gno.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */