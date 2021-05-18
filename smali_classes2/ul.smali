.class Lul;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lue;


# direct methods
.method constructor <init>(Lue;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lul;->a:Lue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lul;->a:Lue;

    invoke-virtual {v0}, Lue;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->finish()V

    .line 269
    return-void
.end method
