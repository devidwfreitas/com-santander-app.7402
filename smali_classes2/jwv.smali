.class public abstract Ljwv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Ljwv;->a:Ljava/io/InputStream;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Lorg/xml/sax/Attributes;Ljava/lang/String;D)D
    .locals 1

    .prologue
    .line 85
    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    if-nez v0, :cond_0

    .line 96
    :goto_0
    return-wide p3

    .line 91
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lorg/xml/sax/Attributes;Ljava/lang/String;F)F
    .locals 1

    .prologue
    .line 107
    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    if-nez v0, :cond_0

    .line 118
    :goto_0
    return p3

    .line 113
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lorg/xml/sax/Attributes;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 61
    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    if-nez v0, :cond_0

    .line 72
    :goto_0
    return p3

    .line 67
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    const-string v0, ""

    .line 49
    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 144
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/xml/sax/Attributes;Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 129
    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    if-nez v0, :cond_0

    .line 140
    :goto_0
    return p3

    .line 135
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljwv;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public abstract b()V
.end method
