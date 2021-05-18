package org.simpleframework.xml.transform;

class BooleanTransform implements Transform<Boolean> {
  public Boolean read(String paramString) {
    return Boolean.valueOf(paramString);
  }
  
  public String write(Boolean paramBoolean) {
    return paramBoolean.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\BooleanTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */