import java.io.File;

class bop implements Runnable {
  bop(bon parambon, File[] paramArrayOfFile) {}
  
  public void run() {
    File[] arrayOfFile = this.a;
    int j = arrayOfFile.length;
    for (int i = 0; i < j; i++)
      arrayOfFile[i].delete(); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bop.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */