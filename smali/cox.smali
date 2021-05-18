.class public final Lcox;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcoy;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcpd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpd",
            "<*TO;>;"
        }
    .end annotation
.end field

.field private final b:Lcpk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpk",
            "<*TO;>;"
        }
    .end annotation
.end field

.field private final c:Lcpi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpi",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Lcpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpl",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcpd;Lcpi;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcph;",
            ">(",
            "Ljava/lang/String;",
            "Lcpd",
            "<TC;TO;>;",
            "Lcpi",
            "<TC;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Cannot construct an Api with a null ClientBuilder"

    invoke-static {p2, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Cannot construct an Api with a null ClientKey"

    invoke-static {p3, v0}, Lcsp;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcox;->e:Ljava/lang/String;

    iput-object p2, p0, Lcox;->a:Lcpd;

    iput-object v1, p0, Lcox;->b:Lcpk;

    iput-object p3, p0, Lcox;->c:Lcpi;

    iput-object v1, p0, Lcox;->d:Lcpl;

    return-void
.end method


# virtual methods
.method public a()Lcpg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcpg",
            "<*TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcox;->a:Lcpd;

    return-object v0
.end method

.method public b()Lcpd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcpd",
            "<*TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcox;->a:Lcpd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v0, v1}, Lcsp;->a(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcox;->a:Lcpd;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Lcpf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcpf",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcox;->c:Lcpi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcox;->c:Lcpi;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This API was constructed with null client keys. This should not be possible."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcox;->e:Ljava/lang/String;

    return-object v0
.end method
