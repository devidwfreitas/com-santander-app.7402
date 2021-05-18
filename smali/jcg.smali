.class public Ljcg;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private action:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private autenticarUsuario:Liow;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private connUuid:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private cpf:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nome:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroCartao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tokenSession:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private usuarioCpfSimplificado:Ljcj;
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
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Ljcg;->numeroCartao:Ljava/lang/String;

    return-object v0
.end method

.method public a(Liow;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Ljcg;->autenticarUsuario:Liow;

    .line 81
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Ljcg;->numeroCartao:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public a(Ljcj;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Ljcg;->usuarioCpfSimplificado:Ljcj;

    .line 65
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Ljcg;->tokenSession:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Ljcg;->tokenSession:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public c()Ljcj;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ljcg;->usuarioCpfSimplificado:Ljcj;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Ljcg;->connUuid:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Ljcg;->connUuid:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Ljcg;->cpf:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public e()Liow;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ljcg;->autenticarUsuario:Liow;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Ljcg;->nome:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ljcg;->cpf:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Ljcg;->action:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Ljcg;->nome:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Ljcg;->action:Ljava/lang/String;

    return-object v0
.end method
