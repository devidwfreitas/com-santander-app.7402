.class public Ldg;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lbfu;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcz;

    invoke-direct {v0}, Lcz;-><init>()V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Ldg;->a()Lbfu;

    move-result-object v0

    return-object v0
.end method
