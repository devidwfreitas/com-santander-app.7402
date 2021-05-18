.class public Lgot;
.super Lgox;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/santander/app/components/view/CheckCardView;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/CheckCardView;)V
    .locals 1

    .prologue
    .line 193
    iput-object p1, p0, Lgot;->a:Lcom/santander/app/components/view/CheckCardView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lgox;-><init>(Lcom/santander/app/components/view/CheckCardView;Lgos;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lgot;->a:Lcom/santander/app/components/view/CheckCardView;

    invoke-static {v0}, Lcom/santander/app/components/view/CheckCardView;->f(Lcom/santander/app/components/view/CheckCardView;)V

    .line 197
    iget-object v0, p0, Lgot;->a:Lcom/santander/app/components/view/CheckCardView;

    invoke-static {v0}, Lcom/santander/app/components/view/CheckCardView;->g(Lcom/santander/app/components/view/CheckCardView;)V

    .line 198
    iget-object v0, p0, Lgot;->a:Lcom/santander/app/components/view/CheckCardView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/components/view/CheckCardView;->a(Lcom/santander/app/components/view/CheckCardView;Z)Z

    .line 199
    return-void
.end method
