package org.simpleframework.xml.core;

import org.simpleframework.xml.filter.Filter;

class TemplateFilter implements Filter {
  private Context context;
  
  private Filter filter;
  
  public TemplateFilter(Context paramContext, Filter paramFilter) {
    this.context = paramContext;
    this.filter = paramFilter;
  }
  
  public String replace(String paramString) {
    Object object = this.context.getAttribute(paramString);
    return (object != null) ? object.toString() : this.filter.replace(paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\core\TemplateFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */