.class public final Ldbd;
.super Lcqn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcoy;",
        ">",
        "Lcqn",
        "<TO;>;"
    }
.end annotation


# instance fields
.field private final b:Lcph;

.field private final c:Ldax;

.field private final d:Lctn;

.field private final e:Lcpd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpd",
            "<+",
            "Ldpx;",
            "Ldpy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcox;Landroid/os/Looper;Lcph;Ldax;Lctn;Lcpd;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcph;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ldax;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcox",
            "<TO;>;",
            "Landroid/os/Looper;",
            "Lcph;",
            "Ldax;",
            "Lctn;",
            "Lcpd",
            "<+",
            "Ldpx;",
            "Ldpy;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcqn;-><init>(Landroid/content/Context;Lcox;Landroid/os/Looper;)V

    iput-object p4, p0, Ldbd;->b:Lcph;

    iput-object p5, p0, Ldbd;->c:Ldax;

    iput-object p6, p0, Ldbd;->d:Lctn;

    iput-object p7, p0, Ldbd;->e:Lcpd;

    iget-object v0, p0, Ldbd;->a:Ldcq;

    invoke-virtual {v0, p0}, Ldcq;->a(Lcqn;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Looper;Ldcs;)Lcph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Ldcs",
            "<TO;>;)",
            "Lcph;"
        }
    .end annotation

    iget-object v0, p0, Ldbd;->c:Ldax;

    invoke-virtual {v0, p2}, Ldax;->a(Lday;)V

    iget-object v0, p0, Ldbd;->b:Lcph;

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Handler;)Ldea;
    .locals 3

    new-instance v0, Ldea;

    iget-object v1, p0, Ldbd;->d:Lctn;

    iget-object v2, p0, Ldbd;->e:Lcpd;

    invoke-direct {v0, p1, p2, v1, v2}, Ldea;-><init>(Landroid/content/Context;Landroid/os/Handler;Lctn;Lcpd;)V

    return-object v0
.end method

.method public h()Lcph;
    .locals 1

    iget-object v0, p0, Ldbd;->b:Lcph;

    return-object v0
.end method
