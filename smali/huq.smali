.class public Lhuq;
.super Lgnb;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# instance fields
.field private identificacaoProduto:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private possuiElegibilidade:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lgnb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lhuq;->identificacaoProduto:Ljava/lang/String;

    const-string v1, "CREDITO_UNIFICADO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lhuq;->identificacaoProduto:Ljava/lang/String;

    const-string v1, "REORGANIZACAO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lhuq;->possuiElegibilidade:Ljava/lang/String;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
