import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

class gnh extends FutureTask<Result> {
  gnh(gne paramgne, Callable<Result> paramCallable) {
    super(paramCallable);
  }
  
  protected void done() {
    try {
      gne.b(this.a, get());
      return;
    } catch (InterruptedException interruptedException) {
      Log.w("AsyncTask", interruptedException);
      return;
    } catch (ExecutionException executionException) {
      throw new RuntimeException("An error occured while executing doInBackground()", executionException.getCause());
    } catch (CancellationException cancellationException) {
      gne.b(this.a, null);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gnh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */