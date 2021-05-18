.class Lhuc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lhud;

.field final synthetic b:Lhub;


# direct methods
.method constructor <init>(Lhub;Lhud;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lhuc;->b:Lhub;

    iput-object p2, p0, Lhuc;->a:Lhud;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lhuc;->a:Lhud;

    invoke-static {v0}, Lhud;->a(Lhud;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 56
    iget-object v0, p0, Lhuc;->b:Lhub;

    invoke-virtual {v0}, Lhub;->a()V

    .line 57
    iget-object v0, p0, Lhuc;->b:Lhub;

    invoke-static {v0}, Lhub;->a(Lhub;)I

    .line 58
    return-void
.end method
