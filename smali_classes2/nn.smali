.class Lnn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lnl;


# direct methods
.method constructor <init>(Lnl;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lnn;->a:Lnl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lnn;->a:Lnl;

    invoke-virtual {v0}, Lnl;->e()Lack;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lnn;->a:Lnl;

    invoke-virtual {v0}, Lnl;->e()Lack;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lnn;->a:Lnl;

    invoke-virtual {v0}, Lnl;->a()V

    goto :goto_0
.end method
