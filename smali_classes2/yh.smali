.class Lyh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lyf;


# direct methods
.method constructor <init>(Lyf;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lyh;->a:Lyf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 87
    iget-object v0, p0, Lyh;->a:Lyf;

    invoke-virtual {v0}, Lyf;->e()Lack;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lyh;->a:Lyf;

    invoke-virtual {v0}, Lyf;->e()Lack;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-static {v0, v1, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lyh;->a:Lyf;

    invoke-virtual {v0}, Lyf;->a()V

    goto :goto_0
.end method
