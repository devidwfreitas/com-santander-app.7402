.class public Lgxc;
.super Lgnb;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/simpleframework/xml/Root;
    name = "return"
.end annotation


# instance fields
.field private campanhas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgxa;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/simpleframework/xml/ElementList;
        inline = false
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
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
            "Lgxa;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lgxc;->campanhas:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgxa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    iput-object p1, p0, Lgxc;->campanhas:Ljava/util/List;

    .line 30
    return-void
.end method
