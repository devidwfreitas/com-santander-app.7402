.class public Lmrp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private agencia:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private banco:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoBanco:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private conta:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private cpfCnpj:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nome:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private proximoDiaUtil:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valor:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lmrp;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lmrp;->agencia:Ljava/lang/String;

    .line 36
    return-object p0
.end method

.method public a(Lmro;)Lmrp;
    .locals 4

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lmrp;->codigoBanco:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lmrp;->banco:Ljava/lang/String;

    .line 49
    :goto_0
    return-object p0

    .line 44
    :cond_0
    invoke-virtual {p1}, Lmro;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmrp;->codigoBanco:Ljava/lang/String;

    .line 45
    const-string v0, "%s - %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 46
    invoke-virtual {p1}, Lmro;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 47
    invoke-virtual {p1}, Lmro;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 45
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmrp;->banco:Ljava/lang/String;

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lmrp;->codigoBanco:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmrp;->codigoBanco:Ljava/lang/String;

    const-string v1, "33"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmrp;->codigoBanco:Ljava/lang/String;

    const-string v1, "033"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmrp;->codigoBanco:Ljava/lang/String;

    const-string v1, "0033"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lmrp;->codigoBanco:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmrp;->codigoBanco:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lmrp;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lmrp;->conta:Ljava/lang/String;

    .line 54
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lmrp;->banco:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmrp;->banco:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lmrp;
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lmrp;->cpfCnpj:Ljava/lang/String;

    .line 59
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lmrp;->agencia:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmrp;->agencia:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)Lmrp;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lmrp;->nome:Ljava/lang/String;

    .line 64
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lmrp;->conta:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmrp;->conta:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public e(Ljava/lang/String;)Lmrp;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lmrp;->valor:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lmrp;->cpfCnpj:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmrp;->cpfCnpj:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lmrp;->nome:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmrp;->nome:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lmrp;->proximoDiaUtil:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmrp;->proximoDiaUtil:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lmrp;->valor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmrp;->valor:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
