.class public final Lamf;
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
        "Lbr/com/santander/uisdk/comprovante/SantanderComprovante;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lbr/com/santander/uisdk/comprovante/SantanderComprovante;
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;

    invoke-direct {v0, p1}, Lbr/com/santander/uisdk/comprovante/SantanderComprovante;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lbr/com/santander/uisdk/comprovante/SantanderComprovante;
    .locals 1

    .prologue
    .line 126
    new-array v0, p1, [Lbr/com/santander/uisdk/comprovante/SantanderComprovante;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lamf;->a(Landroid/os/Parcel;)Lbr/com/santander/uisdk/comprovante/SantanderComprovante;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lamf;->a(I)[Lbr/com/santander/uisdk/comprovante/SantanderComprovante;

    move-result-object v0

    return-object v0
.end method
