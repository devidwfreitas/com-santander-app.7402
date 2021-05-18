.class public Lcom/google/android/gms/internal/zzacs$zza;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/internal/safeparcel/zza;"
    }
.end annotation


# static fields
.field public static final CREATOR:Ldga;


# instance fields
.field protected final a:I

.field protected final b:Z

.field protected final c:I

.field protected final d:Z

.field protected final e:Ljava/lang/String;

.field protected final f:I

.field protected final g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/zzacs;",
            ">;"
        }
    .end annotation
.end field

.field protected final h:Ljava/lang/String;

.field private final i:I

.field private j:Lcom/google/android/gms/internal/zzacw;

.field private k:Ldfz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldfz",
            "<TI;TO;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldga;

    invoke-direct {v0}, Ldga;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzacs$zza;->CREATOR:Ldga;

    return-void
.end method

.method public constructor <init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/internal/zzacn;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzacs$zza;->i:I

    iput p2, p0, Lcom/google/android/gms/internal/zzacs$zza;->a:I

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzacs$zza;->b:Z

    iput p4, p0, Lcom/google/android/gms/internal/zzacs$zza;->c:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzacs$zza;->d:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/zzacs$zza;->e:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/zzacs$zza;->f:I

    if-nez p8, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzacs$zza;->g:Ljava/lang/Class;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzacs$zza;->h:Ljava/lang/String;

    :goto_0
    if-nez p9, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzacs$zza;->k:Ldfz;

    :goto_1
    return-void

    :cond_0
    const-class v0, Lcom/google/android/gms/internal/zzacz;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->g:Ljava/lang/Class;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzacs$zza;->h:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p9}, Lcom/google/android/gms/internal/zzacn;->b()Ldfz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->k:Ldfz;

    goto :goto_1
.end method

.method protected constructor <init>(IZIZLjava/lang/String;ILjava/lang/Class;Ldfz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/zzacs;",
            ">;",
            "Ldfz",
            "<TI;TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->i:I

    iput p1, p0, Lcom/google/android/gms/internal/zzacs$zza;->a:I

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzacs$zza;->b:Z

    iput p3, p0, Lcom/google/android/gms/internal/zzacs$zza;->c:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzacs$zza;->d:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzacs$zza;->e:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/internal/zzacs$zza;->f:I

    iput-object p7, p0, Lcom/google/android/gms/internal/zzacs$zza;->g:Ljava/lang/Class;

    if-nez p7, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->h:Ljava/lang/String;

    :goto_0
    iput-object p8, p0, Lcom/google/android/gms/internal/zzacs$zza;->k:Ldfz;

    return-void

    :cond_0
    invoke-virtual {p7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacs$zza;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzacs$zza;

    move v2, v1

    move v3, v1

    move v4, v1

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzacs$zza;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Ldfz;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILdfz;Z)Lcom/google/android/gms/internal/zzacs$zza;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ldfz",
            "<**>;Z)",
            "Lcom/google/android/gms/internal/zzacs$zza;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzacs$zza;

    const/4 v1, 0x7

    const/4 v7, 0x0

    move v2, p3

    move v4, v3

    move-object v5, p0

    move v6, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzacs$zza;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Ldfz;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzacs$zza;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzacs;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<TT;TT;>;"
        }
    .end annotation

    const/16 v1, 0xb

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzacs$zza;

    const/4 v8, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzacs$zza;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Ldfz;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzacs$zza;)Ldfz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->k:Ldfz;

    return-object v0
.end method

.method public static b(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacs$zza;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzacs$zza;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzacs$zza;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Ldfz;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/internal/zzacs$zza;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzacs;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation

    const/16 v1, 0xb

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/gms/internal/zzacs$zza;

    const/4 v8, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzacs$zza;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Ldfz;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzacs$zza;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzacs$zza;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/zzacs$zza;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Ldfz;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->i:I

    return v0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)TI;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->k:Ldfz;

    invoke-interface {v0, p1}, Ldfz;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/gms/internal/zzacw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzacs$zza;->j:Lcom/google/android/gms/internal/zzacw;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->a:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->b:Z

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->c:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->d:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->f:I

    return v0
.end method

.method public h()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/internal/zzacs;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->g:Ljava/lang/Class;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->k:Ldfz;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Lcom/google/android/gms/internal/zzacn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->k:Ldfz;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->k:Ldfz;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzacn;->a(Ldfz;)Lcom/google/android/gms/internal/zzacn;

    move-result-object v0

    goto :goto_0
.end method

.method public l()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<**>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->h:Ljava/lang/String;

    invoke-static {v0}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->j:Lcom/google/android/gms/internal/zzacw;

    invoke-static {v0}, Lcsp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacs$zza;->j:Lcom/google/android/gms/internal/zzacw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacs$zza;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzacw;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcsg;->a(Ljava/lang/Object;)Lcsi;

    move-result-object v0

    const-string v1, "versionCode"

    iget v2, p0, Lcom/google/android/gms/internal/zzacs$zza;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcsi;->a(Ljava/lang/String;Ljava/lang/Object;)Lcsi;

    move-result-object v0

    const-string v1, "typeIn"

    iget v2, p0, Lcom/google/android/gms/internal/zzacs$zza;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcsi;->a(Ljava/lang/String;Ljava/lang/Object;)Lcsi;

    move-result-object v0

    const-string v1, "typeInArray"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzacs$zza;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcsi;->a(Ljava/lang/String;Ljava/lang/Object;)Lcsi;

    move-result-object v0

    const-string v1, "typeOut"

    iget v2, p0, Lcom/google/android/gms/internal/zzacs$zza;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcsi;->a(Ljava/lang/String;Ljava/lang/Object;)Lcsi;

    move-result-object v0

    const-string v1, "typeOutArray"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzacs$zza;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcsi;->a(Ljava/lang/String;Ljava/lang/Object;)Lcsi;

    move-result-object v0

    const-string v1, "outputFieldName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzacs$zza;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcsi;->a(Ljava/lang/String;Ljava/lang/Object;)Lcsi;

    move-result-object v0

    const-string v1, "safeParcelFieldId"

    iget v2, p0, Lcom/google/android/gms/internal/zzacs$zza;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcsi;->a(Ljava/lang/String;Ljava/lang/Object;)Lcsi;

    move-result-object v0

    const-string v1, "concreteTypeName"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzacs$zza;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcsi;->a(Ljava/lang/String;Ljava/lang/Object;)Lcsi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzacs$zza;->h()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "concreteType.class"

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcsi;->a(Ljava/lang/String;Ljava/lang/Object;)Lcsi;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzacs$zza;->k:Ldfz;

    if-eqz v1, :cond_1

    const-string v1, "converterName"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzacs$zza;->k:Ldfz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcsi;->a(Ljava/lang/String;Ljava/lang/Object;)Lcsi;

    :cond_1
    invoke-virtual {v0}, Lcsi;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ldga;->a(Lcom/google/android/gms/internal/zzacs$zza;Landroid/os/Parcel;I)V

    return-void
.end method
