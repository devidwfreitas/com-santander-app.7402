.class public Lorg/dom4j/io/SAXReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SAX_DECL_HANDLER:Ljava/lang/String; = "http://xml.org/sax/properties/declaration-handler"

.field private static final SAX_LEXICALHANDLER:Ljava/lang/String; = "http://xml.org/sax/handlers/LexicalHandler"

.field private static final SAX_LEXICAL_HANDLER:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field private static final SAX_NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final SAX_NAMESPACE_PREFIXES:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static final SAX_STRING_INTERNING:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"


# instance fields
.field private dispatchHandler:Lorg/dom4j/io/DispatchHandler;

.field private encoding:Ljava/lang/String;

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private factory:Lorg/dom4j/DocumentFactory;

.field private ignoreComments:Z

.field private includeExternalDTDDeclarations:Z

.field private includeInternalDTDDeclarations:Z

.field private mergeAdjacentText:Z

.field private stringInternEnabled:Z

.field private stripWhitespaceText:Z

.field private validating:Z

.field private xmlFilter:Lorg/xml/sax/XMLFilter;

.field private xmlReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    .line 119
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 124
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 129
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 134
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 139
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    .line 119
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 124
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 129
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 134
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 139
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 180
    if-eqz p1, :cond_0

    .line 181
    invoke-static {p1}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 184
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    .line 119
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 124
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 129
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 134
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 139
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 188
    if-eqz p1, :cond_0

    .line 189
    invoke-static {p1}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 193
    :cond_0
    iput-boolean p2, p0, Lorg/dom4j/io/SAXReader;->validating:Z

    .line 194
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    .line 119
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 124
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 129
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 134
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 139
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 163
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    .line 119
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 124
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 129
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 134
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 139
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 166
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 167
    iput-boolean p2, p0, Lorg/dom4j/io/SAXReader;->validating:Z

    .line 168
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    .line 119
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 124
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 129
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 134
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 139
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 171
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 172
    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    .line 119
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 124
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 129
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 134
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 139
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 175
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 176
    iput-boolean p2, p0, Lorg/dom4j/io/SAXReader;->validating:Z

    .line 177
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    .line 119
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 124
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 129
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 134
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 139
    iput-boolean v1, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 158
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->validating:Z

    .line 159
    return-void
.end method


# virtual methods
.method public addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V
    .locals 1

    .prologue
    .line 733
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/dom4j/io/DispatchHandler;->addHandler(Ljava/lang/String;Lorg/dom4j/ElementHandler;)V

    .line 734
    return-void
.end method

