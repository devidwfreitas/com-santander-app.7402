.class public Ljqq;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Ljqj;

.field private c:Ljqr;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Ljqq;->b:Ljqj;

    .line 26
    new-instance v0, Ljqr;

    invoke-direct {v0, p0}, Ljqr;-><init>(Ljqq;)V

    iput-object v0, p0, Ljqq;->c:Ljqr;

    .line 30
    return-void
.end method

.method static synthetic a(Ljqq;)Ljqj;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ljqq;->b:Ljqj;

    return-object v0
.end method

.method static synthetic a(Ljqq;Ljqj;)Ljqj;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Ljqq;->b:Ljqj;

    return-object p1
.end method


# virtual methods
.method public a()Ljqj;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ljqq;->b:Ljqj;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 39
    :try_start_0
    new-instance v0, Ljqj;

    invoke-direct {v0}, Ljqj;-><init>()V

    iput-object v0, p0, Ljqq;->b:Ljqj;

    .line 41
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 44
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Ljqq;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 45
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Ljqq;->c:Ljqr;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Ljqq;->b:Ljqj;

    goto :goto_0
.end method
