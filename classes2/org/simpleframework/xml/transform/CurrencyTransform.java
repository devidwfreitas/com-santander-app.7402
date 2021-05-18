package org.simpleframework.xml.transform;

import java.util.Currency;

class CurrencyTransform implements Transform<Currency> {
  public Currency read(String paramString) {
    return Currency.getInstance(paramString);
  }
  
  public String write(Currency paramCurrency) {
    return paramCurrency.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\transform\CurrencyTransform.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */