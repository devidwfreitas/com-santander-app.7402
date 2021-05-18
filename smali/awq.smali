.class public final Lawq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/airbnb/lottie/LottieAnimationView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    .locals 2

    .prologue
    .line 644
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/airbnb/lottie/LottieAnimationView$SavedState;-><init>(Landroid/os/Parcel;Lawn;)V

    return-object v0
.end method

.method public a(I)[Lcom/airbnb/lottie/LottieAnimationView$SavedState;
    .locals 1

    .prologue
    .line 649
    new-array v0, p1, [Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 641
    invoke-virtual {p0, p1}, Lawq;->a(Landroid/os/Parcel;)Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 641
    invoke-virtual {p0, p1}, Lawq;->a(I)[Lcom/airbnb/lottie/LottieAnimationView$SavedState;

    move-result-object v0

    return-object v0
.end method
