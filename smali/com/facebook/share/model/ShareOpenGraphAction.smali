.class public final Lcom/facebook/share/model/ShareOpenGraphAction;
.super Lcom/facebook/share/model/ShareOpenGraphValueContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareOpenGraphValueContainer",
        "<",
        "Lcom/facebook/share/model/ShareOpenGraphAction;",
        "Lcaw;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/ShareOpenGraphAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcav;

    invoke-direct {v0}, Lcav;-><init>()V

    sput-object v0, Lcom/facebook/share/model/ShareOpenGraphAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;-><init>(Landroid/os/Parcel;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Lcaw;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;-><init>(Lcbb;)V

    .line 39
    return-void
.end method

.method public synthetic constructor <init>(Lcaw;Lcav;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphAction;-><init>(Lcaw;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    const-string v0, "og:type"

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareOpenGraphAction;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
