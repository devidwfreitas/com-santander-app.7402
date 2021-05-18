.class Lemi;
.super Lemj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lemd",
        "<TK;TV;>.emj<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lemh;


# direct methods
.method constructor <init>(Lemh;)V
    .locals 1

    .prologue
    .line 601
    iput-object p1, p0, Lemi;->a:Lemh;

    iget-object v0, p1, Lemh;->a:Lemd;

    invoke-direct {p0, v0}, Lemj;-><init>(Lemd;)V

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
    .line 603
    invoke-virtual {p0}, Lemi;->b()Lemk;

    move-result-object v0

    iget-object v0, v0, Lemk;->f:Ljava/lang/Object;

    return-object v0
.end method
