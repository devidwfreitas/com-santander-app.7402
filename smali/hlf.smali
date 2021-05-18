.class public Lhlf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhlg;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "proposals"
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lhlg;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "operations"
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
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lhlg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v1, p0, Lhlf;->a:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 25
    iget-object v1, p0, Lhlf;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 27
    :cond_0
    iget-object v1, p0, Lhlf;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 28
    iget-object v1, p0, Lhlf;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 30
    :cond_1
    return-object v0
.end method
