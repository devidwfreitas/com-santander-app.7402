.class public Lgou;
.super Lgox;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/CheckCardView;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/CheckCardView;)V
    .locals 1

    .prologue
    .line 207
    iput-object p1, p0, Lgou;->a:Lcom/santander/app/components/view/CheckCardView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lgox;-><init>(Lcom/santander/app/components/view/CheckCardView;Lgos;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lgou;->a:Lcom/santander/app/components/view/CheckCardView;

    iget-object v1, p0, Lgou;->a:Lcom/santander/app/components/view/CheckCardView;

    invoke-static {v1}, Lcom/santander/app/components/view/CheckCardView;->h(Lcom/santander/app/components/view/CheckCardView;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lgov;

    invoke-direct {v2, p0}, Lgov;-><init>(Lgou;)V

    invoke-static {v0, v1, v2}, Lcom/santander/app/components/view/CheckCardView;->a(Lcom/santander/app/components/view/CheckCardView;Landroid/view/View;Lgox;)V

    .line 217
    return-void
.end method
