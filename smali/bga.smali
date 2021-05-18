.class Lbga;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldj",
        "<",
        "Lbfu;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a()Lbfu;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ldg;

    invoke-direct {v0}, Ldg;-><init>()V

    invoke-virtual {v0}, Ldg;->a()Lbfu;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lbga;->a()Lbfu;

    move-result-object v0

    return-object v0
.end method
