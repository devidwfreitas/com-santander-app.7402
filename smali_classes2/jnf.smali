.class public final Ljnf;
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
        "Lcom/santander/app/lojaonline/domain/LojaTerm;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/santander/app/lojaonline/domain/LojaTerm;
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/santander/app/lojaonline/domain/LojaTerm;

    invoke-direct {v0, p1}, Lcom/santander/app/lojaonline/domain/LojaTerm;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/santander/app/lojaonline/domain/LojaTerm;
    .locals 1

    .prologue
    .line 90
    new-array v0, p1, [Lcom/santander/app/lojaonline/domain/LojaTerm;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Ljnf;->a(Landroid/os/Parcel;)Lcom/santander/app/lojaonline/domain/LojaTerm;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Ljnf;->a(I)[Lcom/santander/app/lojaonline/domain/LojaTerm;

    move-result-object v0

    return-object v0
.end method
