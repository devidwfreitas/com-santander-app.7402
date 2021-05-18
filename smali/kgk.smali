.class public Lkgk;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "programacoesRecargaResultListResponse"
.end annotation


# instance fields
.field private mensagemAEA:Ljava/lang/String;
    .annotation runtime Lorg/simpleframework/xml/Element;
        required = false
    .end annotation
.end field

.field private programacoesRecarga:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkgm;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        inline = true
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lgnb;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lkgk;->mensagemAEA:Ljava/lang/String;

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
            "Lkgm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lkgk;->programacoesRecarga:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lkgk;->mensagemAEA:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkgm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Lkgk;->programacoesRecarga:Ljava/util/List;

    .line 34
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lkgk;->mensagemAEA:Ljava/lang/String;

    return-object v0
.end method
