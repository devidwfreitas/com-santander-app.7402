package android.support.v4.content;

import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

class ModernAsyncTask$3 extends FutureTask<Result> {
  ModernAsyncTask$3(Callable<Result> paramCallable) {
    super(paramCallable);
  }
  
  protected void done() {
    try {
      Result result = get();
      ModernAsyncTask.this.postResultIfNotInvoked(result);
      return;
    } catch (InterruptedException interruptedException) {
      Log.w("AsyncTask", interruptedException);
      return;
    } catch (ExecutionException executionException) {
      throw new RuntimeException("An error occurred while executing doInBackground()", executionException.getCause());
    } catch (CancellationException cancellationException) {
      ModernAsyncTask.this.postResultIfNotInvoked(null);
      return;
    } catch (Throwable throwable) {
      throw new RuntimeException("An error occurred while executing doInBackground()", throwable);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\content\ModernAsyncTask$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */