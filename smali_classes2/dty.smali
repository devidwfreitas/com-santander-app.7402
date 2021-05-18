.class public abstract Ldty;
.super Ldan;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcqg;",
        ">",
        "Ldan",
        "<TR;",
        "Ldjh;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcpt;)V
    .locals 1

    sget-object v0, Ldtw;->a:Lcox;

    invoke-direct {p0, v0, p1}, Ldan;-><init>(Lcox;Lcpt;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcqg;

    invoke-super {p0, p1}, Ldan;->a(Lcqg;)V

    return-void
.end method
