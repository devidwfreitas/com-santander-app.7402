.class public Lkaf;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lful;

.field private c:Lfum;

.field private d:Lkag;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 32
    iput-object v0, p0, Lkaf;->b:Lful;

    .line 33
    iput-object v0, p0, Lkaf;->c:Lfum;

    .line 34
    new-instance v0, Lkag;

    invoke-direct {v0, p0}, Lkag;-><init>(Lkaf;)V

    iput-object v0, p0, Lkaf;->d:Lkag;

    .line 38
    return-void
.end method

.method static synthetic a(Lkaf;)Lfum;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lkaf;->c:Lfum;

    return-object v0
.end method

.method static synthetic a(Lkaf;Lfum;)Lfum;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lkaf;->c:Lfum;

    return-object p1
.end method

.method static synthetic b(Lkaf;)Lful;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lkaf;->b:Lful;

    return-object v0
.end method


# virtual methods
.method public a()Lful;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lkaf;->b:Lful;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 48
    :try_start_0
    new-instance v0, Lful;

    invoke-direct {v0}, Lful;-><init>()V

    iput-object v0, p0, Lkaf;->b:Lful;

    .line 49
    new-instance v0, Lfum;

    invoke-direct {v0}, Lfum;-><init>()V

    iput-object v0, p0, Lkaf;->c:Lfum;

    .line 50
    iget-object v0, p0, Lkaf;->b:Lful;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Lful;->a(Ljava/util/Vector;)V

    .line 52
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 55
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Lkaf;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 56
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lkaf;->d:Lkag;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lkaf;->b:Lful;

    goto :goto_0
.end method
