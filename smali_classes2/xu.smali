.class Lxu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lxs;


# direct methods
.method constructor <init>(Lxs;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lxu;->a:Lxs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lxu;->a:Lxs;

    iget-object v0, v0, Lxs;->a:Lxq;

    new-instance v1, Lte;

    iget-object v2, p0, Lxu;->a:Lxs;

    iget-object v2, v2, Lxs;->a:Lxq;

    invoke-static {v2}, Lxq;->a(Lxq;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lte;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lxq;->a(Lxq;Lte;)V

    .line 113
    return-void
.end method
