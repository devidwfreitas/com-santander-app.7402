.class Loj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Loi;


# direct methods
.method constructor <init>(Loi;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Loj;->a:Loi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Loj;->a:Loi;

    invoke-virtual {v0}, Loi;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->onBackPressed()V

    .line 74
    return-void
.end method
