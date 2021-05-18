.class public Ldtc;
.super Ldta;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ldan",
        "<+",
        "Lcqg;",
        "Lcpe;",
        ">;>",
        "Ldta;"
    }
.end annotation


# instance fields
.field protected final b:Ldan;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILdan;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITA;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ldta;-><init>(I)V

    iput-object p2, p0, Ldtc;->b:Ldan;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ldtc;->b:Ldan;

    invoke-virtual {v0, p1}, Ldan;->a(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public a(Ldbi;Z)V
    .locals 1
    .param p1    # Ldbi;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Ldtc;->b:Ldan;

    invoke-virtual {p1, v0, p2}, Ldbi;->a(Ldat;Z)V

    return-void
.end method

.method public a(Ldcs;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldcs",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Ldtc;->b:Ldan;

    invoke-virtual {p1}, Ldcs;->b()Lcph;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldan;->a(Lcpe;)V

    return-void
.end method
