import br.com.santander.dynamicauth.interfaces.DynamicAuthCallBack;
import br.com.santander.dynamicauth.models.DynamicAuthResponse;

class jtk implements DynamicAuthCallBack {
  jtk(jth paramjth) {}
  
  public void onFinish() {
    jth.a(this.a).a();
  }
  
  public void onSuccess(DynamicAuthResponse paramDynamicAuthResponse) {
    jth.e(this.a).c(new jtl(this), jth.a(this.a, paramDynamicAuthResponse));
  }
  
  public void onTag(String paramString) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jtk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */