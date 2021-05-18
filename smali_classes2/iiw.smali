.class Liiw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Liiv;


# direct methods
.method constructor <init>(Liiv;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Liiw;->a:Liiv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Liiw;->a:Liiv;

    invoke-static {v0}, Liiv;->a(Liiv;)Lnau;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lnau;->a(IZ)V

    .line 61
    return-void
.end method
