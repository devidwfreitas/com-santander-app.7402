.class public Lmiw;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private aceito:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private descricaoDesenquadramento:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private desenquadramento:Z
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dispensado:Z
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
    .line 51
    iput-object p1, p0, Lmiw;->descricaoDesenquadramento:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lmiw;->aceito:Z

    .line 36
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lmiw;->aceito:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 43
    iput-boolean p1, p0, Lmiw;->desenquadramento:Z

    .line 44
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lmiw;->desenquadramento:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lmiw;->descricaoDesenquadramento:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lmiw;->dispensado:Z

    .line 60
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lmiw;->dispensado:Z

    return v0
.end method
