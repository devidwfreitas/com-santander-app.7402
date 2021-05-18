import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;

final class buc implements bus {
  buc(bue parambue, bvj parambvj) {}
  
  public void a(bum parambum) {
    if (parambum.b != null) {
      this.a.a(bua.a(parambum.b));
      return;
    } 
    Bundle bundle = bua.a(this.b, parambum);
    GraphRequest graphRequest = new GraphRequest(AccessToken.a(), "current_place/results", bundle, biz.GET);
    this.a.a(graphRequest);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\buc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */