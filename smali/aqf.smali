.class Laqf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Laqe;


# direct methods
.method constructor <init>(Laqe;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Laqf;->a:Laqe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Laqf;->a:Laqe;

    invoke-static {v0}, Laqe;->a(Laqe;)Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Laqf;->a:Laqe;

    invoke-static {v0}, Laqe;->a(Laqe;)Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    const-string v1, "camera"

    invoke-interface {v0, v1}, Lapa;->a(Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object v0, p0, Laqf;->a:Laqe;

    invoke-static {v0}, Laqe;->b(Laqe;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 95
    new-instance v0, Laqo;

    invoke-direct {v0}, Laqo;-><init>()V

    iget-object v1, p0, Laqf;->a:Laqe;

    invoke-static {v1}, Laqe;->c(Laqe;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Laqf;->a:Laqe;

    invoke-virtual {v2}, Laqe;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laqo;->a(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 96
    return-void
.end method
