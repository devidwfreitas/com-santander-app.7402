.class public Lilo;
.super Lgoe;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# instance fields
.field private codigoDevice:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigoSimCard:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private documento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private ipExterno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private ipInterno:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private latitude:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private longitude:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private modeloDevice:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nomeDevice:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private operadora:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private ticket:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lgoe;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lilo;->codigoDevice:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lilo;->codigoDevice:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lilo;->codigoSimCard:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lilo;->codigoSimCard:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lilo;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lilo;->latitude:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lilo;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lilo;->longitude:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lilo;->modeloDevice:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lilo;->modeloDevice:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lilo;->nomeDevice:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lilo;->nomeDevice:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lilo;->ipExterno:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lilo;->ipExterno:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lilo;->ipInterno:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lilo;->ipInterno:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lilo;->operadora:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lilo;->operadora:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lilo;->documento:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lilo;->documento:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lilo;->ticket:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lilo;->ticket:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public l()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Lilo;->latitude:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lilo;->latitude:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 134
    :cond_1
    iget-object v1, p0, Lilo;->longitude:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lilo;->longitude:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public m()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lilo;->latitude:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lilo;->latitude:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    iget-object v1, p0, Lilo;->longitude:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lilo;->longitude:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    iget-object v1, p0, Lilo;->ticket:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lilo;->ticket:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    const/4 v0, 0x1

    goto :goto_0
.end method
