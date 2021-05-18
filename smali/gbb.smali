.class public Lgbb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "motivo"
.end annotation


# instance fields
.field private codNatureza:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private editavel:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private txObservacao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private txPergAdic:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private valorEditavel:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgbb;->editavel:Z

    .line 20
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lgbb;->valorEditavel:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lgbb;->editavel:Z

    .line 46
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lgbb;->editavel:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lgbb;->valorEditavel:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lgbb;->codNatureza:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lgbb;->codNatureza:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lgbb;->descricao:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lgbb;->descricao:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lgbb;->txObservacao:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lgbb;->txObservacao:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lgbb;->txPergAdic:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lgbb;->txPergAdic:Ljava/lang/String;

    return-object v0
.end method
