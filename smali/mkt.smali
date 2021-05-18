.class public Lmkt;
.super Lgnb;
.source "SourceFile"


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# instance fields
.field private listaContaCadastrada:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmle;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        inline = true
        name = "listaContaCadastrada"
        required = false
    .end annotation
.end field

.field private listaFavorecidoSantander:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmlf;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        inline = true
        name = "listaFavorecidoSantander"
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
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmlf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lmkt;->listaFavorecidoSantander:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmlf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    iput-object p1, p0, Lmkt;->listaFavorecidoSantander:Ljava/util/List;

    .line 31
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lmkt;->listaContaCadastrada:Ljava/util/List;

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lmkt;->listaContaCadastrada:Ljava/util/List;

    .line 39
    return-void
.end method
