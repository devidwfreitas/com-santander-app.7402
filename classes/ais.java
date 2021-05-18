final class ais implements Runnable {
  ais(aip paramaip, int paramInt) {}
  
  public final void run() {
    aip.c(this.b).remove(this.a);
    this.b.notifyItemRemoved(this.a);
    this.b.notifyItemRangeChanged(this.a, aip.c(this.b).size());
    aip.a(this.b, false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\ais.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */