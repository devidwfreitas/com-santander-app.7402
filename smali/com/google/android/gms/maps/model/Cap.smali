.class public Lcom/google/android/gms/maps/model/Cap;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/maps/model/Cap;",
            ">;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:Ledm;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final d:Ljava/lang/Float;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/maps/model/Cap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/maps/model/Cap;->a:Ljava/lang/String;

    new-instance v0, Lefl;

    invoke-direct {v0}, Lefl;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/Cap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/maps/model/Cap;-><init>(ILedm;Ljava/lang/Float;)V

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;Ljava/lang/Float;)V
    .locals 1
    .param p2    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Float;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p2}, Lcom/google/android/gms/maps/model/Cap;->a(Landroid/os/IBinder;)Ledm;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gms/maps/model/Cap;-><init>(ILedm;Ljava/lang/Float;)V

    return-void
.end method

.method private constructor <init>(ILedm;Ljava/lang/Float;)V
    .locals 5
    .param p2    # Ledm;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Float;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    if-eqz p2, :cond_1

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3f

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Invalid Cap: type="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bitmapDescriptor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bitmapRefWidth="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcsp;->b(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/maps/model/Cap;->b:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/Cap;->c:Ledm;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/Cap;->d:Ljava/lang/Float;

    return-void

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method protected constructor <init>(Ledm;F)V
    .locals 2
    .param p1    # Ledm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/maps/model/Cap;-><init>(ILedm;Ljava/lang/Float;)V

    return-void
.end method

.method private static a(Landroid/os/IBinder;)Ledm;
    .locals 2
    .param p0    # Landroid/os/IBinder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcwy;->a(Landroid/os/IBinder;)Lcwx;

    move-result-object v1

    new-instance v0, Ledm;

    invoke-direct {v0, v1}, Ledm;-><init>(Lcwx;)V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/Cap;->b:I

    return v0
.end method

.method public b()Ljava/lang/Float;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/model/Cap;->d:Ljava/lang/Float;

    return-object v0
.end method

.method public c()Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/model/Cap;->c:Ledm;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/Cap;->c:Ledm;

    invoke-virtual {v0}, Ledm;->a()Lcwx;

    move-result-object v0

    invoke-interface {v0}, Lcwx;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public d()Lcom/google/android/gms/maps/model/Cap;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/maps/model/Cap;->b:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/google/android/gms/maps/model/Cap;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/maps/model/Cap;->b:I

    const/16 v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown Cap type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0

    :pswitch_0
    new-instance p0, Lcom/google/android/gms/maps/model/ButtCap;

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/ButtCap;-><init>()V

    goto :goto_0

    :pswitch_1
    new-instance p0, Lcom/google/android/gms/maps/model/SquareCap;

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/SquareCap;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance p0, Lcom/google/android/gms/maps/model/RoundCap;

    invoke-direct {p0}, Lcom/google/android/gms/maps/model/RoundCap;-><init>()V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/google/android/gms/maps/model/CustomCap;

    iget-object v1, p0, Lcom/google/android/gms/maps/model/Cap;->c:Ledm;

    iget-object v2, p0, Lcom/google/android/gms/maps/model/Cap;->d:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/maps/model/CustomCap;-><init>(Ledm;F)V

    move-object p0, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/maps/model/Cap;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/maps/model/Cap;

    iget v2, p0, Lcom/google/android/gms/maps/model/Cap;->b:I

    iget v3, p1, Lcom/google/android/gms/maps/model/Cap;->b:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/maps/model/Cap;->c:Ledm;

    iget-object v3, p1, Lcom/google/android/gms/maps/model/Cap;->c:Ledm;

    invoke-static {v2, v3}, Lcsg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/maps/model/Cap;->d:Ljava/lang/Float;

    iget-object v3, p1, Lcom/google/android/gms/maps/model/Cap;->d:Ljava/lang/Float;

    invoke-static {v2, v3}, Lcsg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/maps/model/Cap;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/maps/model/Cap;->c:Ledm;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/maps/model/Cap;->d:Ljava/lang/Float;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcsg;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/google/android/gms/maps/model/Cap;->b:I

    const/16 v1, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[Cap: type="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lefl;->a(Lcom/google/android/gms/maps/model/Cap;Landroid/os/Parcel;I)V

    return-void
.end method
