.class public final Lbwt;
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
        "Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
    .locals 1

    .prologue
    .line 290
    new-instance v0, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    invoke-direct {v0, p1}, Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;
    .locals 1

    .prologue
    .line 295
    new-array v0, p1, [Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lbwt;->a(Landroid/os/Parcel;)Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0, p1}, Lbwt;->a(I)[Lcom/facebook/share/internal/DeviceShareDialogFragment$RequestState;

    move-result-object v0

    return-object v0
.end method
