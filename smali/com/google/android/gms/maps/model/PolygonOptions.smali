.class public final Lcom/google/android/gms/maps/model/PolygonOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/maps/model/PolygonOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:F

.field private d:I

.field private e:I

.field private f:F

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lefu;

    invoke-direct {v0}, Lefu;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PolygonOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->c:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->d:I

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->f:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->g:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->h:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->i:Z

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->k:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;FIIFZZZILjava/util/List;)V
    .locals 2
    .param p11    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;",
            "Ljava/util/List;",
            "FIIFZZZI",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->c:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->d:I

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->f:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->g:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->h:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->i:Z

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->k:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->b:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->c:F

    iput p4, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->d:I

    iput p5, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->e:I

    iput p6, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->f:F

    iput-boolean p7, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->g:Z

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->h:Z

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->i:Z

    iput p10, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->j:I

    iput-object p11, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->k:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(F)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->c:F

    return-object p0
.end method

.method public a(I)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->d:I

    return-object p0
.end method

.method public a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/maps/model/PolygonOptions;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;)",
            "Lcom/google/android/gms/maps/model/PolygonOptions;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->k:Ljava/util/List;

    return-object p0
.end method

.method public a(Z)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->g:Z

    return-object p0
.end method

.method public varargs a([Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->a:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->b:Ljava/util/List;

    return-object v0
.end method

.method public b(F)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->f:F

    return-object p0
.end method

.method public b(I)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->j:I

    return-object p0
.end method

.method public b(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;)",
            "Lcom/google/android/gms/maps/model/PolygonOptions;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Z)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->h:Z

    return-object p0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->a:Ljava/util/List;

    return-object v0
.end method

.method public c(I)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->e:I

    return-object p0
.end method

.method public c(Z)Lcom/google/android/gms/maps/model/PolygonOptions;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->i:Z

    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->b:Ljava/util/List;

    return-object v0
.end method

.method public d()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->c:F

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->d:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->j:I

    return v0
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->k:Ljava/util/List;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->e:I

    return v0
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->f:F

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->g:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->h:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->i:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lefu;->a(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;I)V

    return-void
.end method
