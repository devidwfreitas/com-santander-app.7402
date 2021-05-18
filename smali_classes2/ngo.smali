.class public final Lngo;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lnfw;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lnfx;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lnfz;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lnga;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lngb;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lngc;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lngl;

.field private i:Ljava/lang/String;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lngm;
    .locals 14

    new-instance v1, Lngm;

    iget-wide v2, p0, Lngo;->a:J

    iget-object v4, p0, Lngo;->b:Ljava/util/Collection;

    iget-object v5, p0, Lngo;->c:Ljava/util/Collection;

    iget-object v6, p0, Lngo;->d:Ljava/util/Collection;

    iget-object v7, p0, Lngo;->e:Ljava/util/Collection;

    iget-object v8, p0, Lngo;->f:Ljava/util/Collection;

    iget-object v9, p0, Lngo;->g:Ljava/util/Collection;

    iget-object v10, p0, Lngo;->h:Lngl;

    iget-boolean v11, p0, Lngo;->j:Z

    iget-object v12, p0, Lngo;->i:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v13}, Lngm;-><init>(JLjava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lngl;ZLjava/lang/String;Lngn;)V

    return-object v1
.end method

.method public a(J)Lngo;
    .locals 1

    iput-wide p1, p0, Lngo;->a:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lngo;
    .locals 0

    iput-object p1, p0, Lngo;->i:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Collection;)Lngo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lnfw;",
            ">;)",
            "Lngo;"
        }
    .end annotation

    iput-object p1, p0, Lngo;->b:Ljava/util/Collection;

    return-object p0
.end method

.method public a(Lngl;)Lngo;
    .locals 0

    iput-object p1, p0, Lngo;->h:Lngl;

    return-object p0
.end method

.method public a(Z)Lngo;
    .locals 0

    iput-boolean p1, p0, Lngo;->j:Z

    return-object p0
.end method

.method public b(Ljava/util/Collection;)Lngo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lnfx;",
            ">;)",
            "Lngo;"
        }
    .end annotation

    iput-object p1, p0, Lngo;->c:Ljava/util/Collection;

    return-object p0
.end method

.method public c(Ljava/util/Collection;)Lngo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lnfz;",
            ">;)",
            "Lngo;"
        }
    .end annotation

    iput-object p1, p0, Lngo;->d:Ljava/util/Collection;

    return-object p0
.end method

.method public d(Ljava/util/Collection;)Lngo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lnga;",
            ">;)",
            "Lngo;"
        }
    .end annotation

    iput-object p1, p0, Lngo;->e:Ljava/util/Collection;

    return-object p0
.end method

.method public e(Ljava/util/Collection;)Lngo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lngb;",
            ">;)",
            "Lngo;"
        }
    .end annotation

    iput-object p1, p0, Lngo;->f:Ljava/util/Collection;

    return-object p0
.end method

.method public f(Ljava/util/Collection;)Lngo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lngc;",
            ">;)",
            "Lngo;"
        }
    .end annotation

    iput-object p1, p0, Lngo;->g:Ljava/util/Collection;

    return-object p0
.end method
