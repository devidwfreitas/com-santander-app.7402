.class final Lbzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbqu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbqu",
        "<",
        "Lbpz;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 286
    check-cast p1, Lbpz;

    invoke-virtual {p0, p1}, Lbzj;->a(Lbpz;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lbpz;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p1}, Lbpz;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
