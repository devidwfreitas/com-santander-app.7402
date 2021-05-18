.class public Lgaz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkz;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "moeda"
.end annotation


# instance fields
.field private centavos:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private codigo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private moeda:Lgba;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private sigla:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lgba;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lgaz;->moeda:Lgba;

    .line 46
    iput-object p2, p0, Lgaz;->descricao:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lgaz;->sigla:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgaz;->sigla:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgaz;->descricao:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lgaz;->descricao:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lgba;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lgaz;->moeda:Lgba;

    .line 64
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lgaz;->descricao:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public b()Lgba;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lgaz;->moeda:Lgba;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lgaz;->sigla:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lgaz;->sigla:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lgaz;->codigo:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lgaz;->codigo:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lgaz;->centavos:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lgaz;->centavos:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lgaz;->Y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
