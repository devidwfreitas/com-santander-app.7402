.class public abstract Lcqk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcqg;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcqj;)Lcqk;
    .param p1    # Lcqj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcqg;",
            ">(",
            "Lcqj",
            "<-TR;+TS;>;)",
            "Lcqk",
            "<TS;>;"
        }
    .end annotation
.end method

.method public abstract a(Lcqi;)V
    .param p1    # Lcqi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcqi",
            "<-TR;>;)V"
        }
    .end annotation
.end method
