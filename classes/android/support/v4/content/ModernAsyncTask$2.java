package android.support.v4.content;

import android.os.Binder;
import android.os.Process;

class ModernAsyncTask$2 extends ModernAsyncTask$WorkerRunnable<Params, Result> {
  public Result call() {
    ModernAsyncTask.access$000(ModernAsyncTask.this).set(true);
    Object object = null;
    Object object2 = null;
    null = object2;
    Object object1 = object;
    try {
      Process.setThreadPriority(10);
      null = object2;
      object1 = object;
      object2 = ModernAsyncTask.this.doInBackground((Object[])this.mParams);
      null = object2;
      object1 = object2;
      Binder.flushPendingCommands();
      return (Result)object2;
    } catch (Throwable throwable) {
      object1 = null;
      ModernAsyncTask.access$100(ModernAsyncTask.this).set(true);
      object1 = null;
      throw throwable;
    } finally {
      ModernAsyncTask.this.postResult(object1);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\content\ModernAsyncTask$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */