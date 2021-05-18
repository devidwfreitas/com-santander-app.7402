.class public Lhew;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lhen;

.field private c:Lhex;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lhew;->b:Lhen;

    .line 32
    new-instance v0, Lhex;

    invoke-direct {v0, p0}, Lhex;-><init>(Lhew;)V

    iput-object v0, p0, Lhew;->c:Lhex;

    .line 37
    return-void
.end method

.method static synthetic a(Lhew;)Lhen;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lhew;->b:Lhen;

    return-object v0
.end method


# virtual methods
.method public a()Lhen;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lhew;->b:Lhen;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 43
    :try_start_0
    new-instance v0, Lhen;

    invoke-direct {v0}, Lhen;-><init>()V

    iput-object v0, p0, Lhew;->b:Lhen;

    .line 45
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 48
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lhew;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 49
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lhew;->c:Lhex;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lhew;->b:Lhen;

    goto :goto_0
.end method
