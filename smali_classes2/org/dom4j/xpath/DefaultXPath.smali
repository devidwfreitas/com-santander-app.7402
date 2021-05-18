.class public Lorg/dom4j/xpath/DefaultXPath;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/dom4j/NodeFilter;
.implements Lorg/dom4j/XPath;


# instance fields
.field private namespaceContext:Lorg/jaxen/NamespaceContext;

.field private text:Ljava/lang/String;

.field private xpath:Lorg/jaxen/XPath;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/dom4j/xpath/DefaultXPath;->text:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lorg/dom4j/xpath/DefaultXPath;->parse(Ljava/lang/String;)Lorg/jaxen/XPath;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    .line 45
    return-void
.end method

.method protected static parse(Ljava/lang/String;)Lorg/jaxen/XPath;
    .locals 2

    .prologue
    .line 334
    :try_start_0
    new-instance v0, Lorg/jaxen/dom4j/Dom4jXPath;

    invoke-direct {v0, p0}, Lorg/jaxen/dom4j/Dom4jXPath;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    new-instance v1, Lorg/dom4j/InvalidXPathException;

    invoke-virtual {v0}, Lorg/jaxen/JaxenException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lorg/dom4j/InvalidXPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 337
    :catch_1
    move-exception v0

    .line 340
    new-instance v0, Lorg/dom4j/InvalidXPathException;

    invoke-direct {v0, p0}, Lorg/dom4j/InvalidXPathException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public booleanValueOf(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 190
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->booleanValueOf(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 196
    :goto_0
    return v0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    .line 196
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public evaluate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 93
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 98
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :cond_0
    :goto_0
    return-object v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    .line 105
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getCompareValue(Lorg/dom4j/Node;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionContext()Lorg/jaxen/FunctionContext;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0}, Lorg/jaxen/XPath;->getFunctionContext()Lorg/jaxen/FunctionContext;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceContext()Lorg/jaxen/NamespaceContext;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->namespaceContext:Lorg/jaxen/NamespaceContext;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getVariableContext()Lorg/jaxen/VariableContext;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0}, Lorg/jaxen/XPath;->getVariableContext()Lorg/jaxen/VariableContext;

    move-result-object v0

    return-object v0
.end method

.method protected handleJaxenException(Lorg/jaxen/JaxenException;)V
    .locals 2

    .prologue
    .line 351
    new-instance v0, Lorg/dom4j/XPathException;

    iget-object v1, p0, Lorg/dom4j/xpath/DefaultXPath;->text:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lorg/dom4j/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public matches(Lorg/dom4j/Node;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 247
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 249
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 251
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 252
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 254
    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 255
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 265
    :goto_0
    return v0

    .line 258
    :cond_0
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 261
    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    move v0, v1

    .line 265
    goto :goto_0
.end method

.method public numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;
    .locals 1

    .prologue
    .line 178
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->numberValueOf(Ljava/lang/Object;)Ljava/lang/Number;
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    .line 184
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected removeDuplicates(Ljava/util/List;Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 308
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 310
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 312
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 314
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 315
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    :cond_1
    return-void
.end method

.method public selectNodes(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 115
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 121
    :goto_0
    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    .line 121
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method public selectNodes(Ljava/lang/Object;Lorg/dom4j/XPath;)Ljava/util/List;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-interface {p2, v0}, Lorg/dom4j/XPath;->sort(Ljava/util/List;)V

    .line 129
    return-object v0
.end method

.method public selectNodes(Ljava/lang/Object;Lorg/dom4j/XPath;Z)Ljava/util/List;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->selectNodes(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-interface {p2, v0, p3}, Lorg/dom4j/XPath;->sort(Ljava/util/List;Z)V

    .line 137
    return-object v0
.end method

.method public selectObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->evaluate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public selectSingleNode(Ljava/lang/Object;)Lorg/dom4j/Node;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 142
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->selectSingleNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 146
    instance-of v2, v0, Lorg/dom4j/Node;

    if-eqz v2, :cond_0

    .line 147
    check-cast v0, Lorg/dom4j/Node;

    .line 160
    :goto_0
    return-object v0

    .line 150
    :cond_0
    if-nez v0, :cond_1

    move-object v0, v1

    .line 151
    goto :goto_0

    .line 154
    :cond_1
    new-instance v2, Lorg/dom4j/XPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The result of the XPath expression is not a Node. It was: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/dom4j/XPathException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    move-object v0, v1

    .line 160
    goto :goto_0
.end method

.method public setFunctionContext(Lorg/jaxen/FunctionContext;)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->setFunctionContext(Lorg/jaxen/FunctionContext;)V

    .line 68
    return-void
.end method

.method protected setNSContext(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->namespaceContext:Lorg/jaxen/NamespaceContext;

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-static {p1}, Lorg/dom4j/xpath/DefaultNamespaceContext;->create(Ljava/lang/Object;)Lorg/dom4j/xpath/DefaultNamespaceContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jaxen/XPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 347
    :cond_0
    return-void
.end method

.method public setNamespaceContext(Lorg/jaxen/NamespaceContext;)V
    .locals 1

    .prologue
    .line 79
    iput-object p1, p0, Lorg/dom4j/xpath/DefaultXPath;->namespaceContext:Lorg/jaxen/NamespaceContext;

    .line 80
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 81
    return-void
.end method

.method public setNamespaceURIs(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lorg/jaxen/SimpleNamespaceContext;

    invoke-direct {v0, p1}, Lorg/jaxen/SimpleNamespaceContext;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->setNamespaceContext(Lorg/jaxen/NamespaceContext;)V

    .line 76
    return-void
.end method

.method public setVariableContext(Lorg/jaxen/VariableContext;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->setVariableContext(Lorg/jaxen/VariableContext;)V

    .line 89
    return-void
.end method

.method public sort(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/dom4j/xpath/DefaultXPath;->sort(Ljava/util/List;Z)V

    .line 210
    return-void
.end method

.method protected sort(Ljava/util/List;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 276
    new-instance v0, Lorg/dom4j/xpath/DefaultXPath$1;

    invoke-direct {v0, p0, p2}, Lorg/dom4j/xpath/DefaultXPath$1;-><init>(Lorg/dom4j/xpath/DefaultXPath;Ljava/util/Map;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 296
    return-void
.end method

.method public sort(Ljava/util/List;Z)V
    .locals 5

    .prologue
    .line 223
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 225
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 227
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 228
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 230
    instance-of v4, v0, Lorg/dom4j/Node;

    if-eqz v4, :cond_0

    .line 231
    check-cast v0, Lorg/dom4j/Node;

    .line 232
    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->getCompareValue(Lorg/dom4j/Node;)Ljava/lang/Object;

    move-result-object v4

    .line 233
    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {p0, p1, v3}, Lorg/dom4j/xpath/DefaultXPath;->sort(Ljava/util/List;Ljava/util/Map;)V

    .line 239
    if-eqz p2, :cond_2

    .line 240
    invoke-virtual {p0, p1, v3}, Lorg/dom4j/xpath/DefaultXPath;->removeDuplicates(Ljava/util/List;Ljava/util/Map;)V

    .line 243
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[XPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/dom4j/xpath/DefaultXPath;->setNSContext(Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lorg/dom4j/xpath/DefaultXPath;->xpath:Lorg/jaxen/XPath;

    invoke-interface {v0, p1}, Lorg/jaxen/XPath;->stringValueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/jaxen/JaxenException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 172
    :goto_0
    return-object v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {p0, v0}, Lorg/dom4j/xpath/DefaultXPath;->handleJaxenException(Lorg/jaxen/JaxenException;)V

    .line 172
    const-string v0, ""

    goto :goto_0
.end method
