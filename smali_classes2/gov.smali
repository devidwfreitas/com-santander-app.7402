.class Lgov;
.super Lgox;
.source "SourceFile"


# instance fields
.field final synthetic a:Lgou;


# direct methods
.method constructor <init>(Lgou;)V
    .locals 2

    .prologue
    .line 210
    iput-object p1, p0, Lgov;->a:Lgou;

    iget-object v0, p1, Lgou;->a:Lcom/santander/app/components/view/CheckCardView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lgox;-><init>(Lcom/santander/app/components/view/CheckCardView;Lgos;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lgov;->a:Lgou;

    iget-object v0, v0, Lgou;->a:Lcom/santander/app/components/view/CheckCardView;

    invoke-static {v0}, Lcom/santander/app/components/view/CheckCardView;->i(Lcom/santander/app/components/view/CheckCardView;)V

    .line 214
    iget-object v0, p0, Lgov;->a:Lgou;

    iget-object v0, v0, Lgou;->a:Lcom/santander/app/components/view/CheckCardView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/santander/app/components/view/CheckCardView;->a(Lcom/santander/app/components/view/CheckCardView;Z)Z

    .line 215
    return-void
.end method
