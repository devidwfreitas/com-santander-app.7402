import br.com.santander.dynamicauth.interfaces.DynamicAuthCallBack;
import br.com.santander.dynamicauth.models.DynamicAuthResponse;

class mml implements DynamicAuthCallBack {
  mml(mmi parammmi, mlo parammlo) {}
  
  public void onFinish() {
    mmi.c(this.b).a();
  }
  
  public void onSuccess(DynamicAuthResponse paramDynamicAuthResponse) {
    mmi.d(this.b).b(new mmm(this), mmi.a(this.b, paramDynamicAuthResponse, this.a));
  }
  
  public void onTag(String paramString) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mml.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */