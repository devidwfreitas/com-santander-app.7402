.class Lxt;
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
    .line 115
    iput-object p1, p0, Lxt;->a:Lxs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lxt;->a:Lxs;

    iget-object v0, v0, Lxs;->a:Lxq;

    invoke-virtual {v0}, Lxq;->e()Lack;

    move-result-object v0

    invoke-virtual {v0}, Lack;->finish()V

    .line 119
    return-void
.end method
