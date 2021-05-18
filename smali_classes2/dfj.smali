.class public final Ldfj;
.super Ljava/lang/Object;

# interfaces
.implements Ldfi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcpt;)Lcpy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcpt;",
            ")",
            "Lcpy",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    new-instance v0, Ldfk;

    invoke-direct {v0, p0, p1}, Ldfk;-><init>(Ldfj;Lcpt;)V

    invoke-virtual {p1, v0}, Lcpt;->b(Ldan;)Ldan;

    move-result-object v0

    return-object v0
.end method
