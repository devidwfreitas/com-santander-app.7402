import android.content.Intent;

public class cow extends Exception {
  private final Intent a;
  
  public cow(String paramString, Intent paramIntent) {
    super(paramString);
    this.a = paramIntent;
  }
  
  public Intent b() {
    return new Intent(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cow.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */