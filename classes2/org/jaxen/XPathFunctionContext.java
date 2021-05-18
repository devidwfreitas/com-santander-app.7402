package org.jaxen;

import org.jaxen.function.BooleanFunction;
import org.jaxen.function.CeilingFunction;
import org.jaxen.function.ConcatFunction;
import org.jaxen.function.ContainsFunction;
import org.jaxen.function.CountFunction;
import org.jaxen.function.FalseFunction;
import org.jaxen.function.FloorFunction;
import org.jaxen.function.IdFunction;
import org.jaxen.function.LangFunction;
import org.jaxen.function.LastFunction;
import org.jaxen.function.LocalNameFunction;
import org.jaxen.function.NameFunction;
import org.jaxen.function.NamespaceUriFunction;
import org.jaxen.function.NormalizeSpaceFunction;
import org.jaxen.function.NotFunction;
import org.jaxen.function.NumberFunction;
import org.jaxen.function.PositionFunction;
import org.jaxen.function.RoundFunction;
import org.jaxen.function.StartsWithFunction;
import org.jaxen.function.StringFunction;
import org.jaxen.function.StringLengthFunction;
import org.jaxen.function.SubstringAfterFunction;
import org.jaxen.function.SubstringBeforeFunction;
import org.jaxen.function.SubstringFunction;
import org.jaxen.function.SumFunction;
import org.jaxen.function.TranslateFunction;
import org.jaxen.function.TrueFunction;
import org.jaxen.function.ext.EndsWithFunction;
import org.jaxen.function.ext.EvaluateFunction;
import org.jaxen.function.ext.LowerFunction;
import org.jaxen.function.ext.UpperFunction;
import org.jaxen.function.xslt.DocumentFunction;

public class XPathFunctionContext extends SimpleFunctionContext {
  private static XPathFunctionContext instance = new XPathFunctionContext();
  
  public XPathFunctionContext() {
    this(true);
  }
  
  public XPathFunctionContext(boolean paramBoolean) {
    registerXPathFunctions();
    if (paramBoolean) {
      registerXSLTFunctions();
      registerExtensionFunctions();
    } 
  }
  
  public static FunctionContext getInstance() {
    return instance;
  }
  
  private void registerExtensionFunctions() {
    registerFunction(null, "evaluate", (Function)new EvaluateFunction());
    registerFunction(null, "lower-case", (Function)new LowerFunction());
    registerFunction(null, "upper-case", (Function)new UpperFunction());
    registerFunction(null, "ends-with", (Function)new EndsWithFunction());
  }
  
  private void registerXPathFunctions() {
    registerFunction(null, "boolean", (Function)new BooleanFunction());
    registerFunction(null, "ceiling", (Function)new CeilingFunction());
    registerFunction(null, "concat", (Function)new ConcatFunction());
    registerFunction(null, "contains", (Function)new ContainsFunction());
    registerFunction(null, "count", (Function)new CountFunction());
    registerFunction(null, "false", (Function)new FalseFunction());
    registerFunction(null, "floor", (Function)new FloorFunction());
    registerFunction(null, "id", (Function)new IdFunction());
    registerFunction(null, "lang", (Function)new LangFunction());
    registerFunction(null, "last", (Function)new LastFunction());
    registerFunction(null, "local-name", (Function)new LocalNameFunction());
    registerFunction(null, "name", (Function)new NameFunction());
    registerFunction(null, "namespace-uri", (Function)new NamespaceUriFunction());
    registerFunction(null, "normalize-space", (Function)new NormalizeSpaceFunction());
    registerFunction(null, "not", (Function)new NotFunction());
    registerFunction(null, "number", (Function)new NumberFunction());
    registerFunction(null, "position", (Function)new PositionFunction());
    registerFunction(null, "round", (Function)new RoundFunction());
    registerFunction(null, "starts-with", (Function)new StartsWithFunction());
    registerFunction(null, "string", (Function)new StringFunction());
    registerFunction(null, "string-length", (Function)new StringLengthFunction());
    registerFunction(null, "substring-after", (Function)new SubstringAfterFunction());
    registerFunction(null, "substring-before", (Function)new SubstringBeforeFunction());
    registerFunction(null, "substring", (Function)new SubstringFunction());
    registerFunction(null, "sum", (Function)new SumFunction());
    registerFunction(null, "true", (Function)new TrueFunction());
    registerFunction(null, "translate", (Function)new TranslateFunction());
  }
  
  private void registerXSLTFunctions() {
    registerFunction(null, "document", (Function)new DocumentFunction());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\jaxen\XPathFunctionContext.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */