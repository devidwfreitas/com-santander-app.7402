package org.simpleframework.xml.core;

import org.simpleframework.xml.stream.Format;
import org.simpleframework.xml.util.Cache;
import org.simpleframework.xml.util.LimitedCache;

class ExpressionBuilder {
  private final Cache<Expression> cache = (Cache<Expression>)new LimitedCache();
  
  private final Format format;
  
  private final Class type;
  
  public ExpressionBuilder(Detail paramDetail, Support paramSupport) {
    this.format = paramSupport.getFormat();
    this.type = paramDetail.getType();
  }
  
  private Expression create(String paramString) {
    PathParser pathParser = new PathParser(paramString, new ClassType(this.type), this.format);
    if (this.cache != null)
      this.cache.cache(paramString, pathParser); 
    return pathParser;
  }
  
  public Expression build(String paramString) {
    Expression expression2 = (Expression)this.cache.fetch(paramString);
    Expression expression1 = expression2;
    if (expression2 == null)
      expression1 = create(paramString); 
    return expression1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\ExpressionBuilder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */