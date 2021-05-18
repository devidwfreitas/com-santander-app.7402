.class public Lcom/facebook/login/DeviceAuthDialog$RequestState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/DeviceAuthDialog$RequestState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 532
    new-instance v0, Lbrv;

    invoke-direct {v0}, Lbrv;-><init>()V

    sput-object v0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->a:Ljava/lang/String;

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b:Ljava/lang/String;

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->c:J

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->d:J

    .line 503
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 491
    iput-wide p1, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->c:J

    .line 492
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->a:Ljava/lang/String;

    .line 476
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 495
    iput-wide p1, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->d:J

    .line 496
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b:Ljava/lang/String;

    .line 484
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 487
    iget-wide v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->c:J

    return-wide v0
.end method

.method public d()Z
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    .line 510
    iget-wide v2, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->d:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_1

    .line 515
    :cond_0
    :goto_0
    return v0

    .line 514
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->d:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->c:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    .line 515
    cmp-long v1, v2, v8

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 527
    iget-wide v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 528
    iget-wide v0, p0, Lcom/facebook/login/DeviceAuthDialog$RequestState;->d:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 529
    return-void
.end method
