.class Lxk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lwx;


# direct methods
.method constructor <init>(Lwx;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lxk;->a:Lwx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lxk;->a:Lwx;

    iget-object v1, p0, Lxk;->a:Lwx;

    invoke-static {v1}, Lwx;->c(Lwx;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lwx;->a(Lwx;Landroid/widget/TextView;)V

    .line 369
    return-void
.end method
