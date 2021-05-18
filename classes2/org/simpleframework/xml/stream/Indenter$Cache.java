package org.simpleframework.xml.stream;

class Indenter$Cache {
  private int count;
  
  private String[] list;
  
  public Indenter$Cache(int paramInt) {
    this.list = new String[paramInt];
  }
  
  private void resize(int paramInt) {
    String[] arrayOfString = new String[paramInt];
    for (paramInt = 0; paramInt < this.list.length; paramInt++)
      arrayOfString[paramInt] = this.list[paramInt]; 
    this.list = arrayOfString;
  }
  
  public String get(int paramInt) {
    return (paramInt < this.list.length) ? this.list[paramInt] : null;
  }
  
  public void set(int paramInt, String paramString) {
    if (paramInt >= this.list.length)
      resize(paramInt * 2); 
    if (paramInt > this.count)
      this.count = paramInt; 
    this.list[paramInt] = paramString;
  }
  
  public int size() {
    return this.count;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\stream\Indenter$Cache.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */