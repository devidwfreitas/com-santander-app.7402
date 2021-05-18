.class public Ljzz;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lfvj;

.field private c:Lkaa;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Ljzz;->b:Lfvj;

    .line 26
    new-instance v0, Lkaa;

    invoke-direct {v0, p0}, Lkaa;-><init>(Ljzz;)V

    iput-object v0, p0, Ljzz;->c:Lkaa;

    .line 30
    return-void
.end method

.method static synthetic a(Ljzz;)Lfvj;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Ljzz;->b:Lfvj;

    return-object v0
.end method

.method static synthetic a(Ljzz;Lfvj;)Lfvj;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Ljzz;->b:Lfvj;

    return-object p1
.end method


# virtual methods
.method public a()Lfvj;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ljzz;->b:Lfvj;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 39
    :try_start_0
    new-instance v0, Lfvj;

    invoke-direct {v0}, Lfvj;-><init>()V

    iput-object v0, p0, Ljzz;->b:Lfvj;

    .line 40
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 43
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Ljzz;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 44
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 45
    iget-object v2, p0, Ljzz;->c:Lkaa;

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

    iput-object v0, p0, Ljzz;->b:Lfvj;

    goto :goto_0
.end method
