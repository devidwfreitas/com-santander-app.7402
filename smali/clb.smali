.class final Lclb;
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
        "Lcla;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcla;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    new-instance v0, Lcla;

    invoke-direct {v0, v1, v1}, Lcla;-><init>(FF)V

    .line 52
    invoke-virtual {v0, p1}, Lcla;->a(Landroid/os/Parcel;)V

    .line 53
    return-object v0
.end method

.method public a(I)[Lcla;
    .locals 1

    .prologue
    .line 60
    new-array v0, p1, [Lcla;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lclb;->a(Landroid/os/Parcel;)Lcla;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lclb;->a(I)[Lcla;

    move-result-object v0

    return-object v0
.end method
