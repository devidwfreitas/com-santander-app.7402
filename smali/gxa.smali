.class public Lgxa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "campanha"
.end annotation


# instance fields
.field private abordagem:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private conteudo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricaoVds:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dthrIni:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private idCampanha:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private nome:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private porquinho:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private tipo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private visualizacao:Ljava/lang/String;
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
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lgxa;->dthrIni:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lgxa;->dthrIni:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lgxa;->porquinho:Z

    .line 53
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lgxa;->descricaoVds:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lgxa;->porquinho:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lgxa;->descricaoVds:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lgxa;->conteudo:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lgxa;->conteudo:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lgxa;->descricao:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lgxa;->descricao:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lgxa;->idCampanha:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lgxa;->idCampanha:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lgxa;->nome:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lgxa;->nome:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lgxa;->tipo:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lgxa;->tipo:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lgxa;->visualizacao:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lgxa;->visualizacao:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lgxa;->abordagem:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lgxa;->abordagem:Ljava/lang/String;

    return-object v0
.end method
