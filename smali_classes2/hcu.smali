.class public Lhcu;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lhcs;

.field private c:Lhct;

.field private d:Lhcv;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 26
    iput-object v0, p0, Lhcu;->b:Lhcs;

    .line 27
    iput-object v0, p0, Lhcu;->c:Lhct;

    .line 28
    new-instance v0, Lhcv;

    invoke-direct {v0, p0}, Lhcv;-><init>(Lhcu;)V

    iput-object v0, p0, Lhcu;->d:Lhcv;

    .line 35
    return-void
.end method

.method static synthetic a(Lhcu;)Lhct;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lhcu;->c:Lhct;

    return-object v0
.end method

.method static synthetic a(Lhcu;Lhct;)Lhct;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lhcu;->c:Lhct;

    return-object p1
.end method

.method static synthetic b(Lhcu;)Lhcs;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lhcu;->b:Lhcs;

    return-object v0
.end method


# virtual methods
.method public a()Lhcs;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lhcu;->b:Lhcs;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 42
    :try_start_0
    new-instance v0, Lhcs;

    invoke-direct {v0}, Lhcs;-><init>()V

    iput-object v0, p0, Lhcu;->b:Lhcs;

    .line 44
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 47
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lhcu;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 48
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Lhcu;->d:Lhcv;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lhcu;->b:Lhcs;

    goto :goto_0
.end method
