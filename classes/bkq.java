import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import org.json.JSONArray;
import org.json.JSONException;

class bkq {
  private static final String a = bkq.class.getName();
  
  private static final int b = 100;
  
  private static final int c = 15;
  
  private static volatile bkp d = new bkp();
  
  private static final ScheduledExecutorService e = Executors.newSingleThreadScheduledExecutor();
  
  private static ScheduledFuture f;
  
  private static final Runnable g = new bkr();
  
  private static blo a(blm paramblm, bkp parambkp) {
    blo blo = new blo();
    boolean bool = bhv.b(bhv.h());
    ArrayList<GraphRequest> arrayList = new ArrayList();
    for (bkf bkf : parambkp.a()) {
      GraphRequest graphRequest = a(bkf, parambkp.a(bkf), bool, blo);
      if (graphRequest != null)
        arrayList.add(graphRequest); 
    } 
    if (arrayList.size() > 0) {
      bpu.a(bjb.APP_EVENTS, a, "Flushing %d events due to %s.", new Object[] { Integer.valueOf(blo.a), paramblm.toString() });
      Iterator<GraphRequest> iterator = arrayList.iterator();
      while (iterator.hasNext())
        ((GraphRequest)iterator.next()).m(); 
      return blo;
    } 
    return null;
  }
  
  private static GraphRequest a(bkf parambkf, bls parambls, boolean paramBoolean, blo paramblo) {
    boolean bool;
    String str1 = parambkf.b();
    boj boj = bol.a(str1, false);
    GraphRequest graphRequest = GraphRequest.a(null, String.format("%s/activities", new Object[] { str1 }), null, null);
    Bundle bundle2 = graphRequest.e();
    Bundle bundle1 = bundle2;
    if (bundle2 == null)
      bundle1 = new Bundle(); 
    bundle1.putString("access_token", parambkf.a());
    String str2 = bla.d();
    if (str2 != null)
      bundle1.putString("device_token", str2); 
    graphRequest.a(bundle1);
    if (boj != null) {
      bool = boj.a();
    } else {
      bool = false;
    } 
    int i = parambls.a(graphRequest, bhv.h(), bool, paramBoolean);
    if (i == 0)
      return null; 
    paramblo.a = i + paramblo.a;
    graphRequest.a(new bkv(parambkf, graphRequest, parambls, paramblo));
    return graphRequest;
  }
  
  public static void a() {
    e.execute(new bks());
  }
  
  public static void a(bkf parambkf, bkl parambkl) {
    e.execute(new bku(parambkf, parambkl));
  }
  
  public static void a(blm paramblm) {
    e.execute(new bkt(paramblm));
  }
  
  public static Set<bkf> b() {
    return d.a();
  }
  
  private static void b(bkf parambkf, GraphRequest paramGraphRequest, bix parambix, bls parambls, blo paramblo) {
    bln bln1;
    boolean bool;
    String str;
    FacebookRequestError facebookRequestError = parambix.a();
    bln bln2 = bln.SUCCESS;
    if (facebookRequestError != null) {
      if (facebookRequestError.c() == -1) {
        bln1 = bln.NO_CONNECTIVITY;
        str = "Failed: No Connectivity";
      } else {
        str = String.format("Failed:\n  Response: %s\n  Error %s", new Object[] { bln1.toString(), facebookRequestError.toString() });
        bln1 = bln.SERVER_ERROR;
      } 
    } else {
      str = "Success";
      bln1 = bln2;
    } 
    if (bhv.c(bjb.APP_EVENTS)) {
      String str1 = (String)paramGraphRequest.l();
      try {
        str1 = (new JSONArray(str1)).toString(2);
      } catch (JSONException jSONException) {
        str1 = "<Can't encode events for debug logging>";
      } 
      bpu.a(bjb.APP_EVENTS, a, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s", new Object[] { paramGraphRequest.a().toString(), str, str1 });
    } 
    if (facebookRequestError != null) {
      bool = true;
    } else {
      bool = false;
    } 
    parambls.a(bool);
    if (bln1 == bln.NO_CONNECTIVITY)
      bhv.f().execute(new bkw(parambkf, parambls)); 
    if (bln1 != bln.SUCCESS && paramblo.b != bln.NO_CONNECTIVITY)
      paramblo.b = bln1; 
  }
  
  static void b(blm paramblm) {
    blp blp = bkx.a();
    d.a(blp);
    try {
      blo blo = a(paramblm, d);
      if (blo != null) {
        Intent intent = new Intent("com.facebook.sdk.APP_EVENTS_FLUSHED");
        intent.putExtra("com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED", blo.a);
        intent.putExtra("com.facebook.sdk.APP_EVENTS_FLUSH_RESULT", blo.b);
        LocalBroadcastManager.getInstance(bhv.h()).sendBroadcast(intent);
      } 
      return;
    } catch (Exception exception) {
      Log.w(a, "Caught unexpected exception while flushing app events: ", exception);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bkq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */