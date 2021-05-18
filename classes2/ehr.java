import android.app.Activity;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import java.util.concurrent.Executor;

final class ehr<TResult> extends egv<TResult> {
  private final Object a = new Object();
  
  private final ehq<TResult> b = new ehq<TResult>();
  
  private boolean c;
  
  private TResult d;
  
  private Exception e;
  
  private void e() {
    csp.a(this.c, "Task is not yet complete");
  }
  
  private void f() {
    boolean bool;
    if (!this.c) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.a(bool, "Task is already complete");
  }
  
  private void g() {
    synchronized (this.a) {
      if (!this.c)
        return; 
      this.b.a(this);
      return;
    } 
  }
  
  @NonNull
  public egv<TResult> a(@NonNull Activity paramActivity, @NonNull egr<TResult> paramegr) {
    ehj<TResult> ehj = new ehj<TResult>(egx.a, paramegr);
    this.b.a(ehj);
    ehs.b(paramActivity).a(ehj);
    g();
    return this;
  }
  
  @NonNull
  public egv<TResult> a(@NonNull Activity paramActivity, @NonNull egs paramegs) {
    ehl<TResult> ehl = new ehl(egx.a, paramegs);
    this.b.a(ehl);
    ehs.b(paramActivity).a(ehl);
    g();
    return this;
  }
  
  @NonNull
  public egv<TResult> a(@NonNull Activity paramActivity, @NonNull egt<? super TResult> paramegt) {
    ehn<TResult> ehn = new ehn<TResult>(egx.a, paramegt);
    this.b.a(ehn);
    ehs.b(paramActivity).a(ehn);
    g();
    return this;
  }
  
  @NonNull
  public <TContinuationResult> egv<TContinuationResult> a(@NonNull egq<TResult, TContinuationResult> paramegq) {
    return a(egx.a, paramegq);
  }
  
  @NonNull
  public egv<TResult> a(@NonNull egr<TResult> paramegr) {
    return a(egx.a, paramegr);
  }
  
  @NonNull
  public egv<TResult> a(@NonNull egs paramegs) {
    return a(egx.a, paramegs);
  }
  
  @NonNull
  public egv<TResult> a(@NonNull egt<? super TResult> paramegt) {
    return a(egx.a, paramegt);
  }
  
  @NonNull
  public <TContinuationResult> egv<TContinuationResult> a(@NonNull Executor paramExecutor, @NonNull egq<TResult, TContinuationResult> paramegq) {
    ehr<TContinuationResult> ehr1 = new ehr();
    this.b.a(new ehf<TResult, TContinuationResult>(paramExecutor, paramegq, ehr1));
    g();
    return ehr1;
  }
  
  @NonNull
  public egv<TResult> a(@NonNull Executor paramExecutor, @NonNull egr<TResult> paramegr) {
    this.b.a(new ehj<TResult>(paramExecutor, paramegr));
    g();
    return this;
  }
  
  @NonNull
  public egv<TResult> a(@NonNull Executor paramExecutor, @NonNull egs paramegs) {
    this.b.a(new ehl<TResult>(paramExecutor, paramegs));
    g();
    return this;
  }
  
  @NonNull
  public egv<TResult> a(@NonNull Executor paramExecutor, @NonNull egt<? super TResult> paramegt) {
    this.b.a(new ehn<TResult>(paramExecutor, paramegt));
    g();
    return this;
  }
  
  public <X extends Throwable> TResult a(@NonNull Class<X> paramClass) throws X {
    synchronized (this.a) {
      e();
      if (paramClass.isInstance(this.e))
        throw (X)paramClass.cast(this.e); 
    } 
    if (this.e != null)
      throw (X)new egu(this.e); 
    TResult tResult = this.d;
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
    return tResult;
  }
  
  public void a(@NonNull Exception paramException) {
    csp.a(paramException, "Exception must not be null");
    synchronized (this.a) {
      f();
      this.c = true;
      this.e = paramException;
      this.b.a(this);
      return;
    } 
  }
  
  public void a(TResult paramTResult) {
    synchronized (this.a) {
      f();
      this.c = true;
      this.d = paramTResult;
      this.b.a(this);
      return;
    } 
  }
  
  public boolean a() {
    synchronized (this.a) {
      return this.c;
    } 
  }
  
  @NonNull
  public <TContinuationResult> egv<TContinuationResult> b(@NonNull egq<TResult, egv<TContinuationResult>> paramegq) {
    return b(egx.a, paramegq);
  }
  
  @NonNull
  public <TContinuationResult> egv<TContinuationResult> b(@NonNull Executor paramExecutor, @NonNull egq<TResult, egv<TContinuationResult>> paramegq) {
    ehr<TContinuationResult> ehr1 = new ehr();
    this.b.a(new ehh<TResult, TContinuationResult>(paramExecutor, paramegq, ehr1));
    g();
    return ehr1;
  }
  
  public boolean b() {
    synchronized (this.a) {
      if (this.c && this.e == null)
        return true; 
    } 
    boolean bool = false;
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
    return bool;
  }
  
  public boolean b(@NonNull Exception paramException) {
    csp.a(paramException, "Exception must not be null");
    synchronized (this.a) {
      if (this.c)
        return false; 
      this.c = true;
      this.e = paramException;
      this.b.a(this);
      return true;
    } 
  }
  
  public boolean b(TResult paramTResult) {
    synchronized (this.a) {
      if (this.c)
        return false; 
      this.c = true;
      this.d = paramTResult;
      this.b.a(this);
      return true;
    } 
  }
  
  public TResult c() {
    synchronized (this.a) {
      e();
      if (this.e != null)
        throw new egu(this.e); 
    } 
    TResult tResult = this.d;
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_1} */
    return tResult;
  }
  
  @Nullable
  public Exception d() {
    synchronized (this.a) {
      return this.e;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ehr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */