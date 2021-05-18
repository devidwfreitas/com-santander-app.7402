.class Lug;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Luf;


# direct methods
.method constructor <init>(Luf;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lug;->a:Luf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lug;->a:Luf;

    iget-object v0, v0, Luf;->a:Lue;

    invoke-static {v0}, Lue;->d(Lue;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    new-instance v0, Llo;

    iget-object v1, p0, Lug;->a:Luf;

    iget-object v1, v1, Luf;->a:Lue;

    invoke-virtual {v1}, Lue;->e()Lack;

    move-result-object v1

    invoke-direct {v0, v1}, Llo;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {v0}, Llo;->a()V

    .line 114
    return-void
.end method
