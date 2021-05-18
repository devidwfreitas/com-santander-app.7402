public class clf extends cle {
  public clf(clh paramclh) {
    super(paramclh);
  }
  
  public void a(boolean paramBoolean) {
    this.b.reset();
    if (!paramBoolean) {
      this.b.postTranslate(this.c.b(), this.c.n() - this.c.e());
      return;
    } 
    this.b.setTranslate(-(this.c.o() - this.c.c()), this.c.n() - this.c.e());
    this.b.postScale(-1.0F, 1.0F);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\clf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */