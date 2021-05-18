.class public Lgow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lgox;

.field final synthetic b:Lcom/santander/app/components/view/CheckCardView;


# direct methods
.method public constructor <init>(Lcom/santander/app/components/view/CheckCardView;Lgox;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lgow;->b:Lcom/santander/app/components/view/CheckCardView;

    iput-object p2, p0, Lgow;->a:Lgox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lgow;->a:Lgox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgox;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 243
    return-void
.end method
