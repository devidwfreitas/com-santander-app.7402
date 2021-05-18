.class Lejt;
.super Lekn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lekn",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lekn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lekn",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 955
    invoke-direct {p0}, Lekn;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lekn;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lekn",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 959
    iget-object v0, p0, Lejt;->a:Lekn;

    if-eqz v0, :cond_0

    .line 960
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 962
    :cond_0
    iput-object p1, p0, Lejt;->a:Lekn;

    .line 963
    return-void
.end method

.method public a(Leps;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leps;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 973
    iget-object v0, p0, Lejt;->a:Lekn;

    if-nez v0, :cond_0

    .line 974
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 976
    :cond_0
    iget-object v0, p0, Lejt;->a:Lekn;

    invoke-virtual {v0, p1, p2}, Lekn;->a(Leps;Ljava/lang/Object;)V

    .line 977
    return-void
.end method

.method public b(Lepo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lepo;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 966
    iget-object v0, p0, Lejt;->a:Lekn;

    if-nez v0, :cond_0

    .line 967
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 969
    :cond_0
    iget-object v0, p0, Lejt;->a:Lekn;

    invoke-virtual {v0, p1}, Lekn;->b(Lepo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
