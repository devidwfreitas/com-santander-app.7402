import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import com.facebook.AccessToken;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import org.json.JSONArray;

class brg extends AsyncTask<Void, Void, String[]> {
  private String b;
  
  private Bundle c;
  
  private Exception[] d;
  
  brg(bqy parambqy, String paramString, Bundle paramBundle) {
    this.b = paramString;
    this.c = paramBundle;
  }
  
  protected void a(String[] paramArrayOfString) {
    bqy.c(this.a).dismiss();
    for (Exception exception : this.d) {
      if (exception != null) {
        this.a.a(exception);
        return;
      } 
    } 
    if (paramArrayOfString == null) {
      this.a.a(new bhp("Failed to stage photos for web dialog"));
      return;
    } 
    List<String> list = Arrays.asList(paramArrayOfString);
    if (list.contains(null)) {
      this.a.a(new bhp("Failed to stage photos for web dialog"));
      return;
    } 
    bqq.a(this.c, "media", new JSONArray(list));
    Uri uri = bqq.a(bqn.a(), bhv.i() + "/" + "dialog/" + this.b, this.c);
    bqy.a(this.a, uri.toString());
    int i = bqy.f(this.a).getDrawable().getIntrinsicWidth();
    bqy.a(this.a, i / 2 + 1);
  }
  
  protected String[] a(Void... paramVarArgs) {
    String[] arrayOfString1 = this.c.getStringArray("media");
    String[] arrayOfString2 = new String[arrayOfString1.length];
    this.d = new Exception[arrayOfString1.length];
    CountDownLatch countDownLatch = new CountDownLatch(arrayOfString1.length);
    ConcurrentLinkedQueue<bit> concurrentLinkedQueue = new ConcurrentLinkedQueue();
    AccessToken accessToken = AccessToken.a();
    for (int i = 0;; i++) {
      try {
        if (i < arrayOfString1.length) {
          Iterator<AsyncTask> iterator;
          if (isCancelled()) {
            iterator = concurrentLinkedQueue.iterator();
            while (iterator.hasNext())
              ((AsyncTask)iterator.next()).cancel(true); 
            return null;
          } 
          Uri uri = Uri.parse((String)iterator[i]);
          if (bqq.b(uri)) {
            arrayOfString2[i] = uri.toString();
            countDownLatch.countDown();
          } else {
            concurrentLinkedQueue.add(bze.a(accessToken, uri, new brh(this, arrayOfString2, i, countDownLatch)).n());
          } 
        } else {
          countDownLatch.await();
          return arrayOfString2;
        } 
      } catch (Exception exception) {
        Iterator<bit> iterator = concurrentLinkedQueue.iterator();
        while (iterator.hasNext())
          ((AsyncTask)iterator.next()).cancel(true); 
        return null;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\brg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */