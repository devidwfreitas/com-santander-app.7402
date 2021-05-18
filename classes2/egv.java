import android.app.Activity;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.concurrent.Executor;

public abstract class egv<TResult> {
  @NonNull
  public egv<TResult> a(@NonNull Activity paramActivity, @NonNull egr<TResult> paramegr) {
    throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
  }
  
  @NonNull
  public abstract egv<TResult> a(@NonNull Activity paramActivity, @NonNull egs paramegs);
  
  @NonNull
  public abstract egv<TResult> a(@NonNull Activity paramActivity, @NonNull egt<? super TResult> paramegt);
  
  @NonNull
  public <TContinuationResult> egv<TContinuationResult> a(@NonNull egq<TResult, TContinuationResult> paramegq) {
    throw new UnsupportedOperationException("continueWith is not implemented");
  }
  
  @NonNull
  public egv<TResult> a(@NonNull egr<TResult> paramegr) {
    throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
  }
  
  @NonNull
  public abstract egv<TResult> a(@NonNull egs paramegs);
  
  @NonNull
  public abstract egv<TResult> a(@NonNull egt<? super TResult> paramegt);
  
  @NonNull
  public <TContinuationResult> egv<TContinuationResult> a(@NonNull Executor paramExecutor, @NonNull egq<TResult, TContinuationResult> paramegq) {
    throw new UnsupportedOperationException("continueWith is not implemented");
  }
  
  @NonNull
  public egv<TResult> a(@NonNull Executor paramExecutor, @NonNull egr<TResult> paramegr) {
    throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
  }
  
  @NonNull
  public abstract egv<TResult> a(@NonNull Executor paramExecutor, @NonNull egs paramegs);
  
  @NonNull
  public abstract egv<TResult> a(@NonNull Executor paramExecutor, @NonNull egt<? super TResult> paramegt);
  
  public abstract <X extends Throwable> TResult a(@NonNull Class<X> paramClass) throws X;
  
  public abstract boolean a();
  
  @NonNull
  public <TContinuationResult> egv<TContinuationResult> b(@NonNull egq<TResult, egv<TContinuationResult>> paramegq) {
    throw new UnsupportedOperationException("continueWithTask is not implemented");
  }
  
  @NonNull
  public <TContinuationResult> egv<TContinuationResult> b(@NonNull Executor paramExecutor, @NonNull egq<TResult, egv<TContinuationResult>> paramegq) {
    throw new UnsupportedOperationException("continueWithTask is not implemented");
  }
  
  public abstract boolean b();
  
  public abstract TResult c();
  
  @Nullable
  public abstract Exception d();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\egv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */