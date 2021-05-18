.class public Lgzv;
.super Lgoe;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "arg0"
.end annotation


# instance fields
.field private deviceIdAtivo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field private idDispositivoAtivo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field private idUsuarioAtivo:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field private infoMobile:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field

.field private senha:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lgoe;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lgzv;->infoMobile:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lgzv;->infoMobile:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lgzv;->deviceIdAtivo:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lgzv;->deviceIdAtivo:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lgzv;->idDispositivoAtivo:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lgzv;->idDispositivoAtivo:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lgzv;->idUsuarioAtivo:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lgzv;->idUsuarioAtivo:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lgzv;->senha:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lgzv;->senha:Ljava/lang/String;

    .line 73
    return-void
.end method
