package android.support.v4.content;

import android.os.Handler;
import android.support.annotation.RestrictTo;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

abstract class ModernAsyncTask<Params, Progress, Result> {
  private static final int CORE_POOL_SIZE = 5;
  
  private static final int KEEP_ALIVE = 1;
  
  private static final String LOG_TAG = "AsyncTask";
  
  private static final int MAXIMUM_POOL_SIZE = 128;
  
  private static final int MESSAGE_POST_PROGRESS = 2;
  
  private static final int MESSAGE_POST_RESULT = 1;
  
  public static final Executor THREAD_POOL_EXECUTOR;
  
  private static volatile Executor sDefaultExecutor;
  
  private static ModernAsyncTask$InternalHandler sHandler;
  
  private static final BlockingQueue<Runnable> sPoolWorkQueue;
  
  private static final ThreadFactory sThreadFactory = new ModernAsyncTask$1();
  
  private final AtomicBoolean mCancelled = new AtomicBoolean();
  
  private final FutureTask<Result> mFuture = new ModernAsyncTask$3(this, this.mWorker);
  
  private volatile ModernAsyncTask$Status mStatus = ModernAsyncTask$Status.PENDING;
  
  private final AtomicBoolean mTaskInvoked = new AtomicBoolean();
  
  private final ModernAsyncTask$WorkerRunnable<Params, Result> mWorker = new ModernAsyncTask$2(this);
  
  static {
    sPoolWorkQueue = new LinkedBlockingQueue<Runnable>(10);
    THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, sPoolWorkQueue, sThreadFactory);
    sDefaultExecutor = THREAD_POOL_EXECUTOR;
  }
  
  public static void execute(Runnable paramRunnable) {
    sDefaultExecutor.execute(paramRunnable);
  }
  
  private static Handler getHandler() {
    // Byte code:
    //   0: ldc android/support/v4/content/ModernAsyncTask
    //   2: monitorenter
    //   3: getstatic android/support/v4/content/ModernAsyncTask.sHandler : Landroid/support/v4/content/ModernAsyncTask$InternalHandler;
    //   6: ifnonnull -> 19
    //   9: new android/support/v4/content/ModernAsyncTask$InternalHandler
    //   12: dup
    //   13: invokespecial <init> : ()V
    //   16: putstatic android/support/v4/content/ModernAsyncTask.sHandler : Landroid/support/v4/content/ModernAsyncTask$InternalHandler;
    //   19: getstatic android/support/v4/content/ModernAsyncTask.sHandler : Landroid/support/v4/content/ModernAsyncTask$InternalHandler;
    //   22: astore_0
    //   23: ldc android/support/v4/content/ModernAsyncTask
    //   25: monitorexit
    //   26: aload_0
    //   27: areturn
    //   28: astore_0
    //   29: ldc android/support/v4/content/ModernAsyncTask
    //   31: monitorexit
    //   32: aload_0
    //   33: athrow
    // Exception table:
    //   from	to	target	type
    //   3	19	28	finally
    //   19	26	28	finally
    //   29	32	28	finally
  }
  
  @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
  public static void setDefaultExecutor(Executor paramExecutor) {
    sDefaultExecutor = paramExecutor;
  }
  
  public final boolean cancel(boolean paramBoolean) {
    this.mCancelled.set(true);
    return this.mFuture.cancel(paramBoolean);
  }
  
  protected abstract Result doInBackground(Params... paramVarArgs);
  
  public final ModernAsyncTask<Params, Progress, Result> execute(Params... paramVarArgs) {
    return executeOnExecutor(sDefaultExecutor, paramVarArgs);
  }
  
  public final ModernAsyncTask<Params, Progress, Result> executeOnExecutor(Executor paramExecutor, Params... paramVarArgs) {
    if (this.mStatus != ModernAsyncTask$Status.PENDING) {
      switch (ModernAsyncTask$4.$SwitchMap$android$support$v4$content$ModernAsyncTask$Status[this.mStatus.ordinal()]) {
        default:
          this.mStatus = ModernAsyncTask$Status.RUNNING;
          onPreExecute();
          this.mWorker.mParams = paramVarArgs;
          paramExecutor.execute(this.mFuture);
          return this;
        case 1:
          throw new IllegalStateException("Cannot execute task: the task is already running.");
        case 2:
          break;
      } 
      throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
    } 
  }
  
  void finish(Result paramResult) {
    if (isCancelled()) {
      onCancelled(paramResult);
    } else {
      onPostExecute(paramResult);
    } 
    this.mStatus = ModernAsyncTask$Status.FINISHED;
  }
  
  public final Result get() {
    return this.mFuture.get();
  }
  
  public final Result get(long paramLong, TimeUnit paramTimeUnit) {
    return this.mFuture.get(paramLong, paramTimeUnit);
  }
  
  public final ModernAsyncTask$Status getStatus() {
    return this.mStatus;
  }
  
  public final boolean isCancelled() {
    return this.mCancelled.get();
  }
  
  protected void onCancelled() {}
  
  protected void onCancelled(Result paramResult) {
    onCancelled();
  }
  
  protected void onPostExecute(Result paramResult) {}
  
  protected void onPreExecute() {}
  
  protected void onProgressUpdate(Progress... paramVarArgs) {}
  
  Result postResult(Result paramResult) {
    getHandler().obtainMessage(1, new ModernAsyncTask$AsyncTaskResult(this, new Object[] { paramResult })).sendToTarget();
    return paramResult;
  }
  
  void postResultIfNotInvoked(Result paramResult) {
    if (!this.mTaskInvoked.get())
      postResult(paramResult); 
  }
  
  protected final void publishProgress(Progress... paramVarArgs) {
    if (!isCancelled())
      getHandler().obtainMessage(2, new ModernAsyncTask$AsyncTaskResult<Progress>(this, paramVarArgs)).sendToTarget(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\content\ModernAsyncTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */