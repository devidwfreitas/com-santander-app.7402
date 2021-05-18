.class public Lcom/github/mikephil/charting/data/Entry;
.super Lcgj;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/github/mikephil/charting/data/Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcgs;

    invoke-direct {v0}, Lcgs;-><init>()V

    sput-object v0, Lcom/github/mikephil/charting/data/Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcgj;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/Entry;->a:F

    .line 23
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p2}, Lcgj;-><init>(F)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/Entry;->a:F

    .line 33
    iput p1, p0, Lcom/github/mikephil/charting/data/Entry;->a:F

    .line 34
    return-void
.end method

.method public constructor <init>(FFLjava/lang/Object;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0, p2, p3}, Lcgj;-><init>(FLjava/lang/Object;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/Entry;->a:F

    .line 45
    iput p1, p0, Lcom/github/mikephil/charting/data/Entry;->a:F

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0}, Lcgj;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/data/Entry;->a:F

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/Entry;->a:F

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/Entry;->a(F)V

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 132
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/mikephil/charting/data/Entry;->a(Ljava/lang/Object;)V

    .line 134
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/github/mikephil/charting/data/Entry;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 86
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->j()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/Entry;->j()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 92
    iget v1, p1, Lcom/github/mikephil/charting/data/Entry;->a:F

    iget v2, p0, Lcom/github/mikephil/charting/data/Entry;->a:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lclg;->d:F

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v1

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lclg;->d:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public f(F)V
    .locals 0

    .prologue
    .line 63
    iput p1, p0, Lcom/github/mikephil/charting/data/Entry;->a:F

    .line 64
    return-void
.end method

.method public i()Lcom/github/mikephil/charting/data/Entry;
    .locals 4

    .prologue
    .line 72
    new-instance v0, Lcom/github/mikephil/charting/data/Entry;

    iget v1, p0, Lcom/github/mikephil/charting/data/Entry;->a:F

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v2

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/Entry;->j()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/github/mikephil/charting/data/Entry;-><init>(FFLjava/lang/Object;)V

    .line 73
    return-object v0
.end method

.method public k()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/github/mikephil/charting/data/Entry;->a:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry, x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/github/mikephil/charting/data/Entry;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/github/mikephil/charting/data/Entry;->a:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 115
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/Entry;->c()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 116
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/Entry;->j()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/Entry;->j()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    invoke-virtual {p0}, Lcom/github/mikephil/charting/data/Entry;->j()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 126
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v0, Landroid/os/ParcelFormatException;

    const-string v1, "Cannot parcel an Entry with non-parcelable data"

    invoke-direct {v0, v1}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
