.class Lkha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lkgx;


# direct methods
.method constructor <init>(Lkgx;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lkha;->a:Lkgx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 91
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 92
    iget-object v0, p0, Lkha;->a:Lkgx;

    iget-object v1, p0, Lkha;->a:Lkgx;

    iget-object v1, v1, Lkgx;->b:Lkgm;

    invoke-virtual {v0, v1}, Lkgx;->a(Lkgm;)V

    .line 94
    :cond_0
    return-void
.end method
