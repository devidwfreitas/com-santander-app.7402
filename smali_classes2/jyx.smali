.class public Ljyx;
.super Ljwv;
.source "SourceFile"


# instance fields
.field private b:Lfux;

.field private c:Lfuw;

.field private d:Ljyy;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Ljwv;-><init>(Ljava/io/InputStream;)V

    .line 27
    iput-object v0, p0, Ljyx;->b:Lfux;

    .line 28
    iput-object v0, p0, Ljyx;->c:Lfuw;

    .line 29
    new-instance v0, Ljyy;

    invoke-direct {v0, p0}, Ljyy;-><init>(Ljyx;)V

    iput-object v0, p0, Ljyx;->d:Ljyy;

    .line 33
    return-void
.end method

.method static synthetic a(Ljyx;)Lfuw;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ljyx;->c:Lfuw;

    return-object v0
.end method

.method static synthetic a(Ljyx;Lfuw;)Lfuw;
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Ljyx;->c:Lfuw;

    return-object p1
.end method

.method static synthetic b(Ljyx;)Lfux;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Ljyx;->b:Lfux;

    return-object v0
.end method


# virtual methods
.method public a()Lfux;
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Ljyx;->b:Lfux;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljyx;->b:Lfux;

    invoke-virtual {v0}, Lfux;->a()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljyx;->b:Lfux;

    invoke-virtual {v0}, Lfux;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 37
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Ljyx;->b:Lfux;

    invoke-virtual {v0}, Lfux;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 38
    iget-object v0, p0, Ljyx;->b:Lfux;

    invoke-virtual {v0}, Lfux;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfuw;

    invoke-virtual {v0}, Lfuw;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljyx;->b:Lfux;

    invoke-virtual {v0}, Lfux;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfuw;

    invoke-virtual {v0}, Lfuw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    iget-object v0, p0, Ljyx;->b:Lfux;

    invoke-virtual {v0}, Lfux;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfuw;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfuw;->a(Ljava/lang/String;)V

    .line 37
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 42
    :cond_2
    iget-object v0, p0, Ljyx;->b:Lfux;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljyx;->b:Lfux;

    invoke-virtual {v0}, Lfux;->a()Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljyx;->b:Lfux;

    invoke-virtual {v0}, Lfux;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 43
    iget-object v0, p0, Ljyx;->c:Lfuw;

    invoke-virtual {v0}, Lfuw;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Ljyx;->c:Lfuw;

    invoke-virtual {v0}, Lfuw;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 44
    iget-object v0, p0, Ljyx;->c:Lfuw;

    invoke-virtual {v0}, Lfuw;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljyx;->c:Lfuw;

    invoke-virtual {v0}, Lfuw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 45
    :cond_3
    iget-object v0, p0, Ljyx;->c:Lfuw;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lfuw;->a(Ljava/lang/String;)V

    .line 47
    :cond_4
    iget-object v0, p0, Ljyx;->b:Lfux;

    invoke-virtual {v0}, Lfux;->a()Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Ljyx;->c:Lfuw;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_5
    iget-object v0, p0, Ljyx;->b:Lfux;

    return-object v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 57
    :try_start_0
    new-instance v0, Lfux;

    invoke-direct {v0}, Lfux;-><init>()V

    iput-object v0, p0, Ljyx;->b:Lfux;

    .line 58
    iget-object v0, p0, Ljyx;->b:Lfux;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0, v1}, Lfux;->a(Ljava/util/Vector;)V

    .line 59
    new-instance v0, Lfuw;

    invoke-direct {v0}, Lfuw;-><init>()V

    iput-object v0, p0, Ljyx;->c:Lfuw;

    .line 61
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 64
    new-instance v1, Lorg/xml/sax/InputSource;

    iget-object v2, p0, Ljyx;->a:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 65
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Ljyx;->d:Ljyy;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Ljyx;->b:Lfux;

    goto :goto_0
.end method
