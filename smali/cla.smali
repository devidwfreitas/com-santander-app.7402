.class public Lcla;
.super Lcld;
.source "SourceFile"


# static fields
.field public static final c:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcla;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lclc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lclc",
            "<",
            "Lcla;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:F

.field public b:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    const/16 v0, 0x20

    new-instance v1, Lcla;

    invoke-direct {v1, v2, v2}, Lcla;-><init>(FF)V

    invoke-static {v0, v1}, Lclc;->a(ILcld;)Lclc;

    move-result-object v0

    sput-object v0, Lcla;->d:Lclc;

    .line 20
    sget-object v0, Lcla;->d:Lclc;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lclc;->a(F)V

    .line 46
    new-instance v0, Lclb;

    invoke-direct {v0}, Lclb;-><init>()V

    sput-object v0, Lcla;->c:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcld;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcld;-><init>()V

    .line 27
    iput p1, p0, Lcla;->a:F

    .line 28
    iput p2, p0, Lcla;->b:F

    .line 29
    return-void
.end method

.method public static a(FF)Lcla;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcla;->d:Lclc;

    invoke-virtual {v0}, Lclc;->c()Lcld;

    move-result-object v0

    check-cast v0, Lcla;

    .line 33
    iput p0, v0, Lcla;->a:F

    .line 34
    iput p1, v0, Lcla;->b:F

    .line 35
    return-object v0
.end method

.method public static a(Lcla;)V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcla;->d:Lclc;

    invoke-virtual {v0, p0}, Lclc;->a(Lcld;)V

    .line 40
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcla;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcla;->d:Lclc;

    invoke-virtual {v0, p0}, Lclc;->a(Ljava/util/List;)V

    .line 44
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcla;->a:F

    return v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcla;->a:F

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcla;->b:F

    .line 74
    return-void
.end method

.method protected b()Lcld;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    new-instance v0, Lcla;

    invoke-direct {v0, v1, v1}, Lcla;-><init>(FF)V

    return-object v0
.end method

.method public c()F
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcla;->b:F

    return v0
.end method
