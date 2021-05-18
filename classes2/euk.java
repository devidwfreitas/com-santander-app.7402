import java.util.ArrayList;
import java.util.List;

public final class euk {
  private final euh a;
  
  private final List<eui> b;
  
  public euk(euh parameuh) {
    this.a = parameuh;
    this.b = new ArrayList<eui>();
    this.b.add(new eui(parameuh, new int[] { 1 }));
  }
  
  private eui a(int paramInt) {
    if (paramInt >= this.b.size()) {
      eui eui = this.b.get(this.b.size() - 1);
      for (int i = this.b.size(); i <= paramInt; i++) {
        eui = eui.b(new eui(this.a, new int[] { 1, this.a.a(i - 1 + this.a.d()) }));
        this.b.add(eui);
      } 
    } 
    return this.b.get(paramInt);
  }
  
  public void a(int[] paramArrayOfint, int paramInt) {
    if (paramInt == 0)
      throw new IllegalArgumentException("No error correction bytes"); 
    int i = paramArrayOfint.length - paramInt;
    if (i <= 0)
      throw new IllegalArgumentException("No data bytes provided"); 
    eui eui = a(paramInt);
    int[] arrayOfInt2 = new int[i];
    System.arraycopy(paramArrayOfint, 0, arrayOfInt2, 0, i);
    int[] arrayOfInt1 = (new eui(this.a, arrayOfInt2)).a(paramInt, 1).c(eui)[1].a();
    int j = paramInt - arrayOfInt1.length;
    for (paramInt = 0; paramInt < j; paramInt++)
      paramArrayOfint[i + paramInt] = 0; 
    System.arraycopy(arrayOfInt1, 0, paramArrayOfint, i + j, arrayOfInt1.length);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\euk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */