.class public Lgaw;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# instance fields
.field private celularModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgav;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        name = "telefones"
        required = false
    .end annotation
.end field

.field private dataDebito:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private dataEnvio:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private mensagemInformativa:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private mensagemModal:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private mensagemRestricao:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private motivoEnvioModelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lgbb;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        name = "motivos"
        required = false
    .end annotation
.end field

.field private possuiRestricoes:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lgnb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lgaw;->mensagemModal:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lgaw;->mensagemModal:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgbb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    iput-object p1, p0, Lgaw;->motivoEnvioModelList:Ljava/util/ArrayList;

    .line 93
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgav;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    iput-object p1, p0, Lgaw;->celularModelList:Ljava/util/List;

    .line 85
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lgaw;->mensagemRestricao:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lgaw;->mensagemRestricao:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lgaw;->possuiRestricoes:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lgaw;->possuiRestricoes:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lgaw;->mensagemInformativa:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lgaw;->mensagemInformativa:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lgav;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lgaw;->celularModelList:Ljava/util/List;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lgaw;->dataDebito:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public f()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lgbb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lgaw;->motivoEnvioModelList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lgaw;->dataEnvio:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lgaw;->dataDebito:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lgaw;->dataEnvio:Ljava/lang/String;

    return-object v0
.end method
