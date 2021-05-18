package android.support.v7.app;

import android.content.res.Resources;

final class AppCompatDelegateImplBase$1 implements Thread.UncaughtExceptionHandler {
  private boolean shouldWrapException(Throwable paramThrowable) {
    boolean bool = false;
    null = bool;
    if (paramThrowable instanceof Resources.NotFoundException) {
      String str = paramThrowable.getMessage();
      null = bool;
      if (str != null) {
        if (!str.contains("drawable")) {
          null = bool;
          return str.contains("Drawable") ? true : null;
        } 
      } else {
        return null;
      } 
    } else {
      return null;
    } 
    return true;
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable) {
    if (shouldWrapException(paramThrowable)) {
      Resources.NotFoundException notFoundException = new Resources.NotFoundException(paramThrowable.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
      notFoundException.initCause(paramThrowable.getCause());
      notFoundException.setStackTrace(paramThrowable.getStackTrace());
      defHandler.uncaughtException(paramThread, (Throwable)notFoundException);
      return;
    } 
    defHandler.uncaughtException(paramThread, paramThrowable);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\AppCompatDelegateImplBase$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */