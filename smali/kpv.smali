.class public Lkpv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "mainCoverageValue"
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkpz;",
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
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkpz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lkpv;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lkpv;->a:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkpz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    iput-object p1, p0, Lkpv;->b:Ljava/util/List;

    .line 27
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lkpv;->a:Ljava/lang/String;

    return-object v0
.end method
