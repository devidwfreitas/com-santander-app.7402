.class Laoe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Laoa;


# direct methods
.method constructor <init>(Laoa;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Laoe;->a:Laoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Laoe;->a:Laoa;

    invoke-static {v0}, Laoa;->h(Laoa;)Laon;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoe;->a:Laoa;

    .line 417
    invoke-static {v0}, Laoa;->h(Laoa;)Laon;

    move-result-object v0

    iget-object v1, p0, Laoe;->a:Laoa;

    invoke-interface {v0, v1}, Laon;->a(Laoa;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 416
    :goto_0
    return v0

    .line 417
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
