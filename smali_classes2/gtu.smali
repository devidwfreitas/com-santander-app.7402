.class public Lgtu;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lgtv;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljlq;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljme;

.field private d:F

.field private e:Landroid/location/Location;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljlq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 37
    iput-object p1, p0, Lgtu;->a:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lgtu;->b:Ljava/util/List;

    .line 39
    check-cast p1, Ljme;

    iput-object p1, p0, Lgtu;->c:Ljme;

    .line 41
    return-void
.end method

.method private a(I)F
    .locals 4

    .prologue
    .line 99
    new-instance v1, Landroid/location/Location;

    const-string v0, "agencia"

    invoke-direct {v1, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lgtu;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljlq;

    invoke-virtual {v0}, Ljlq;->l()Ljll;

    move-result-object v0

    invoke-virtual {v0}, Ljll;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 102
    iget-object v0, p0, Lgtu;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljlq;

    invoke-virtual {v0}, Ljlq;->l()Ljll;

    move-result-object v0

    invoke-virtual {v0}, Ljll;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 104
    iget-object v0, p0, Lgtu;->e:Landroid/location/Location;

    invoke-virtual {v0, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lgtv;
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040390

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    new-instance v1, Lgtv;

    invoke-direct {v1, v0}, Lgtv;-><init>(Landroid/view/View;)V

    .line 49
    return-object v1
.end method

.method public a(Landroid/location/Location;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lgtu;->e:Landroid/location/Location;

    .line 110
    return-void
.end method

.method public a(Lgtv;I)V
    .locals 8

    .prologue
    const/high16 v7, 0x447a0000    # 1000.0f

    .line 55
    invoke-direct {p0, p2}, Lgtu;->a(I)F

    move-result v0

    iput v0, p0, Lgtu;->d:F

    .line 57
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    iget-object v0, p0, Lgtu;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljlq;

    invoke-virtual {v0}, Ljlq;->l()Ljll;

    move-result-object v0

    invoke-virtual {v0}, Ljll;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v0, p0, Lgtu;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljlq;

    invoke-virtual {v0}, Ljlq;->l()Ljll;

    move-result-object v0

    invoke-virtual {v0}, Ljll;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 59
    invoke-static {p1}, Lgtv;->a(Lgtv;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lgtu;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljlq;

    invoke-virtual {v0}, Ljlq;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lgtu;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljlq;

    invoke-virtual {v0}, Ljlq;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lgtu;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljlq;

    invoke-virtual {v0}, Ljlq;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {p1}, Lgtv;->b(Lgtv;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    invoke-static {p1}, Lgtv;->c(Lgtv;)Landroid/widget/TextView;

    move-result-object v2

    iget v0, p0, Lgtu;->d:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lgtu;->d:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " km"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-static {p1}, Lgtv;->d(Lgtv;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lgtu;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljlq;

    invoke-virtual {v0}, Ljlq;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {p1}, Lgtv;->d(Lgtv;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lgtu;->c:Ljme;

    iget-object v0, p0, Lgtu;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljlq;

    invoke-virtual {v0}, Ljlq;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljme;->a(Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    invoke-static {p1}, Lgtv;->e(Lgtv;)Landroid/widget/Button;

    move-result-object v0

    iget-object v2, p0, Lgtu;->c:Ljme;

    invoke-interface {v2, v1}, Ljme;->a(Lcom/google/android/gms/maps/model/LatLng;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lgtu;->d:F

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " m"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljlq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    iput-object p1, p0, Lgtu;->b:Ljava/util/List;

    .line 94
    invoke-virtual {p0}, Lgtu;->notifyDataSetChanged()V

    .line 95
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lgtu;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lgtv;

    invoke-virtual {p0, p1, p2}, Lgtu;->a(Lgtv;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lgtu;->a(Landroid/view/ViewGroup;I)Lgtv;

    move-result-object v0

    return-object v0
.end method
