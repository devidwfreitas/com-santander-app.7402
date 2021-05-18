.class Lvs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lvp;


# direct methods
.method constructor <init>(Lvp;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lvs;->a:Lvp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lvs;->a:Lvp;

    invoke-virtual {v0}, Lvp;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->onBackPressed()V

    .line 90
    return-void
.end method