.method protected configureReader(Lorg/xml/sax/XMLReader;Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 854
    const-string v0, "http://xml.org/sax/handlers/LexicalHandler"

    invoke-static {p1, v0, p2}, Lorg/dom4j/io/SAXHelper;->setParserProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 857
    const-string v0, "http://xml.org/sax/properties/lexical-handler"

    invoke-static {p1, v0, p2}, Lorg/dom4j/io/SAXHelper;->setParserProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 860
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    if-eqz v0, :cond_1

    .line 861
    :cond_0
    const-string v0, "http://xml.org/sax/properties/declaration-handler"

    invoke-static {p1, v0, p2}, Lorg/dom4j/io/SAXHelper;->setParserProperty(Lorg/xml/sax/XMLReader;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 865
    :cond_1
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-static {p1, v0, v2}, Lorg/dom4j/io/SAXHelper;->setParserFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;Z)Z

    .line 867
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/dom4j/io/SAXHelper;->setParserFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;Z)Z

    .line 870
    const-string v0, "http://xml.org/sax/features/string-interning"

    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isStringInternEnabled()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/dom4j/io/SAXHelper;->setParserFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;Z)Z

    .line 882
    const-string v0, "http://xml.org/sax/features/use-locator2"

    invoke-static {p1, v0, v2}, Lorg/dom4j/io/SAXHelper;->setParserFeature(Lorg/xml/sax/XMLReader;Ljava/lang/String;Z)Z

    .line 887
    :try_start_0
    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isValidating()Z

    move-result v1

    invoke-interface {p1, v0, v1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 890
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v0, :cond_3

    .line 891
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 901
    :cond_2
    :goto_0
    return-void

    .line 893
    :cond_3
    invoke-interface {p1, p2}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 895
    :catch_0
    move-exception v0

    .line 896
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isValidating()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 897
    new-instance v1, Lorg/dom4j/DocumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Validation not supported for XMLReader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createContentHandler(Lorg/xml/sax/XMLReader;)Lorg/dom4j/io/SAXContentHandler;
    .locals 3

    .prologue
    .line 910
    new-instance v0, Lorg/dom4j/io/SAXContentHandler;

    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getDocumentFactory()Lorg/dom4j/DocumentFactory;

    move-result-object v1

    iget-object v2, p0, Lorg/dom4j/io/SAXReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    invoke-direct {v0, v1, v2}, Lorg/dom4j/io/SAXContentHandler;-><init>(Lorg/dom4j/DocumentFactory;Lorg/dom4j/ElementHandler;)V

    return-object v0
.end method

.method protected createDefaultEntityResolver(Ljava/lang/String;)Lorg/xml/sax/EntityResolver;
    .locals 2

    .prologue
    .line 914
    const/4 v0, 0x0

    .line 916
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 917
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 919
    if-lez v1, :cond_0

    .line 920
    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 924
    :cond_0
    new-instance v1, Lorg/dom4j/io/SAXReader$SAXEntityResolver;

    invoke-direct {v1, v0}, Lorg/dom4j/io/SAXReader$SAXEntityResolver;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method protected createXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .prologue
    .line 841
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isValidating()Z

    move-result v0

    invoke-static {v0}, Lorg/dom4j/io/SAXHelper;->createXMLReader(Z)Lorg/xml/sax/XMLReader;

    move-result-object v0

    return-object v0
.end method

.method protected getDispatchHandler()Lorg/dom4j/io/DispatchHandler;
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    if-nez v0, :cond_0

    .line 823
    new-instance v0, Lorg/dom4j/io/DispatchHandler;

    invoke-direct {v0}, Lorg/dom4j/io/DispatchHandler;-><init>()V

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    .line 826
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    return-object v0
.end method

.method public getDocumentFactory()Lorg/dom4j/DocumentFactory;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->factory:Lorg/dom4j/DocumentFactory;

    if-nez v0, :cond_0

    .line 612
    invoke-static {}, Lorg/dom4j/DocumentFactory;->getInstance()Lorg/dom4j/DocumentFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 615
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->factory:Lorg/dom4j/DocumentFactory;

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getXMLFilter()Lorg/xml/sax/XMLFilter;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->xmlFilter:Lorg/xml/sax/XMLFilter;

    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    if-nez v0, :cond_0

    .line 677
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 680
    :cond_0
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method protected installXMLFilter(Lorg/xml/sax/XMLReader;)Lorg/xml/sax/XMLReader;
    .locals 4

    .prologue
    .line 797
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getXMLFilter()Lorg/xml/sax/XMLFilter;

    move-result-object v2

    .line 799
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 804
    :goto_0
    invoke-interface {v1}, Lorg/xml/sax/XMLFilter;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 806
    instance-of v3, v0, Lorg/xml/sax/XMLFilter;

    if-eqz v3, :cond_0

    .line 807
    check-cast v0, Lorg/xml/sax/XMLFilter;

    move-object v1, v0

    .line 811
    goto :goto_0

    .line 813
    :cond_0
    invoke-interface {v1, p1}, Lorg/xml/sax/XMLFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    .line 818
    :goto_1
    return-object v2

    :cond_1
    move-object v2, p1

    goto :goto_1
.end method

.method public isIgnoreComments()Z
    .locals 1

    .prologue
    .line 592
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    return v0
.end method

.method public isIncludeExternalDTDDeclarations()Z
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    return v0
.end method

.method public isIncludeInternalDTDDeclarations()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    return v0
.end method

.method public isMergeAdjacentText()Z
    .locals 1

    .prologue
    .line 553
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    return v0
.end method

.method public isStringInternEnabled()Z
    .locals 1

    .prologue
    .line 534
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    return v0
.end method

.method public isStripWhitespaceText()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    return v0
.end method

.method public isValidating()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lorg/dom4j/io/SAXReader;->validating:Z

    return v0
.end method

.method public read(Ljava/io/File;)Lorg/dom4j/Document;
    .locals 5

    .prologue
    .line 247
    :try_start_0
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 248
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 251
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_2

    .line 255
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 258
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 259
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    :cond_1
    const/16 v3, 0x5c

    const/16 v4, 0x2f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 268
    :cond_2
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    new-instance v1, Lorg/dom4j/DocumentException;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read(Ljava/io/InputStream;)Lorg/dom4j/Document;
    .locals 2

    .prologue
    .line 330
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 331
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 335
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/InputStream;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 2

    .prologue
    .line 368
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 369
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 371
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 374
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/Reader;)Lorg/dom4j/Document;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 349
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 350
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 353
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/Reader;Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 2

    .prologue
    .line 389
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 390
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 395
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/String;)Lorg/dom4j/Document;
    .locals 2

    .prologue
    .line 312
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 317
    :cond_0
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/net/URL;)Lorg/dom4j/Document;
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    .line 286
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 291
    :cond_0
    invoke-virtual {p0, v1}, Lorg/dom4j/io/SAXReader;->read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;

    move-result-object v0

    return-object v0
.end method

.method public read(Lorg/xml/sax/InputSource;)Lorg/dom4j/Document;
    .locals 5

    .prologue
    .line 409
    :try_start_0
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 411
    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->installXMLFilter(Lorg/xml/sax/XMLReader;)Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 413
    iget-object v0, p0, Lorg/dom4j/io/SAXReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 415
    if-nez v0, :cond_0

    .line 416
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->createDefaultEntityResolver(Ljava/lang/String;)Lorg/xml/sax/EntityResolver;

    move-result-object v0

    .line 418
    iput-object v0, p0, Lorg/dom4j/io/SAXReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 421
    :cond_0
    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 423
    invoke-virtual {p0, v1}, Lorg/dom4j/io/SAXReader;->createContentHandler(Lorg/xml/sax/XMLReader;)Lorg/dom4j/io/SAXContentHandler;

    move-result-object v2

    .line 424
    invoke-virtual {v2, v0}, Lorg/dom4j/io/SAXContentHandler;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 425
    invoke-virtual {v2, p1}, Lorg/dom4j/io/SAXContentHandler;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 427
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isIncludeInternalDTDDeclarations()Z

    move-result v0

    .line 428
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isIncludeExternalDTDDeclarations()Z

    move-result v3

    .line 430
    invoke-virtual {v2, v0}, Lorg/dom4j/io/SAXContentHandler;->setIncludeInternalDTDDeclarations(Z)V

    .line 431
    invoke-virtual {v2, v3}, Lorg/dom4j/io/SAXContentHandler;->setIncludeExternalDTDDeclarations(Z)V

    .line 432
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isMergeAdjacentText()Z

    move-result v0

    invoke-virtual {v2, v0}, Lorg/dom4j/io/SAXContentHandler;->setMergeAdjacentText(Z)V

    .line 433
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isStripWhitespaceText()Z

    move-result v0

    invoke-virtual {v2, v0}, Lorg/dom4j/io/SAXContentHandler;->setStripWhitespaceText(Z)V

    .line 434
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->isIgnoreComments()Z

    move-result v0

    invoke-virtual {v2, v0}, Lorg/dom4j/io/SAXContentHandler;->setIgnoreComments(Z)V

    .line 435
    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 437
    invoke-virtual {p0, v1, v2}, Lorg/dom4j/io/SAXReader;->configureReader(Lorg/xml/sax/XMLReader;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 439
    invoke-interface {v1, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 441
    invoke-virtual {v2}, Lorg/dom4j/io/SAXContentHandler;->getDocument()Lorg/dom4j/Document;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 442
    :catch_0
    move-exception v1

    .line 443
    instance-of v0, v1, Lorg/xml/sax/SAXParseException;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 445
    check-cast v0, Lorg/xml/sax/SAXParseException;

    .line 446
    invoke-virtual {v0}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 448
    if-nez v2, :cond_1

    .line 449
    const-string v2, ""

    .line 452
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error on line "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of document "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    new-instance v2, Lorg/dom4j/DocumentException;

    invoke-direct {v2, v0, v1}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 458
    :cond_2
    new-instance v0, Lorg/dom4j/DocumentException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lorg/dom4j/DocumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public removeHandler(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 743
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/DispatchHandler;->removeHandler(Ljava/lang/String;)Lorg/dom4j/ElementHandler;

    .line 744
    return-void
.end method

.method public resetHandlers()V
    .locals 1

    .prologue
    .line 764
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/dom4j/io/DispatchHandler;->resetHandlers()V

    .line 765
    return-void
.end method

.method public setDefaultHandler(Lorg/dom4j/ElementHandler;)V
    .locals 1

    .prologue
    .line 755
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getDispatchHandler()Lorg/dom4j/io/DispatchHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/dom4j/io/DispatchHandler;->setDefaultHandler(Lorg/dom4j/ElementHandler;)V

    .line 756
    return-void
.end method

.method protected setDispatchHandler(Lorg/dom4j/io/DispatchHandler;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->dispatchHandler:Lorg/dom4j/io/DispatchHandler;

    .line 831
    return-void
.end method

.method public setDocumentFactory(Lorg/dom4j/DocumentFactory;)V
    .locals 0

    .prologue
    .line 629
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->factory:Lorg/dom4j/DocumentFactory;

    .line 630
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->encoding:Ljava/lang/String;

    .line 709
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 667
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 649
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 227
    return-void
.end method

.method public setIgnoreComments(Z)V
    .locals 0

    .prologue
    .line 601
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->ignoreComments:Z

    .line 602
    return-void
.end method

.method public setIncludeExternalDTDDeclarations(Z)V
    .locals 0

    .prologue
    .line 524
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->includeExternalDTDDeclarations:Z

    .line 525
    return-void
.end method

.method public setIncludeInternalDTDDeclarations(Z)V
    .locals 0

    .prologue
    .line 503
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->includeInternalDTDDeclarations:Z

    .line 504
    return-void
.end method

.method public setMergeAdjacentText(Z)V
    .locals 0

    .prologue
    .line 563
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->mergeAdjacentText:Z

    .line 564
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lorg/dom4j/io/SAXReader;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method public setStringInternEnabled(Z)V
    .locals 0

    .prologue
    .line 544
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->stringInternEnabled:Z

    .line 545
    return-void
.end method

.method public setStripWhitespaceText(Z)V
    .locals 0

    .prologue
    .line 583
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->stripWhitespaceText:Z

    .line 584
    return-void
.end method

.method public setValidation(Z)V
    .locals 0

    .prologue
    .line 482
    iput-boolean p1, p0, Lorg/dom4j/io/SAXReader;->validating:Z

    .line 483
    return-void
.end method

.method public setXMLFilter(Lorg/xml/sax/XMLFilter;)V
    .locals 0

    .prologue
    .line 782
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->xmlFilter:Lorg/xml/sax/XMLFilter;

    .line 783
    return-void
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lorg/dom4j/io/SAXReader;->xmlReader:Lorg/xml/sax/XMLReader;

    .line 690
    return-void
.end method

.method public setXMLReaderClassName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 721
    invoke-static {p1}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/dom4j/io/SAXReader;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 722
    return-void
.end method
