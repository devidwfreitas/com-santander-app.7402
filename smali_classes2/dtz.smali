.class public final Ldtz;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Lcom/google/android/gms/location/zzo;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldtz;->a:Ljava/util/ArrayList;

    iput-boolean v1, p0, Ldtz;->b:Z

    iput-boolean v1, p0, Ldtz;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ldtz;->d:Lcom/google/android/gms/location/zzo;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/location/LocationSettingsRequest;
    .locals 5

    new-instance v0, Lcom/google/android/gms/location/LocationSettingsRequest;

    iget-object v1, p0, Ldtz;->a:Ljava/util/ArrayList;

    iget-boolean v2, p0, Ldtz;->b:Z

    iget-boolean v3, p0, Ldtz;->c:Z

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/location/LocationSettingsRequest;-><init>(Ljava/util/List;ZZLcom/google/android/gms/location/zzo;)V

    return-object v0
.end method

.method public a(Lcom/google/android/gms/location/LocationRequest;)Ldtz;
    .locals 1

    iget-object v0, p0, Ldtz;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/util/Collection;)Ldtz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;)",
            "Ldtz;"
        }
    .end annotation

    iget-object v0, p0, Ldtz;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public a(Z)Ldtz;
    .locals 0

    iput-boolean p1, p0, Ldtz;->b:Z

    return-object p0
.end method

.method public b(Z)Ldtz;
    .locals 0

    iput-boolean p1, p0, Ldtz;->c:Z

    return-object p0
.end method
