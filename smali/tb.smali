.class public Ltb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lta;",
            ">;"
        }
    .end annotation

    .annotation runtime Lekq;
    .end annotation

    .annotation runtime Leks;
        a = "groupColumn"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltb;->a:Ljava/util/List;

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
            "Lta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Ltb;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    iput-object p1, p0, Ltb;->a:Ljava/util/List;

    .line 25
    return-void
.end method
