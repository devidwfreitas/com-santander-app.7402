.class Labf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Labb;


# direct methods
.method constructor <init>(Labb;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Labf;->a:Labb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Labf;->a:Labb;

    invoke-static {v0}, Labb;->f(Labb;)Labo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labf;->a:Labb;

    invoke-static {v0}, Labb;->f(Labb;)Labo;

    move-result-object v0

    iget-object v1, p0, Labf;->a:Labb;

    invoke-interface {v0, v1}, Labo;->a(Labb;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
