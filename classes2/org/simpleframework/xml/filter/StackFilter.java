package org.simpleframework.xml.filter;

import java.util.Stack;

public class StackFilter implements Filter {
  private Stack<Filter> stack = new Stack<Filter>();
  
  public void push(Filter paramFilter) {
    this.stack.push(paramFilter);
  }
  
  public String replace(String paramString) {
    int i = this.stack.size();
    while (true) {
      if (--i >= 0) {
        String str = ((Filter)this.stack.get(i)).replace(paramString);
        if (str != null)
          return str; 
        continue;
      } 
      return null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\simpleframework\xml\filter\StackFilter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */