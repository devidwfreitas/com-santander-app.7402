.class public final Lcgs;
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
        "Lcom/github/mikephil/charting/data/Entry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/github/mikephil/charting/data/Entry;
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lcom/github/mikephil/charting/data/Entry;

    invoke-direct {v0, p1}, Lcom/github/mikephil/charting/data/Entry;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/github/mikephil/charting/data/Entry;
    .locals 1

    .prologue
    .line 142
    new-array v0, p1, [Lcom/github/mikephil/charting/data/Entry;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcgs;->a(Landroid/os/Parcel;)Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcgs;->a(I)[Lcom/github/mikephil/charting/data/Entry;

    move-result-object v0

    return-object v0
.end method
