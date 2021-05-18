.class Llum;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llur;

.field final synthetic b:Lluh;


# direct methods
.method constructor <init>(Lluh;Llur;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Llum;->b:Lluh;

    iput-object p2, p0, Llum;->a:Llur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x190

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 172
    iget-object v0, p0, Llum;->b:Lluh;

    invoke-static {v0}, Lluh;->d(Lluh;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Llum;->a:Llur;

    invoke-static {v0}, Llur;->d(Llur;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->c(Z)V

    .line 174
    iget-object v0, p0, Llum;->a:Llur;

    invoke-static {v0}, Llur;->o(Llur;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v2, v5, [F

    const/4 v3, 0x0

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 175
    iget-object v1, p0, Llum;->a:Llur;

    invoke-static {v1}, Llur;->p(Llur;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 176
    new-instance v1, Llun;

    invoke-direct {v1, p0}, Llun;-><init>(Llum;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 197
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 198
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 200
    iget-object v0, p0, Llum;->b:Lluh;

    invoke-static {v0, v4}, Lluh;->a(Lluh;Z)Z

    .line 230
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Llum;->a:Llur;

    invoke-static {v0}, Llur;->d(Llur;)Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/santander/app/seguros/ui/widgets/ExpandableLayoutV2;->b(Z)V

    .line 203
    iget-object v0, p0, Llum;->a:Llur;

    invoke-static {v0}, Llur;->o(Llur;)Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/view/View;->ROTATION:Landroid/util/Property;

    new-array v2, v5, [F

    const/high16 v3, 0x43340000    # 180.0f

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 204
    iget-object v1, p0, Llum;->a:Llur;

    invoke-static {v1}, Llur;->p(Llur;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 205
    new-instance v1, Lluo;

    invoke-direct {v1, p0}, Lluo;-><init>(Llum;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 226
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 227
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 228
    iget-object v0, p0, Llum;->b:Lluh;

    invoke-static {v0, v5}, Lluh;->a(Lluh;Z)Z

    goto :goto_0
.end method
