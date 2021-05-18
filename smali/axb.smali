.class Laxb;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field final c:Landroid/graphics/ColorFilter;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput-object p1, p0, Laxb;->a:Ljava/lang/String;

    .line 724
    iput-object p2, p0, Laxb;->b:Ljava/lang/String;

    .line 725
    iput-object p3, p0, Laxb;->c:Landroid/graphics/ColorFilter;

    .line 726
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 741
    if-ne p0, p1, :cond_1

    .line 751
    :cond_0
    :goto_0
    return v0

    .line 745
    :cond_1
    instance-of v2, p1, Laxb;

    if-nez v2, :cond_2

    move v0, v1

    .line 746
    goto :goto_0

    .line 749
    :cond_2
    check-cast p1, Laxb;

    .line 751
    invoke-virtual {p0}, Laxb;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Laxb;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Laxb;->c:Landroid/graphics/ColorFilter;

    iget-object v3, p1, Laxb;->c:Landroid/graphics/ColorFilter;

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 729
    const/16 v0, 0x11

    .line 730
    iget-object v1, p0, Laxb;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 731
    iget-object v0, p0, Laxb;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit16 v0, v0, 0x20f

    .line 734
    :cond_0
    iget-object v1, p0, Laxb;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 735
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Laxb;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/2addr v0, v1

    .line 737
    :cond_1
    return v0
.end method
