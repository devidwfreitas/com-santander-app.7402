.class Lccg;
.super Lbnz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbny",
        "<",
        "Ljava/lang/String;",
        "Lccf;",
        ">.bnz;"
    }
.end annotation


# instance fields
.field final synthetic b:Lccc;


# direct methods
.method private constructor <init>(Lccc;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lccg;->b:Lccc;

    invoke-direct {p0, p1}, Lbnz;-><init>(Lbny;)V

    return-void
.end method

.method synthetic constructor <init>(Lccc;Lccd;)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lccg;-><init>(Lccc;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lbmr;
    .locals 1

    .prologue
    .line 202
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lccg;->a(Ljava/lang/String;)Lbmr;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lbmr;
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lccg;->b:Lccc;

    invoke-virtual {v0}, Lccc;->d()Lbmr;

    move-result-object v0

    .line 211
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 212
    const-string v2, "id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v2, "game_group_join"

    invoke-static {v0, v2, v1}, Lbnw;->a(Lbmr;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 219
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Z)Z
    .locals 1

    .prologue
    .line 202
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lccg;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method
