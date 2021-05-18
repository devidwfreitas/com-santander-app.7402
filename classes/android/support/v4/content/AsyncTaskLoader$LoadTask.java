package android.support.v4.content;

import android.support.v4.os.OperationCanceledException;
import java.util.concurrent.CountDownLatch;

final class AsyncTaskLoader$LoadTask extends ModernAsyncTask<Void, Void, D> implements Runnable {
  private final CountDownLatch mDone = new CountDownLatch(1);
  
  boolean waiting;
  
  protected D doInBackground(Void... paramVarArgs) {
    try {
      return (D)AsyncTaskLoader.this.onLoadInBackground();
    } catch (OperationCanceledException operationCanceledException) {
      if (!isCancelled())
        throw operationCanceledException; 
      return null;
    } 
  }
  
  protected void onCancelled(D paramD) {
    try {
      AsyncTaskLoader.this.dispatchOnCancelled(this, paramD);
      return;
    } finally {
      this.mDone.countDown();
    } 
  }
  
  protected void onPostExecute(D paramD) {
    try {
      AsyncTaskLoader.this.dispatchOnLoadComplete(this, paramD);
      return;
    } finally {
      this.mDone.countDown();
    } 
  }
  
  public void run() {
    this.waiting = false;
    AsyncTaskLoader.this.executePendingTask();
  }
  
  public void waitForLoader() {
    try {
      this.mDone.await();
      return;
    } catch (InterruptedException interruptedException) {
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\content\AsyncTaskLoader$LoadTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */