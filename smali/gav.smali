.class public Lgav;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkz;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "telefones"
.end annotation


# instance fields
.field private ddd:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private isNovoNumero:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numero:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private numeroFormatado:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgav;->isNovoNumero:Z

    .line 21
    return-void
.end method


# virtual methods
.method public Y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lgav;->numeroFormatado:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lgav;->numeroFormatado:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lgav;->isNovoNumero:Z

    .line 42
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lgav;->isNovoNumero:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lgav;->numeroFormatado:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lgav;->numeroFormatado:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lgav;->numeroFormatado:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lgav;->numero:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lgav;->numero:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lgav;->ddd:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lgav;->ddd:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lgav;->numeroFormatado:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
