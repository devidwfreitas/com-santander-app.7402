.class Lbyl;
.super Lbnz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbny",
        "<",
        "Lcom/facebook/share/internal/LikeContent;",
        "Lbyk;",
        ">.bnz;"
    }
.end annotation


# instance fields
.field final synthetic b:Lbyf;


# direct methods
.method private constructor <init>(Lbyf;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lbyl;->b:Lbyf;

    invoke-direct {p0, p1}, Lbnz;-><init>(Lbny;)V

    return-void
.end method

.method synthetic constructor <init>(Lbyf;Lbyg;)V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lbyl;-><init>(Lbyf;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/share/internal/LikeContent;)Lbmr;
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lbyl;->b:Lbyf;

    invoke-virtual {v0}, Lbyf;->d()Lbmr;

    move-result-object v0

    .line 187
    invoke-static {p1}, Lbyf;->a(Lcom/facebook/share/internal/LikeContent;)Landroid/os/Bundle;

    move-result-object v1

    .line 188
    invoke-static {}, Lbyf;->g()Lbnv;

    move-result-object v2

    .line 185
    invoke-static {v0, v1, v2}, Lbnw;->a(Lbmr;Landroid/os/Bundle;Lbnv;)V

    .line 190
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lbmr;
    .locals 1

    .prologue
    .line 175
    check-cast p1, Lcom/facebook/share/internal/LikeContent;

    invoke-virtual {p0, p1}, Lbyl;->a(Lcom/facebook/share/internal/LikeContent;)Lbmr;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/share/internal/LikeContent;Z)Z
    .locals 1

    .prologue
    .line 178
    if-eqz p1, :cond_0

    invoke-static {}, Lbyf;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Z)Z
    .locals 1

    .prologue
    .line 175
    check-cast p1, Lcom/facebook/share/internal/LikeContent;

    invoke-virtual {p0, p1, p2}, Lbyl;->a(Lcom/facebook/share/internal/LikeContent;Z)Z

    move-result v0

    return v0
.end method
