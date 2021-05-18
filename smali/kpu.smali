.class public Lkpu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "deathCoverageValue"
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkpw;",
            ">;"
        }
    .end annotation

    .annotation runtime Leks;
        a = "beneficiaries"
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
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lkpu;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lkpu;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkpw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    iput-object p1, p0, Lkpu;->b:Ljava/util/List;

    .line 34
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkpw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    iget-object v0, p0, Lkpu;->b:Ljava/util/List;

    return-object v0
.end method
