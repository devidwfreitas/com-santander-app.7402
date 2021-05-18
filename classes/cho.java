import java.util.Collection;

public class cho implements chl {
  private String[] a = new String[0];
  
  private int b = 0;
  
  public cho() {}
  
  public cho(Collection<String> paramCollection) {
    if (paramCollection != null)
      a(paramCollection.<String>toArray(new String[paramCollection.size()])); 
  }
  
  public cho(String[] paramArrayOfString) {
    if (paramArrayOfString != null)
      a(paramArrayOfString); 
  }
  
  public String a(float paramFloat, cfj paramcfj) {
    int i = Math.round(paramFloat);
    return (i < 0 || i >= this.b || i != (int)paramFloat) ? "" : this.a[i];
  }
  
  public void a(String[] paramArrayOfString) {
    String[] arrayOfString = paramArrayOfString;
    if (paramArrayOfString == null)
      arrayOfString = new String[0]; 
    this.a = arrayOfString;
    this.b = arrayOfString.length;
  }
  
  public String[] a() {
    return this.a;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cho.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */