.class public Ljzf;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lfue;

.field private c:Lfuj;

.field private d:Z

.field private e:Ljzg;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 27
    iput-object v0, p0, Ljzf;->b:Lfue;

    .line 28
    iput-object v0, p0, Ljzf;->c:Lfuj;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljzf;->d:Z

    .line 30
    new-instance v0, Ljzg;

    invoke-direct {v0, p0}, Ljzg;-><init>(Ljzf;)V

    iput-object v0, p0, Ljzf;->e:Ljzg;

    .line 34
    return-void
.end method

.method static synthetic a(Ljzf;)Lfuj;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ljzf;->c:Lfuj;

    return-object v0
.end method

.method static synthetic a(Ljzf;Lfuj;)Lfuj;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Ljzf;->c:Lfuj;

    return-object p1
.end method

.method static synthetic a(Ljzf;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Ljzf;->d:Z

    return p1
.end method

.method static synthetic b(Ljzf;)Lfue;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ljzf;->b:Lfue;

    return-object v0
.end method

.method static synthetic c(Ljzf;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Ljzf;->d:Z

    return v0
.end method


# virtual methods
.method public a()Lfue;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Ljzf;->b:Lfue;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 44
    :try_start_0
    new-instance v0, Lfue;

    invoke-direct {v0}, Lfue;-><init>()V

    iput-object v0, p0, Ljzf;->b:Lfue;

    .line 45
    iget-object v0, p0, Ljzf;->b:Lfue;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Lfue;->a(Ljava/util/Vector;)V

    .line 47
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 50
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Ljzf;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 51
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Ljzf;->e:Ljzg;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Ljzf;->b:Lfue;

    goto :goto_0
.end method
