.class Lvw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lvv;


# direct methods
.method constructor <init>(Lvv;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lvw;->a:Lvv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lvw;->a:Lvv;

    invoke-virtual {v0}, Lvv;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->onBackPressed()V

    .line 48
    return-void
.end method
