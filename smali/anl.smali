.class public final Lanl;
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
        "Lbr/com/santander/uisdk/error/SantanderErrorItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lbr/com/santander/uisdk/error/SantanderErrorItem;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lbr/com/santander/uisdk/error/SantanderErrorItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lbr/com/santander/uisdk/error/SantanderErrorItem;-><init>(Landroid/os/Parcel;Lanl;)V

    return-object v0
.end method

.method public a(I)[Lbr/com/santander/uisdk/error/SantanderErrorItem;
    .locals 1

    .prologue
    .line 52
    new-array v0, p1, [Lbr/com/santander/uisdk/error/SantanderErrorItem;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lanl;->a(Landroid/os/Parcel;)Lbr/com/santander/uisdk/error/SantanderErrorItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lanl;->a(I)[Lbr/com/santander/uisdk/error/SantanderErrorItem;

    move-result-object v0

    return-object v0
.end method
