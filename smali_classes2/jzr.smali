.class public Ljzr;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lfvq;

.field private c:Ljzs;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Ljzr;->b:Lfvq;

    .line 33
    new-instance v0, Ljzs;

    invoke-direct {v0, p0}, Ljzs;-><init>(Ljzr;)V

    iput-object v0, p0, Ljzr;->c:Ljzs;

    .line 37
    new-instance v0, Lfvq;

    invoke-direct {v0}, Lfvq;-><init>()V

    iput-object v0, p0, Ljzr;->b:Lfvq;

    .line 38
    return-void
.end method

.method static synthetic a(Ljzr;)Lfvq;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Ljzr;->b:Lfvq;

    return-object v0
.end method


# virtual methods
.method public a()Lfvq;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ljzr;->b:Lfvq;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 49
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 52
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Ljzr;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 53
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Ljzr;->c:Ljzs;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Ljzr;->b:Lfvq;

    goto :goto_0
.end method
