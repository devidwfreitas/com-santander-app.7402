import android.content.Intent;

public class coq extends cow {
  private final int a;
  
  coq(int paramInt, String paramString, Intent paramIntent) {
    super(paramString, paramIntent);
    this.a = paramInt;
  }
  
  public int a() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\coq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */