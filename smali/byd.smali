.class public final Lbyd;
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
        "Lcom/facebook/share/internal/LikeContent;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/share/internal/LikeContent;
    .locals 1

    .prologue
    .line 81
    new-instance v0, Lcom/facebook/share/internal/LikeContent;

    invoke-direct {v0, p1}, Lcom/facebook/share/internal/LikeContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/share/internal/LikeContent;
    .locals 1

    .prologue
    .line 85
    new-array v0, p1, [Lcom/facebook/share/internal/LikeContent;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lbyd;->a(Landroid/os/Parcel;)Lcom/facebook/share/internal/LikeContent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lbyd;->a(I)[Lcom/facebook/share/internal/LikeContent;

    move-result-object v0

    return-object v0
.end method
