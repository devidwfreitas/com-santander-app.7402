.class public Lkry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkrz;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "quotations"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Lkrz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p0, Lkry;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkrz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    iput-object p1, p0, Lkry;->a:Ljava/util/List;

    .line 25
    return-void
.end method
