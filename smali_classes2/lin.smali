.class Llin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lliq;

.field final synthetic b:Lktq;

.field final synthetic c:Llik;


# direct methods
.method constructor <init>(Llik;Lliq;Lktq;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Llin;->c:Llik;

    iput-object p2, p0, Llin;->a:Lliq;

    iput-object p3, p0, Llin;->b:Lktq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x190

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 135
    iget-object v0, p0, Llin;->a:Lliq;

    invoke-static {v0}, Lliq;->g(Lliq;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Llin;->a:Lliq;

    invoke-static {v0}, Lliq;->g(Lliq;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->c(Z)V

    .line 137
    iget-object v0, p0, Llin;->a:Lliq;

    invoke-static {v0}, Lliq;->h(Lliq;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    new-array v2, v4, [F

    const/4 v3, 0x0

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 139
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 140
    iget-object v0, p0, Llin;->b:Lktq;

    invoke-virtual {v0, v5}, Lktq;->a(Z)V

    .line 148
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Llin;->a:Lliq;

    invoke-static {v0}, Lliq;->g(Lliq;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->b(Z)V

    .line 143
    iget-object v0, p0, Llin;->a:Lliq;

    invoke-static {v0}, Lliq;->h(Lliq;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ROTATION_X:Landroid/util/Property;

    new-array v2, v4, [F

    const/high16 v3, 0x43340000    # 180.0f

    aput v3, v2, v5

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 145
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 146
    iget-object v0, p0, Llin;->b:Lktq;

    invoke-virtual {v0, v4}, Lktq;->a(Z)V

    goto :goto_0
.end method
