import android.util.Log;

class nbq implements gkw {
  nbq(nbp paramnbp, String paramString) {}
  
  public void a(Object paramObject) {
    paramObject = paramObject;
    nbp.a(this.b).f().i(paramObject.getTokenTransacao());
    try {
      paramObject = alb.a(this.a);
      if (!paramObject.toString().contains("ErrD")) {
        paramObject = paramObject.toString().getBytes("UTF-8");
        if (paramObject.length > 0) {
          paramObject = (new naf()).b((byte[])paramObject);
          (new neh(new nbr(this))).a((String)paramObject);
          return;
        } 
        nbp.c(this.b).a((Integer)null);
        return;
      } 
    } catch (Exception exception) {
      Log.e("ERROR_GEN_OTP", exception.getMessage());
      nbp.c(this.b).a((Integer)null);
      return;
    } 
    frq.d("ErroGenerateOTP", exception.toString());
    nbp.c(this.b).a(Integer.valueOf(exception.toString().replace("ErrD", "")));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nbq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */