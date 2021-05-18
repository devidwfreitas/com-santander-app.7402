.class public Lva;
.super Labv;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Luz;",
            ">;"
        }
    .end annotation

    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "families"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Labv;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lva;->a:Ljava/util/List;

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
            "Luz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lva;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Luz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    iput-object p1, p0, Lva;->a:Ljava/util/List;

    .line 21
    return-void
.end method
