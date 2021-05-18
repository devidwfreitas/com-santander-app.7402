.class Laqg;
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
    .line 99
    iput-object p1, p0, Laqg;->a:Laqe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Laqg;->a:Laqe;

    invoke-static {v0}, Laqe;->a(Laqe;)Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Laqg;->a:Laqe;

    invoke-static {v0}, Laqe;->a(Laqe;)Lard;

    move-result-object v0

    invoke-virtual {v0}, Lard;->Q()Lapa;

    move-result-object v0

    const-string v1, "gallery"

    invoke-interface {v0, v1}, Lapa;->a(Ljava/lang/String;)V

    .line 105
    :cond_0
    iget-object v0, p0, Laqg;->a:Laqe;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laqe;->a(Laqe;Ljava/io/File;)Ljava/io/File;

    .line 106
    iget-object v0, p0, Laqg;->a:Laqe;

    invoke-static {v0}, Laqe;->b(Laqe;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 107
    new-instance v0, Laqq;

    invoke-direct {v0}, Laqq;-><init>()V

    iget-object v1, p0, Laqg;->a:Laqe;

    invoke-static {v1}, Laqe;->c(Laqe;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Laqq;->a(Landroid/app/Activity;)V

    .line 108
    return-void
.end method
