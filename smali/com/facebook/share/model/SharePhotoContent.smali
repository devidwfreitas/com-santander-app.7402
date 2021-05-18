.class public final Lcom/facebook/share/model/SharePhotoContent;
.super Lcom/facebook/share/model/ShareContent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent",
        "<",
        "Lcom/facebook/share/model/SharePhotoContent;",
        "Lcbf;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/SharePhotoContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcbe;

    invoke-direct {v0}, Lcbe;-><init>()V

    sput-object v0, Lcom/facebook/share/model/SharePhotoContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 47
    invoke-static {p1}, Lcbd;->c(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/SharePhotoContent;->a:Ljava/util/List;

    .line 48
    return-void
.end method

.method private constructor <init>(Lcbf;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Lcal;)V

    .line 41
    invoke-static {p1}, Lcbf;->a(Lcbf;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/SharePhotoContent;->a:Ljava/util/List;

    .line 42
    return-void
.end method

.method public synthetic constructor <init>(Lcbf;Lcbe;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/share/model/SharePhotoContent;-><init>(Lcbf;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/share/model/SharePhotoContent;->a:Ljava/util/List;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 65
    iget-object v0, p0, Lcom/facebook/share/model/SharePhotoContent;->a:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lcbd;->b(Landroid/os/Parcel;ILjava/util/List;)V

    .line 66
    return-void
.end method
