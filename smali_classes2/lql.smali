.class public Llql;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;


# direct methods
.method public constructor <init>(Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Llql;->b:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    iput-object p2, p0, Llql;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Llql;->b:Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;

    invoke-static {v0}, Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;->a(Lcom/santander/app/seguros/ui/sinister/activities/ContestationActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Llql;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method
