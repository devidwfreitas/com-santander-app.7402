.class public Lhkq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhkr;


# instance fields
.field private a:Lhxo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lhxo;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lhkq;->a:Lhxo;

    return-object v0
.end method

.method public a(Lhxo;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lhkq;->a:Lhxo;

    .line 22
    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lhxp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lhkq;->a:Lhxo;

    invoke-virtual {v0}, Lhxo;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lhxw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lhkq;->a:Lhxo;

    invoke-virtual {v0}, Lhxo;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lhkq;->a:Lhxo;

    invoke-virtual {v0}, Lhxo;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
