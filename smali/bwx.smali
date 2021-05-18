.class final Lbwx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbxo;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/content/Intent;


# direct methods
.method constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 180
    iput p1, p0, Lbwx;->a:I

    iput p2, p0, Lbwx;->b:I

    iput-object p3, p0, Lbwx;->c:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbww;Lbhp;)V
    .locals 3

    .prologue
    .line 185
    if-nez p2, :cond_0

    .line 186
    iget v0, p0, Lbwx;->a:I

    iget v1, p0, Lbwx;->b:I

    iget-object v2, p0, Lbwx;->c:Landroid/content/Intent;

    invoke-static {p1, v0, v1, v2}, Lbww;->a(Lbww;IILandroid/content/Intent;)V

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-static {}, Lbww;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lbqq;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
