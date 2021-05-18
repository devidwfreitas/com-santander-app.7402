.class public Liop;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lioh;

.field private c:Lioq;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Liop;->b:Lioh;

    .line 33
    new-instance v0, Lioq;

    invoke-direct {v0, p0}, Lioq;-><init>(Liop;)V

    iput-object v0, p0, Liop;->c:Lioq;

    .line 30
    return-void
.end method

.method static synthetic a(Liop;)Lioh;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Liop;->b:Lioh;

    return-object v0
.end method


# virtual methods
.method public a()Lioh;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Liop;->b:Lioh;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 42
    :try_start_0
    new-instance v0, Lioh;

    invoke-direct {v0}, Lioh;-><init>()V

    iput-object v0, p0, Liop;->b:Lioh;

    .line 44
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 47
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Liop;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 48
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Liop;->c:Lioq;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Liop;->b:Lioh;

    goto :goto_0
.end method
