.class public Ljdq;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private descricaoPerfil:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private expirado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private mensagemTextoAPI:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private questionario:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private recusado:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lgnb;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Ljdq;->expirado:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 38
    iput-boolean p1, p0, Ljdq;->recusado:Z

    .line 39
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Ljdq;->recusado:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Ljdq;->expirado:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Ljdq;->descricaoPerfil:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Ljdq;->questionario:Z

    .line 63
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ljdq;->descricaoPerfil:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Ljdq;->mensagemTextoAPI:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Ljdq;->questionario:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ljdq;->mensagemTextoAPI:Ljava/lang/String;

    return-object v0
.end method
