import android.util.Log;

class vl implements zx {
  vl(vk paramvk) {}
  
  public void a(String[] paramArrayOfString) {
    String str = vi.a(this.a.b).getResources().getString(lg.app_corretora_url_prd, new Object[] { paramArrayOfString[0] });
    if (abp.b().c())
      str = vi.a(this.a.b).getResources().getString(lg.app_corretora_url_hk, new Object[] { paramArrayOfString[0] }); 
    zs.a().b(vi.a(this.a.b), str);
    Log.d("TRACE-MOD-ADAPTER", "Via Browser:  PRODUTO: " + this.a.a.d() + " URL: " + str + " PAREMETRO[0]: " + paramArrayOfString[0] + " PAREMETRO[1]: " + paramArrayOfString[1]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\vl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */