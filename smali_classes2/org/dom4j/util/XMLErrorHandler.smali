.class public Lorg/dom4j/util/XMLErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# static fields
.field protected static final ERROR_QNAME:Lorg/dom4j/QName;

.field protected static final FATALERROR_QNAME:Lorg/dom4j/QName;

.field protected static final WARNING_QNAME:Lorg/dom4j/QName;


# instance fields
.field private errorQName:Lorg/dom4j/QName;

.field private errors:Lorg/dom4j/Element;

.field private fatalErrorQName:Lorg/dom4j/QName;

.field private warningQName:Lorg/dom4j/QName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "error"

    invoke-static {v0}, Lorg/dom4j/QName;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    sput-object v0, Lorg/dom4j/util/XMLErrorHandler;->ERROR_QNAME:Lorg/dom4j/QName;

    .line 27
    const-string v0, "fatalError"

    invoke-static {v0}, Lorg/dom4j/QName;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    sput-object v0, Lorg/dom4j/util/XMLErrorHandler;->FATALERROR_QNAME:Lorg/dom4j/QName;

    .line 29
    const-string v0, "warning"

    invoke-static {v0}, Lorg/dom4j/QName;->get(Ljava/lang/String;)Lorg/dom4j/QName;

    move-result-object v0

    sput-object v0, Lorg/dom4j/util/XMLErrorHandler;->WARNING_QNAME:Lorg/dom4j/QName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lorg/dom4j/util/XMLErrorHandler;->ERROR_QNAME:Lorg/dom4j/QName;

    iput-object v0, p0, Lorg/dom4j/util/XMLErrorHandler;->errorQName:Lorg/dom4j/QName;

    .line 44
    sget-object v0, Lorg/dom4j/util/XMLErrorHandler;->FATALERROR_QNAME:Lorg/dom4j/QName;

    iput-object v0, p0, Lorg/dom4j/util/XMLErrorHandler;->fatalErrorQName:Lorg/dom4j/QName;

    .line 49
    sget-object v0, Lorg/dom4j/util/XMLErrorHandler;->WARNING_QNAME:Lorg/dom4j/QName;

    iput-object v0, p0, Lorg/dom4j/util/XMLErrorHandler;->warningQName:Lorg/dom4j/QName;

    .line 52
    const-string v0, "errors"

    invoke-static {v0}, Lorg/dom4j/DocumentHelper;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object v0

    iput-object v0, p0, Lorg/dom4j/util/XMLErrorHandler;->errors:Lorg/dom4j/Element;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Lorg/dom4j/util/XMLErrorHandler;->ERROR_QNAME:Lorg/dom4j/QName;

    iput-object v0, p0, Lorg/dom4j/util/XMLErrorHandler;->errorQName:Lorg/dom4j/QName;

    .line 44
    sget-object v0, Lorg/dom4j/util/XMLErrorHandler;->FATALERROR_QNAME:Lorg/dom4j/QName;

    iput-object v0, p0, Lorg/dom4j/util/XMLErrorHandler;->fatalErrorQName:Lorg/dom4j/QName;

    .line 49
    sget-object v0, Lorg/dom4j/util/XMLErrorHandler;->WARNING_QNAME:Lorg/dom4j/QName;

    iput-object v0, p0, Lorg/dom4j/util/XMLErrorHandler;->warningQName:Lorg/dom4j/QName;

    .line 56
    iput-object p1, p0, Lorg/dom4j/util/XMLErrorHandler;->errors:Lorg/dom4j/Element;

    .line 57
    return-void
.end method


# virtual methods
.method protected addException(Lorg/dom4j/Element;Lorg/xml/sax/SAXParseException;)V
    .locals 2

    .prologue
    .line 121
    const-string v0, "column"

    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 122
    const-string v0, "line"

    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 124
    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getPublicId()Ljava/lang/String;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 127
    const-string v1, "publicID"

    invoke-interface {p1, v1, v0}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 130
    :cond_0
    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 133
    const-string v1, "systemID"

    invoke-interface {p1, v1, v0}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    .line 136
    :cond_1
    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/dom4j/Element;->addText(Ljava/lang/String;)Lorg/dom4j/Element;

    .line 137
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lorg/dom4j/util/XMLErrorHandler;->errors:Lorg/dom4j/Element;

    iget-object v1, p0, Lorg/dom4j/util/XMLErrorHandler;->errorQName:Lorg/dom4j/QName;

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    .line 61
    invoke-virtual {p0, v0, p1}, Lorg/dom4j/util/XMLErrorHandler;->addException(Lorg/dom4j/Element;Lorg/xml/sax/SAXParseException;)V

    .line 62
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/dom4j/util/XMLErrorHandler;->errors:Lorg/dom4j/Element;

    iget-object v1, p0, Lorg/dom4j/util/XMLErrorHandler;->fatalErrorQName:Lorg/dom4j/QName;

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0, p1}, Lorg/dom4j/util/XMLErrorHandler;->addException(Lorg/dom4j/Element;Lorg/xml/sax/SAXParseException;)V

    .line 67
    return-void
.end method

.method public getErrorQName()Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/dom4j/util/XMLErrorHandler;->errorQName:Lorg/dom4j/QName;

    return-object v0
.end method

.method public getErrors()Lorg/dom4j/Element;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/dom4j/util/XMLErrorHandler;->errors:Lorg/dom4j/Element;

    return-object v0
.end method

.method public getFatalErrorQName()Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/dom4j/util/XMLErrorHandler;->fatalErrorQName:Lorg/dom4j/QName;

    return-object v0
.end method

.method public getWarningQName()Lorg/dom4j/QName;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/dom4j/util/XMLErrorHandler;->warningQName:Lorg/dom4j/QName;

    return-object v0
.end method

.method public setErrorQName(Lorg/dom4j/QName;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lorg/dom4j/util/XMLErrorHandler;->errorQName:Lorg/dom4j/QName;

    .line 93
    return-void
.end method

.method public setErrors(Lorg/dom4j/Element;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lorg/dom4j/util/XMLErrorHandler;->errors:Lorg/dom4j/Element;

    .line 83
    return-void
.end method

.method public setFatalErrorQName(Lorg/dom4j/QName;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lorg/dom4j/util/XMLErrorHandler;->fatalErrorQName:Lorg/dom4j/QName;

    .line 101
    return-void
.end method

.method public setWarningQName(Lorg/dom4j/QName;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lorg/dom4j/util/XMLErrorHandler;->warningQName:Lorg/dom4j/QName;

    .line 109
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/dom4j/util/XMLErrorHandler;->errors:Lorg/dom4j/Element;

    iget-object v1, p0, Lorg/dom4j/util/XMLErrorHandler;->warningQName:Lorg/dom4j/QName;

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->addElement(Lorg/dom4j/QName;)Lorg/dom4j/Element;

    move-result-object v0

    .line 71
    invoke-virtual {p0, v0, p1}, Lorg/dom4j/util/XMLErrorHandler;->addException(Lorg/dom4j/Element;Lorg/xml/sax/SAXParseException;)V

    .line 72
    return-void
.end method
