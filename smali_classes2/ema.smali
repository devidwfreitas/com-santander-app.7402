.class Lema;
.super Lemb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lelt",
        "<TK;TV;>.emb<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lelz;


# direct methods
.method constructor <init>(Lelz;)V
    .locals 1

    .prologue
    .line 835
    iput-object p1, p0, Lema;->a:Lelz;

    iget-object v0, p1, Lelz;->a:Lelt;

    invoke-direct {p0, v0}, Lemb;-><init>(Lelt;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 837
    invoke-virtual {p0}, Lema;->b()Lemc;

    move-result-object v0

    iget-object v0, v0, Lemc;->f:Ljava/lang/Object;

    return-object v0
.end method
