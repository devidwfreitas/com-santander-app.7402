import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.facebook.GraphRequest;
import java.net.HttpURLConnection;
import java.util.Collection;
import java.util.List;

public class bit extends AsyncTask<Void, Void, List<bix>> {
  private static final String a = bit.class.getCanonicalName();
  
  private final HttpURLConnection b;
  
  private final biu c;
  
  private Exception d;
  
  public bit(biu parambiu) {
    this((HttpURLConnection)null, parambiu);
  }
  
  public bit(HttpURLConnection paramHttpURLConnection, biu parambiu) {
    this.c = parambiu;
    this.b = paramHttpURLConnection;
  }
  
  public bit(HttpURLConnection paramHttpURLConnection, Collection<GraphRequest> paramCollection) {
    this(paramHttpURLConnection, new biu(paramCollection));
  }
  
  public bit(HttpURLConnection paramHttpURLConnection, GraphRequest... paramVarArgs) {
    this(paramHttpURLConnection, new biu(paramVarArgs));
  }
  
  public bit(Collection<GraphRequest> paramCollection) {
    this((HttpURLConnection)null, new biu(paramCollection));
  }
  
  public bit(GraphRequest... paramVarArgs) {
    this((HttpURLConnection)null, new biu(paramVarArgs));
  }
  
  protected final Exception a() {
    return this.d;
  }
  
  protected List<bix> a(Void... paramVarArgs) {
    try {
      return (this.b == null) ? this.c.g() : GraphRequest.a(this.b, this.c);
    } catch (Exception exception) {
      this.d = exception;
      return null;
    } 
  }
  
  protected void a(List<bix> paramList) {
    super.onPostExecute(paramList);
    if (this.d != null)
      Log.d(a, String.format("onPostExecute: exception encountered during request: %s", new Object[] { this.d.getMessage() })); 
  }
  
  protected final biu b() {
    return this.c;
  }
  
  protected void onPreExecute() {
    super.onPreExecute();
    if (bhv.d())
      Log.d(a, String.format("execute async task: %s", new Object[] { this })); 
    if (this.c.c() == null) {
      Handler handler;
      if (Thread.currentThread() instanceof android.os.HandlerThread) {
        handler = new Handler();
      } else {
        handler = new Handler(Looper.getMainLooper());
      } 
      this.c.a(handler);
    } 
  }
  
  public String toString() {
    return "{RequestAsyncTask: " + " connection: " + this.b + ", requests: " + this.c + "}";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bit.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */